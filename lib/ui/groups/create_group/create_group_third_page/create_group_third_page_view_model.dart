import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/list_of_profiles_foy_you.dart';
import 'package:tamely/models/params/groups/invite_people_group_body.dart';
import 'package:tamely/models/params/search_profile_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class CreateGroupThirdViewModel extends BaseModel {
  TextEditingController searchTC = TextEditingController();

  final _tamelyApi = locator<TamelyApi>();
  final _navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _sharedPrefService = locator<SharedPreferencesService>();

  bool isHuman = true;
  String petId = "";
  String petToken = "";

  int _counter = 0;
  bool _isLoading = false;
  bool _isEndOfList = false;

  String groupId = "";

  List<ProfileForYouResponse> listOfProfiles = [];

  Future init(String grpId) async {
    groupId = grpId;

    CurrentProfile profile = _sharedPrefService.getCurrentProfile();
    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;

    notifyListeners();
  }

  void clearSearchText() {
    searchTC.clear();
  }

  Future<void> onSearchChange(String value, bool isFromSeeMore) async {
    if (value.isNotEmpty) {
      _isLoading = true;
      notifyListeners();
      if (!isFromSeeMore) {
        _counter = 0;
        _isEndOfList = false;
        listOfProfiles.clear();
        notifyListeners();
      }

      SearchProfilesBody body = SearchProfilesBody(_counter, value, "Both");
      var response = await _tamelyApi.showListOfProfileForYou(body, true);

      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        // _snackBarService.showSnackbar(message: error.getErrorMessage());
        _isLoading = false;
        notifyListeners();
      } else if (response.data != null) {
        if (!isFromSeeMore) {
          listOfProfiles.clear();
          notifyListeners();
        }
        if ((response.data!.listOfProfiles ?? []).length < 20) {
          _isEndOfList = true;
        }
        listOfProfiles.addAll(response.data!.listOfProfiles ?? []);
        _isLoading = false;
        if (isFromSeeMore) {
          _counter++;
        }
        notifyListeners();
      }
    }
  }

  Future<void> sendInvite(String profileID, String type) async {
    var response = await _tamelyApi.invitePeople(
      InvitePeopleGroupBody(groupId, profileID, type),
      isHuman,
      animalToken: petToken,
    );

    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      if (response.data!.success ?? false) {
        _snackBarService.showSnackbar(message: response.data!.message ?? "");
      }
    }
  }

  Future goToNextPage(bool isFromEditView) async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    if (isFromEditView) {
      _navigationService.back();
    } else {
      _navigationService.replaceWith(Routes.groupInfoView,
          arguments: GroupInfoViewArguments(
            groupId: groupId,
          ));
    }
  }

  // Future inspectProfile(BuildContext ct, String profileID) async {
  //   await _navigationService.navigateTo(
  //     Routes.profileView,
  //     arguments: ProfileViewArguments(
  //         menuScreenContext: ct,
  //         onScreenHideButtonPressed: () {},
  //         isInspectView: true,
  //         inspecterProfileId: _id,
  //         inspectProfileId: profileID,
  //         inspecterProfileType: GlobalMethods.getProfileType(isHuman)),
  //   );
  // }

  bool get isEndOfList => _isEndOfList;

  bool get isLoading => _isLoading;

  int get counter => _counter;
}
