import 'dart:io';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/pet_basic_details_response.dart';
import 'package:tamely/models/user_details_model.dart';
import 'package:tamely/models/user_profile_details_response.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/global_methods.dart';

class NewPostViewModel extends FutureViewModel<void> implements Initialisable {
  final _sharedPrefService = locator<SharedPreferencesService>();
  final _navigationService = locator<NavigationService>();

  final _snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  bool isLoading = false;

  List<PostOnProfile> postOn = [];

  Future getUSerDetails() async {
    isLoading = true;
    notifyListeners();

    BaseResponse<UserProfileDetailsResponse> response =
        await _tamelyApi.getUserProfileDetail();
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      notifyListeners();
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      UserDetailsModelResponse userDetails = response.data!.userDetailsModel!;

      postOn.insert(
        0,
        PostOnProfile(
          id: userDetails.Id ?? "",
          profileimg: userDetails.avatar ?? emptyProfileImgUrl,
          name: "Me",
          isChecked: false,
          token: "",
          isHuman: true,
        ),
      );

      for (PetBasicDetailsResponse petResponse
          in response.data!.userDetailsModel!.listOfPets ?? []) {
        postOn.add(
          PostOnProfile(
            id: petResponse.detailsResponse!.Id ?? "",
            profileimg:
                petResponse.detailsResponse!.avatar ?? emptyProfileImgUrl,
            name: petResponse.detailsResponse!.name ?? "-",
            isChecked: false,
            token: petResponse.detailsResponse!.token ?? "",
            isHuman: false,
          ),
        );
      }

      isLoading = false;
      notifyListeners();
    }
  }

  Future post(String path, String caption) async {
    bool posting = false;

    for (PostOnProfile profile in postOn) {
      if (profile.isChecked) {
        posting = true;
        _tamelyApi.createPost(
            File(path),
            caption,
            GlobalMethods.getProfileType(profile.isHuman),
            profile.id,
            profile.isHuman,
            profile.token);
      }
    }

    if (posting) {
      CurrentProfile profile = _sharedPrefService.getCurrentProfile();

      _navigationService.pushNamedAndRemoveUntil(
        Routes.dashboard,
        arguments: DashboardArguments(
            initialPageState: 0,
            isNeedToUpdateProfile: false,
            isHuman: profile.isHuman,
            petID: profile.petId,
            petToken: profile.petToken,
            initialState: profile.currentIndex),
      );

      _snackBarService.showSnackbar(message: "Post is uploading...");
    } else {
      _snackBarService.showSnackbar(
          message: "Minimum one profile should be selected");
    }
  }

  @override
  Future initialise() {
    super.initialise();
    return Future.value(0);
  }

  @override
  Future<void> futureToRun() async {
    notifyListeners();
    return Future.value(0);
  }

  /// Called when an error occurs within the future being run
  @override
  void onError(error) {
    print('error=' + error.toString());
    this.setError(error);
    _snackBarService.showSnackbar(message: 'Please try later.');
  }

  /// Called after the data has been set
  @override
  void onData(void data) async {
    setBusy(true);
    setBusy(false);
    notifyListeners();
  }

  void onAddLocationPressed() async {
    final location =
        await _navigationService.navigateTo(Routes.newPostLocation);
  }
}

class PostOnProfile {
  String id;
  String token;
  bool isHuman;
  String profileimg;
  String name;
  bool isChecked;

  PostOnProfile(
      {required this.id,
      required this.profileimg,
      required this.name,
      required this.isChecked,
      required this.token,
      required this.isHuman});

  void onSelectedChange() {
    isChecked = !isChecked;
  }
}
