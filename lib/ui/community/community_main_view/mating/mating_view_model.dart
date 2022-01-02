import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/models/GuardiansProfile.dart';
import 'package:tamely/models/get_animals_by_location_response.dart';
import 'package:tamely/models/params/get_animal_by_location_body.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/list_constant.dart';

class MatingViewModel extends BaseModel {
  LatLng searchLocation = const LatLng(26.20670319767123, 78.14587012631904);

  String _location = "";

  bool _isDefaultLocation = true;

  String _listFilterValue = animalFilters.first;

  List<GetAnimalsByLocationDetailsResponse> _listOfAnimals = [];
  List<GuardiansProfile> _listOfGuarduians = [];

  List<GetAnimalsByLocationDetailsResponse> get listOfAnimals => _listOfAnimals;

  Future onFilterChange(String? value) async {
    _listFilterValue = value ?? "";
    notifyListeners();
  }

  Future init() async {
    onSearchChange(true);
  }

  String get location => _location;

  bool get isDefaultLocation => _isDefaultLocation;

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

  void clearSearchText() {
    _searchTC.clear();
  }

  Future goBack() async {
    _navigationService.back();
  }

  Future<void> onSearchChange(bool isFromSeeMore) async {
    _isLoading = true;
    notifyListeners();
    if (!isFromSeeMore) {
      _counter = 0;
      _isEndOfList = false;
      _listOfAnimals.clear();
      notifyListeners();
    }

    var response = await _tamelyApi.getStrays(GetAnimalByLocationBody(
        searchLocation.latitude, searchLocation.longitude, _counter));

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
      if ((response.data!.animals ?? []).length < 20) {
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
}

class MatingAnimalProfile {
  String _name = "Bilbo Baggings";
  String _animalType = "Dog";
  String _animalBreed = "unknown breed";
  int _age = 2;
  String _shortBio = "Testing short bio";
  String _fromTime = "6:30AM";
  String _toTime = "8:30AM";
  String _gender = "Male";
  String _profileImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU";

  String get name => _name;

  String get animalType => _animalType;

  String get profileImgUrl => _profileImgUrl;

  String get animalBreed => _animalBreed;

  String get toTime => _toTime;

  String get fromTime => _fromTime;

  String get shortBio => _shortBio;

  String get gender => _gender;

  int get age => _age;
}
