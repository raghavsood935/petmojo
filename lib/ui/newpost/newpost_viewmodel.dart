import 'dart:io';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/group_response/get_joined_groups_response.dart';
import 'package:tamely/models/params/create_post_body.dart';
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

  bool isHuman = true;
  String userId = "";
  String petId = "";
  String petToken = "";

  bool isLoading = false;
  bool isGroupLoading = false;

  List<PostOnProfile> postOn = [];
  List<PostOnProfile> postOnGroup = [];

  Future init() async {
    CurrentProfile profile = _sharedPrefService.getCurrentProfile();
    isHuman = profile.isHuman;
    petId = profile.petId;
    userId = profile.userId;
    petToken = profile.petToken;
    notifyListeners();

    getUSerDetails();
    getGroupDetail();
  }

  Future getUSerDetails() async {
    isLoading = true;
    notifyListeners();

    BaseResponse<UserProfileDetailsResponse> response =
        await _tamelyApi.getUserProfileDetail();
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      isLoading = false;
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
          isGroup: false,
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
            isGroup: false,
          ),
        );
      }

      isLoading = false;
      notifyListeners();
    }
  }

  Future getGroupDetail() async {
    isGroupLoading = true;
    notifyListeners();

    BaseResponse<GetJoinedGroupResponse> response =
        await _tamelyApi.getJoinedGroups(isHuman, petToken: petToken);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      isGroupLoading = false;
      notifyListeners();
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      for (GetJoinedGroupInfoResponse grpResponse
          in response.data!.listOfJoinedGroup ?? []) {
        postOnGroup.add(
          PostOnProfile(
            id: grpResponse.group!.Id ?? "",
            profileimg: grpResponse.group!.avatar ?? emptyProfileImgUrl,
            name: grpResponse.group!.name ?? "-",
            isChecked: false,
            isHuman: true,
            token: "",
            isGroup: true,
          ),
        );
      }

      isGroupLoading = false;
      notifyListeners();
    }
  }

  Future post(String path, String caption) async {
    List<String> imageLinks = [];

    imageLinks = await GlobalMethods.imageToTwoLinks(File(path));
    await uploadPost(imageLinks, caption);
  }

  Future uploadPost(List<String> links, String caption) async {
    bool posting = false;

    List<PostOnProfile> finalList = postOn + postOnGroup;

    for (PostOnProfile profile in finalList) {
      if (profile.isChecked) {
        posting = true;
        String userAuthor = profile.isGroup
            ? isHuman
                ? userId
                : ""
            : profile.isHuman
                ? profile.id
                : "";
        String animalAuthor = profile.isGroup
            ? isHuman
                ? ""
                : petId
            : profile.isHuman
                ? ""
                : profile.id;
        String groupAuthor = profile.isGroup ? profile.id : "";
        String authorType = profile.isGroup
            ? GlobalMethods.getProfileType(isHuman)
            : GlobalMethods.getProfileType(profile.isHuman);
        await _tamelyApi.createPost(
          CreatePostBody(
            caption,
            "",
            userAuthor,
            authorType,
            links[0],
            links[1],
            animalAuthor,
            groupAuthor,
          ),
          isHuman,
          petToken,
        );
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
  bool isGroup;
  String profileimg;
  String name;
  bool isChecked;

  PostOnProfile(
      {required this.id,
      required this.profileimg,
      required this.name,
      required this.isChecked,
      required this.token,
      required this.isHuman,
      required this.isGroup});

  void onSelectedChange() {
    isChecked = !isChecked;
  }
}
