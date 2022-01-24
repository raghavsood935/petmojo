import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/GuardiansProfile.dart';
import 'package:tamely/models/get_animals_by_location_response.dart';
import 'package:tamely/models/params/get_animal_by_location_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/list_constant.dart';
import 'package:tamely/util/location_helper.dart';

class PlayBuddiesViewModel extends BaseModel {
  final _sharedPrefernceService = locator<SharedPreferencesService>();

  bool? _isLocationAvailable;
  Timer? _timer;

  LatLng?
      searchLocation; // = const LatLng(26.20670319767123, 78.14587012631904);

  String _location = "";

  bool _isDefaultLocation = true;

  String _listFilterValue = animalFilters.first;

  List<GetAnimalsByLocationDetailsResponse> _listOfAnimals = [];
  List<GuardiansProfile> _listOfGuarduians = [];

  List<GetAnimalsByLocationDetailsResponse> get listOfAnimals => _listOfAnimals;

  Future onFilterChange(String? value) async {
    _listFilterValue = value ?? "";
    notifyListeners();
    onSearchChange(_searchTC.text, false);
  }

  Future init() async {
    CurrentProfile profile = _sharedPrefernceService.getCurrentProfile();
    this.isHuman = profile.isHuman;
    this._id = profile.isHuman ? profile.userId : profile.petId;
    this.petToken = profile.petToken;
    notifyListeners();
    await requestLocation();
  }

  void dispose() {
    if (_timer != null && _timer!.isActive) _timer!.cancel();
  }

  String get location => _location;

  bool get isDefaultLocation => _isDefaultLocation;

  bool? get isLocationAvailable => _isLocationAvailable;

  String get listFilterValue => _listFilterValue;

  List<GuardiansProfile> get listOfGuarduians => _listOfGuarduians;

  final _tamelyApi = locator<TamelyApi>();
  final _navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();

  int _counter = 0;
  bool _isLoading = false;
  bool _isEndOfList = false;

  bool isHuman = true;
  String petToken = "";

  String _id = "";

  TextEditingController _searchTC = TextEditingController();

  TextEditingController get searchTC => _searchTC;

  bool get isLoading => _isLoading;

  bool get isEndOfList => _isEndOfList;

  Future<void> requestLocation() async {
    _isLocationAvailable = await LocationHelper.checkLocationPermission();
    if (_isLocationAvailable != null && _isLocationAvailable!)
      LocationHelper.getCurrentLocation().then((position) =>
          setLocation(LatLng(position.latitude, position.longitude)));
    else if (_timer == null) {
      notifyListeners();
      _timer = Timer.periodic(Duration(seconds: 3), (Timer t) async {
        print(t);
        _isLocationAvailable = await LocationHelper.checkPermissionInBg();
        if (_isLocationAvailable != null && _isLocationAvailable!) {
          t.cancel();
          LocationHelper.getCurrentLocation().then((position) =>
              setLocation(LatLng(position.latitude, position.longitude)));
        }
      });
    }
  }

  Future<void> setLocation(LatLng location) async {
    searchLocation = location;
    _location = await LocationHelper.getAddress(location);
    onSearchChange(_searchTC.text, true);
  }

  void clearSearchText() {
    _searchTC.clear();
  }

  Future goBack() async {
    _navigationService.back();
  }

  Future<void> onSearchChange(String value, bool isFromSeeMore) async {
    _isLoading = true;
    notifyListeners();
    if (!isFromSeeMore) {
      _counter = 0;
      _isEndOfList = false;
      _listOfAnimals.clear();
      notifyListeners();
    }

    var response = await _tamelyApi.getStrays(GetAnimalByLocationBody(
        searchLocation!.latitude,
        searchLocation!.longitude,
        _counter,
        (_listFilterValue == "All") ? "" : _listFilterValue,
        value));

    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      // _snackBarService.showSnackbar(message: error.getErrorMessage());
      _isLoading = false;
      notifyListeners();
    } else if (response.data != null) {
      if (!isFromSeeMore) {
        _listOfAnimals.clear();
        notifyListeners();
      }
      if ((response.data!.animals ?? []).length < 10) {
        _isEndOfList = true;
      }
      _listOfAnimals.addAll(response.data!.animals ?? []);
      _isLoading = false;
      if (isFromSeeMore) {
        _counter++;
      }
      notifyListeners();
    }
  }

  Future inspectAnimalProfile(
      BuildContext ct, String petId, String petToken) async {
    await _navigationService.navigateTo(
      Routes.animalProfileView,
      arguments: AnimalProfileViewArguments(
        isFromDashboard: false,
        isInspectView: true,
        id: petId,
        token: petToken,
        inspecterProfileId: _id,
        inspecterProfileType: GlobalMethods.getProfileType(isHuman),
      ),
    );
  }
}
