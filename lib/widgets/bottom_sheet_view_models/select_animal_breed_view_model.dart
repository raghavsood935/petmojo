import 'package:flutter/cupertino.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class SelectAnimalBreedViewModel extends BaseModel {
  TextEditingController searchTC = TextEditingController();
  List<String> breedList = [];
  List<String> resultList = [];
  String selectedBreedString = "";

  Future onSearch(String value) async {
    resultList.clear();
    resultList = breedList.where((element) {
      final breedLower = element.toLowerCase();
      final searchLower = value.toLowerCase();

      return breedLower.contains(searchLower);
    }).toList();
    notifyListeners();
  }

  Future init(dynamic list) async {
    breedList.addAll(list);
    onSearch("");
  }

  // Future onSaveBreed() async {
  //   String breedDisplayString = "";
  //   for (BreedTypeModel model in breedList) {
  //     if (model.isChecked) {
  //       breedDisplayString = "${breedDisplayString} ${model.breedName},";
  //     }
  //   }
  //   selectedBreedString = breedDisplayString;
  //   notifyListeners();
  // }
}

// class BreedTypeModel {
//   String _breedName = "Breed";
//   bool _isChecked = false;
//
//   BreedTypeModel(this._breedName);
//
//   get breedName => this._breedName;
//   get isChecked => this._isChecked;
//
//   void setChecked(bool? value) {
//     this._isChecked = value!;
//   }
// }
