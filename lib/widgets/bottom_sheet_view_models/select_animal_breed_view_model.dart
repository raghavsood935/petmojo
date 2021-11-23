import 'package:flutter/cupertino.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class SelectAnimalBreedViewModel extends BaseModel {
  TextEditingController searchTC = TextEditingController();
  List<BreedTypeModel> _breedList = [];
  List<BreedTypeModel> _resultList = [];
  String selectedBreedString = "";

  List<BreedTypeModel> get resultList => _resultList;

  Future onSearch(String value) async {
    _resultList.clear();
    _resultList = _breedList.where((element) {
      final breedLower = element.breedName.toString().toLowerCase();
      final searchLower = value.toLowerCase();

      return breedLower.contains(searchLower);
    }).toList();
    notifyListeners();
  }

  Future init(dynamic list) async {
    for (String value in list) {
      _breedList.add(BreedTypeModel(value));
    }
    onSearch("");
  }

  Future onSaveBreed() async {
    String breedDisplayString = "";
    for (BreedTypeModel model in _breedList) {
      if (model.isChecked) {
        breedDisplayString = "${breedDisplayString} ${model.breedName},";
      }
    }
    selectedBreedString = breedDisplayString;
    notifyListeners();
  }
}

class BreedTypeModel {
  String _breedName = "Breed";
  bool _isChecked = false;

  BreedTypeModel(this._breedName);

  get breedName => this._breedName;
  get isChecked => this._isChecked;

  void setChecked(bool? value) {
    this._isChecked = value!;
  }
}
