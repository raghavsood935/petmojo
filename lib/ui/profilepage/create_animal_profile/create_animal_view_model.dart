import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/models/animal_type_model.dart';
import 'package:kubelite/models/breed_animal_model.dart';
import 'package:kubelite/shared/base_viewmodel.dart';
import 'package:kubelite/util/String.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:geolocator/geolocator.dart';

class CreateAnimalViewModel extends BaseModel {
  final ImagePicker _picker = ImagePicker();

  Position? _currentPosition = null;

  final log = getLogger('ProfileCreateViewModel');
  final _snackBarService = locator<SnackbarService>();

  final List<String> animalTypeValues = ["Pet", "Stray", "Wild", "Farm"];
  final List<String> ageTypeValues = ["Baby", "Adult", "Young"];
  List<String> animalBreedSelectedList = [];
  final List<BreedTypeModel> aniamlBreedTypeValues = [
    BreedTypeModel(),
    BreedTypeModel(),
    BreedTypeModel(),
    BreedTypeModel(),
    BreedTypeModel(),
    BreedTypeModel(),
    BreedTypeModel(),
    BreedTypeModel(),
    BreedTypeModel(),
    BreedTypeModel(),
  ];

  final List<AnimalTypeModel> aniamlTypeListValues = [
    AnimalTypeModel(),
    AnimalTypeModel(),
    AnimalTypeModel(),
    AnimalTypeModel(),
    AnimalTypeModel(),
    AnimalTypeModel(),
    AnimalTypeModel(),
    AnimalTypeModel(),
    AnimalTypeModel(),
    AnimalTypeModel(),
    AnimalTypeModel(),
  ];

  final List<AnimalGenderModel> animalGenderList = [
    AnimalGenderModel(
      "Male",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF3620nhlKrn_G8PNWR9PzVYy_UesDVdNtzg&usqp=CAU",
    ),
    AnimalGenderModel(
      "Female",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF3620nhlKrn_G8PNWR9PzVYy_UesDVdNtzg&usqp=CAU",
    ),
  ];

  String selectedValue = "";

  bool matingValue = false;
  bool adoptionValue = false;
  bool resigteredWithKCValue = true;
  bool playBuddiesValue = false;
  String ageType = "Baby";
  String selectedAnimalType = "";
  String selectedAnimalGender = "";

  dynamic _pickImageError;
  XFile? _imageFile;

  String get imagePath => _imageFile?.path ?? "";

  void onImageButtonPressed(ImageSource source, BuildContext? context) async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    try {
      final pickedFile = await _picker.pickImage(
        source: source,
        maxWidth: 500,
        maxHeight: 500,
        imageQuality: 70,
      );

      if (pickedFile != null) {
        _imageFile = pickedFile;
        // await uploadImage();
      }
      log.d("ImagePath: $imagePath");
      notifyListeners();
    } catch (e) {
      _pickImageError = e;
      _snackBarService.showSnackbar(message: "Image Error $e");
    }
  }

  onChangeRadio(String? value) {
    selectedValue = value!;
    notifyListeners();
  }

  onChangeMating(bool value) {
    matingValue = value;
    notifyListeners();
  }

  onChangeAdoption(bool value) {
    adoptionValue = value;
    notifyListeners();
  }

  onChangeResigteredKC(bool value) {
    resigteredWithKCValue = value;
    notifyListeners();
  }

  onChangePlayBuddies(bool value) {
    playBuddiesValue = value;
    notifyListeners();
  }

  onChangeAge(String? value) {
    ageType = value!;
    notifyListeners();
  }

  Future<void> createAnimalProfile() async {
    if (selectedValue.isNotEmpty && selectedValue == "Stray") {
      getCurrentLocation();
    } else {}
  }

  void onSave(BuildContext context, TextEditingController tc, int type) {
    /*
      1. for animal type,
      2. for gender,
      3. for animal breed.
     */

    log.d("Saving the data!!!");

    switch (type) {
      case 1:
        {
          if (selectedAnimalType != "") {
            tc.text = selectedAnimalType;
            Navigator.pop(context);
          } else {
            _snackBarService.showSnackbar(message: noBreedSelected);
          }

          break;
        }
      case 2:
        {
          if (selectedAnimalGender != "") {
            tc.text = selectedAnimalGender;
            Navigator.pop(context);
          } else {
            _snackBarService.showSnackbar(message: noBreedSelected);
          }
          break;
        }
      case 3:
        {
          animalBreedSelectedList.clear();
          String breedDisplayString = "";
          for (BreedTypeModel model in aniamlBreedTypeValues) {
            if (model.isChecked) {
              animalBreedSelectedList.add(model.breedName);
              log.d(model.breedName);
              breedDisplayString =
                  "${breedDisplayString} ${model.breedName} , ";
            }
          }
          if (animalBreedSelectedList != null &&
              animalBreedSelectedList.length > 0) {
            tc.text =
                "${breedDisplayString.substring(0, breedDisplayString.length - 2)} . ";
            Navigator.pop(context);
          } else {
            _snackBarService.showSnackbar(message: noBreedSelected);
          }

          break;
        }
    }
  }

  selectBreedDDMFunction(BuildContext context, TextEditingController tc) async {
    animalBreedSelectedList.clear();
    String breedDisplayString = "";
    for (BreedTypeModel model in aniamlBreedTypeValues) {
      if (model.isChecked) {
        animalBreedSelectedList.add(model.breedName);
        log.d(model.breedName);
        breedDisplayString = "${breedDisplayString} ${model.breedName} , ";
      }
    }
    if (animalBreedSelectedList != null && animalBreedSelectedList.length > 0) {
      tc.text =
          "${breedDisplayString.substring(0, breedDisplayString.length - 2)} . ";
      Navigator.pop(context);
    } else {
      _snackBarService.showSnackbar(message: noBreedSelected);
    }
  }

  selectGenderDDMFunction(
      BuildContext context, TextEditingController tc) async {
    if (tc.text != "" && tc.text != null) {
      Navigator.pop(context);
    } else {
      _snackBarService.showSnackbar(message: noGenderSelected);
    }
  }

  selectAnimalTypeDDMFunction(
      BuildContext context, TextEditingController tc) async {
    if (tc.text != "" && tc.text != null) {
      Navigator.pop(context);
    } else {
      _snackBarService.showSnackbar(message: noAnimalTypeSelected);
    }
  }

  Future<void> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      _snackBarService.showSnackbar(message: locationPermissionDisabled);
      return Future.error(locationPermissionDisabled);
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        _snackBarService.showSnackbar(message: locationPermissionDenied);
        return Future.error(locationPermissionDenied);
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      _snackBarService.showSnackbar(
          message: locationPermissionDeniedPermanently);
      return Future.error(locationPermissionDeniedPermanently);
    }

    _currentPosition = await Geolocator.getCurrentPosition();

    log.d(
        "Latitude : ${_currentPosition!.latitude} , Longitude : ${_currentPosition!.longitude}");
  }
}

class AnimalGenderModel {
  String _gender;
  String _url;

  AnimalGenderModel(this._gender, this._url);

  get gender => this._gender;

  get url => this._url;
}
