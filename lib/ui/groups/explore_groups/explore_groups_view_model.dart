import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/list_of_profiles_foy_you.dart';
import 'package:tamely/models/params/groups/group_basic_body.dart';
import 'package:tamely/models/params/search_profile_body.dart';
import 'package:tamely/models/user_profile_details_response.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/ui/for_you/for_you_search/search_tabs/account_search_tab_view.dart';
import 'package:tamely/ui/for_you/for_you_search/search_tabs/all_search_tab_view.dart';
import 'package:tamely/ui/for_you/for_you_search/search_tabs/hashtags_search_tab_view.dart';
import 'package:tamely/util/global_methods.dart';

class ExploreGroupViewModel extends BaseModel {
  final _tamelyApi = locator<TamelyApi>();
  final _navigationService = locator<NavigationService>();
  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _snackBarService = locator<SnackbarService>();

  int _counter = 0;
  bool _isLoading = false;
  bool _isEndOfList = false;

  bool isHuman = true;
  String petToken = "";

  String _id = "";

  TextEditingController _searchTC = TextEditingController();

  List<ProfileForYouResponse> listOfProfiles = [];

  TextEditingController get searchTC => _searchTC;

  bool get isLoading => _isLoading;

  bool get isEndOfList => _isEndOfList;

  void clearSearchText() {
    _searchTC.clear();
  }

  Future goBack() async {
    _navigationService.back();
  }

  Future init() async {
    CurrentProfile profile = _sharedPreferenceService.getCurrentProfile();

    isHuman = profile.isHuman;
    _id = profile.petId;
    petToken = profile.petToken;
    notifyListeners();

    if (isHuman) {
      BaseResponse<UserProfileDetailsResponse> response =
          await _tamelyApi.getUserProfileDetail();
      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      } else if (response.data != null) {
        _id = response.data!.userDetailsModel!.Id ?? "";
        notifyListeners();
      }
    }
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

      SearchProfilesBody body = SearchProfilesBody(_counter, value, "Group");
      var response = await _tamelyApi.showListOfProfileForYou(body, isHuman,
          petToken: petToken);

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

  Future joinGroup(String groupId) async {
    var result = await _tamelyApi.joinGroup(GroupBasicBody(groupId), isHuman,
        petToken: petToken);

    if (result.getException != null) {
      ServerError error = result.getException as ServerError;
      if (error.getErrorMessage() == "Received invalid status code: 400") {
        _snackBarService.showSnackbar(message: "You are already a member!");
      } else {
        _snackBarService.showSnackbar(message: error.getErrorMessage());
      }
    } else if (result.data != null) {
      _snackBarService.showSnackbar(message: result.data!.message ?? "");
    }
  }

  Future inspectGroup(String grpId) async {
    _navigationService.navigateTo(
      Routes.groupInfoView,
      arguments: GroupInfoViewArguments(groupId: grpId),
    );
  }

  createGroup() {
    _navigationService.navigateTo(Routes.createGroupFirstView);
  }

  back() {
    _navigationService.back();
  }
}
