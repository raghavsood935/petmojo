import 'package:flutter/material.dart';
import 'package:tamely/models/GuardiansProfile.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/list_constant.dart';

class StraysNearYouViewModel extends BaseModel {
  String _location =
      "adgfa asgasd aasd fasd  fasdfasd rfgh  nrtnrt  nrtjer nertn      jhrth ";

  TextEditingController _searchTC = TextEditingController();

  bool _isDefaultLocation = true;

  String _listFilterValue = animalFilters.first;

  List<StrayAnimalProfile> _listOfStaryAnimals = [];
  List<GuardiansProfile> _listOfGuarduians = [];

  Future onSearchChange(String value) async {}

  Future onFilterChange(String? value) async {
    _listFilterValue = value ?? "";
    notifyListeners();
  }

  Future init() async {
    for (int i = 0; i < 5; i++) {
      _listOfStaryAnimals.add(StrayAnimalProfile());
      _listOfGuarduians.add(GuardiansProfile());
    }
  }

  String get location => _location;

  bool get isDefaultLocation => _isDefaultLocation;

  TextEditingController get searchTC => _searchTC;

  String get listFilterValue => _listFilterValue;

  List<StrayAnimalProfile> get listOfStaryAnimals => _listOfStaryAnimals;

  List<GuardiansProfile> get listOfGuarduians => _listOfGuarduians;
}

class StrayAnimalProfile {
  String _name = "Bilbo Baggings";
  String _animalType = "Dog";
  String _animalBreed = "unknown breed";
  String _location = "T-129 Emeralof testing address";
  String _guardians = "Sambit Malik";
  String _profileImgUrl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJCNf4o2GO1wvZ-M-KBWbOvsZbALu4e192KQ&usqp=CAU";

  String get name => _name;

  String get animalType => _animalType;

  String get profileImgUrl => _profileImgUrl;

  String get animalBreed => _animalBreed;

  String get location => _location;

  String get guardians => _guardians;
}
