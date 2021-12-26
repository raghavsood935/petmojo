import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/list_of_profiles_foy_you.dart';
import 'package:tamely/models/list_of_relations.dart';
import 'package:tamely/models/params/get_guardians_body.dart';
import 'package:tamely/models/params/guardians_and_relations/send_relation_request_body.dart';
import 'package:tamely/models/params/search_profile_body.dart';
import 'package:tamely/models/profile_account_model.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class RelatedAnimalsViewModel extends BaseModel {
  final _tamelyApi = locator<TamelyApi>();
  final _navigationService = locator<NavigationService>();
  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _snackBarService = locator<SnackbarService>();

  int _counter = 0;
  bool _isLoading = false;
  bool _isEndOfList = false;

  String _Id = "";
  String _token = "";

  TextEditingController _searchTC = TextEditingController();

  bool isSearchEmpty = true;

  List<ProfileForYouResponse> _listOfResult = [];

  List<RelationsResponse> _listOfRelations = [];

  TextEditingController get searchTC => _searchTC;

  List<ProfileForYouResponse> get listOfResult => _listOfResult;

  List<RelationsResponse> get listOfRelations => _listOfRelations;

  bool get isLoading => _isLoading;

  bool get isEndOfList => _isEndOfList;

  Future init(String petId, String petToken) async {
    _Id = petId;
    _token = petToken;
    notifyListeners();

    getRelatedAnimals();
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

      SearchProfilesBody body = SearchProfilesBody(_counter, value, "Animal");
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
          if (response.Id != _Id) {
            _listOfResult.add(response);
          }
        }

        _isLoading = false;
        if (isFromSeeMore) {
          _counter++;
        }
        notifyListeners();
      }
    }
  }

  Future searchCancel() async {
    _searchTC.clear();
    isSearchEmpty = false;
    notifyListeners();
    onSearchChange("", false);
  }

  Future getRelatedAnimals() async {
    var response = await _tamelyApi.getRelations(GetGuardianBody(_Id), _token);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      _listOfRelations.clear();
      _listOfRelations.addAll(response.data!.listOfRelations ?? []);
      notifyListeners();
    }
  }

  Future sendRelationRequest(String relatedAnimalId, String relation) async {
    var response = await _tamelyApi.sendRelationsRequest(
        SendRelationRequestBody(relatedAnimalId, _Id, relation), _token);
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
}
