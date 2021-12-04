import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/animal_profile_detail_model.dart';
import 'package:tamely/models/application_models.dart';
import 'package:tamely/models/my_animal_model.dart';
import 'package:tamely/models/params/animal_details_body.dart';
import 'package:tamely/util/utils.dart';

class AnimalProfileViewModel extends FutureViewModel {
  final log = getLogger('AnimalProfileView');
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _dialogService = locator<DialogService>();
  final _snackBarService = locator<SnackbarService>();

  MyAnimalModelResponse? myAnimalModelResponse;

  String _Id = "";

  String _profilename = "";
  String _username = "";
  String _animalBreed = "";
  String _avatar = "";
  String _shortBio = "";
  int _completedProfileStepCount = 0;
  int _completedProfileTotalCount = 2;
  int _noOfPosts = 0;
  int _noOfFollowers = 0;
  int _noOfFollowing = 0;
  int _noOfHearts = 0;

  bool _isUpForAdoption = true;
  bool _isUpForMating = true;
  bool _isUpForPlayBuddies = true;

  String get profilename => _profilename;

  String get username => _username;

  String get avatar => _avatar;

  String get shortBio => _shortBio;

  int get completedProfileStepCount => _completedProfileStepCount;

  int get noOfHearts => _noOfHearts;

  int get noOfFollowing => _noOfFollowing;

  int get noOfFollowers => _noOfFollowers;

  int get noOfPosts => _noOfPosts;

  String get animalBreed => _animalBreed;

  bool get isUpForAdoption => _isUpForAdoption;

  int get completedProfileTotalCount => _completedProfileTotalCount;

  bool get isUpForMating => _isUpForMating;

  bool get isUpForPlayBuddies => _isUpForPlayBuddies;

  void goToAnimalBasicInfo() async {
    var result = await _navigationService.navigateTo(Routes.animalBasicInfo,
        arguments: AnimalBasicInfoArguments(
            animalModelResponse: myAnimalModelResponse!));

    if (result == 1) {
      getAnimalDetails();
    }
  }

  void goToAddGuardiansAndRelations() async {
    await _navigationService.navigateTo(
      Routes.guardiansAndRelatedAnimalsView,
    );
  }

  void goToAnimalEdit() async {
    var result = await _navigationService.navigateTo(Routes.profileCreateView,
        arguments: ProfileCreateViewArguments(
            user: LocalUser(
              username: _profilename,
              fullName: _username,
              bio: _shortBio,
            ),
            isEdit: true,
            isAnimal: true,
            lastAvatarUrl: _avatar,
            petID: _Id));

    if (result == 1) {
      getAnimalDetails();
    }
  }

  void goBack() async {
    _navigationService.back();
  }

  void init(String Id) {
    _Id = Id;
    notifyListeners();
    getAnimalDetails();
  }

  Future getAnimalDetails() async {
    if (await Util.checkInternetConnectivity()) {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
        _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
        var response = await runBusyFuture(
            _tamelyApi.getAnimalProfileDetail(AnimalProfileDetailsBody(_Id)));

        if (response.getException != null) {
          ServerError error = response.getException as ServerError;
          _dialogService.completeDialog(DialogResponse(confirmed: true));
          _snackBarService.showSnackbar(message: error.getErrorMessage());
        } else if (response.data != null) {
          _dialogService.completeDialog(DialogResponse(confirmed: true));
          setValues(response.data!);
        }
      });
    } else {}
  }

  Future setValues(AnimalProfileDetailModelResponse response) async {
    myAnimalModelResponse = response.animalprofileModel;

    _profilename = response.animalprofileModel!.username ?? "";
    _username = response.animalprofileModel!.name ?? "";
    _shortBio = response.animalprofileModel!.bio ?? "";
    _avatar = response.animalprofileModel!.avatar ?? "";
    _animalBreed = response.animalprofileModel!.breed ?? "";

    _isUpForAdoption = response.animalprofileModel!.adoption ?? false;
    _isUpForMating = response.animalprofileModel!.mating ?? false;
    _isUpForPlayBuddies = response.animalprofileModel!.playBuddies ?? false;

    notifyListeners();
  }

  @override
  Future futureToRun() {
    // TODO: implement futureToRun
    throw UnimplementedError();
  }
}
