import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/list_of_guardians.dart';
import 'package:tamely/models/list_of_profiles_foy_you.dart';
import 'package:tamely/models/params/get_guardians_body.dart';
import 'package:tamely/models/params/guardians_and_relations/send_guardian_request_body.dart';
import 'package:tamely/models/params/search_profile_body.dart';
import 'package:tamely/models/profile_account_model.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/global_methods.dart';

class GuardiansViewModel extends BaseModel {
  final _tamelyApi = locator<TamelyApi>();
  final _navigationService = locator<NavigationService>();
  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _snackBarService = locator<SnackbarService>();

  int _counter = 0;
  bool _isLoading = false;
  bool _isEndOfList = false;

  bool _isGuardianLoading = false;

  String _Id = "";
  String _token = "";

  TextEditingController _searchTC = TextEditingController();

  bool isSearchEmpty = true;

  List<GuardianResponse> _listOfGuardians = [];

  List<ResultGuardianProfileModel> _listOfResult = [];

  List<GuardianResponse> get listOfGuardians => _listOfGuardians;

  List<ResultGuardianProfileModel> get listOfResult => _listOfResult;

  TextEditingController get searchTC => _searchTC;

  int get counter => _counter;

  bool get isLoading => _isLoading;

  bool get isEndOfList => _isEndOfList;

  bool get isGuardianLoading => _isGuardianLoading;

  Future init(String petId, String petToken) async {
    _Id = petId;
    _token = petToken;
    notifyListeners();

    getListOfGuardians();
  }

  Future<void> onSearchChange(String value, bool isFromSeeMore) async {
    if (value.isNotEmpty) {
      _isLoading = true;
      notifyListeners();
      if (!isFromSeeMore) {
        _counter = 0;
        _isEndOfList = false;
        _listOfResult.clear();
        notifyListeners();
      }

      SearchProfilesBody body = SearchProfilesBody(_counter, value, "User");
      var response = await _tamelyApi.showListOfProfileForYou(body, true);

      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        // _snackBarService.showSnackbar(message: error.getErrorMessage());
        _isLoading = false;
        notifyListeners();
      } else if (response.data != null) {
        if (!isFromSeeMore) {
          _listOfResult.clear();
          notifyListeners();
        }
        if ((response.data!.listOfProfiles ?? []).length < 20) {
          _isEndOfList = true;
        }
        for (ProfileForYouResponse response
            in response.data!.listOfProfiles ?? []) {
          _listOfResult.add(ResultGuardianProfileModel(response));
        }

        _isLoading = false;
        if (isFromSeeMore) {
          _counter++;
        }
        notifyListeners();
      }
    }
  }

  Future getListOfGuardians() async {
    _isGuardianLoading = true;
    notifyListeners();
    var response = await _tamelyApi.getGuardians(GetGuardianBody(_Id), _token);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
      _isGuardianLoading = false;
      notifyListeners();
    } else if (response.data != null) {
      _listOfGuardians.clear();
      _listOfGuardians.addAll(response.data!.listOfGuardians ?? []);
      _isGuardianLoading = false;
      notifyListeners();
    }
  }

  Future sendGuardianRequest(String userId) async {
    var response = await _tamelyApi.sendGuardianRequest(
        SendGuardianRequestBody(userId, _Id), _token);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      _snackBarService.showSnackbar(message: response.data!.message ?? "");
    }
  }

  Future inspectProfile(BuildContext ct, String profileID) async {
    await _navigationService.navigateTo(
      Routes.profileView,
      arguments: ProfileViewArguments(
          menuScreenContext: ct,
          onScreenHideButtonPressed: () {},
          isInspectView: true,
          inspecterProfileId: _Id,
          inspectProfileId: profileID,
          inspecterProfileType: _token),
    );
  }

  Future searchCancel() async {
    _searchTC.clear();
    isSearchEmpty = false;
    notifyListeners();
    onSearchChange("", false);
  }
}

class ResultGuardianProfileModel {
  ProfileForYouResponse profileForYouResponse;

  bool _isRequested = false;

  ResultGuardianProfileModel(this.profileForYouResponse);

  bool get isRequested => _isRequested;

  void onRequestedChange() {
    _isRequested = !_isRequested;
  }
}
