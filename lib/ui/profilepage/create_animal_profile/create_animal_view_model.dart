import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/animal_type_constant.dart';

class CreateAnimalViewModel extends FormViewModel {
  final ImagePicker _picker = ImagePicker();

  Position? _currentPosition = null;

  final log = getLogger('ProfileCreateViewModel');
  final _snackBarService = locator<SnackbarService>();
  final _navigationService = locator<NavigationService>();

  final List<String> animalTypeValues = ["Pet", "Stray", "Wild", "Farm"];
  final List<String> ageTypeValues = [select, "Baby", "Adult", "Young"];
  final List<String> manitoryFeilds = ["name", "username", "animalType"];
  List<String> animalBreedSelectedList = [];

  List<AnimalTypeModel> listOfAnimalTypes = [];
  List<BreedTypeModel> listOfAnimalBreed = [];

  final List<String> animalGenderList = [
    select,
    "Male",
    "Female",
  ];

  String selectedValue = "Pet";

  String selectedAnimalAgeChooseType = "DOB";

  bool matingValue = false;
  bool adoptionValue = false;
  bool resigteredWithKCValue = false;
  bool playBuddiesValue = false;
  bool isBreedAvailable = false;
  String ageType = select;
  String selectedAnimalType = "";
  String selectedAnimalGender = select;

  bool _isValid = false;

  List<BreedTypeModel> _dogBreedList = [];
  List<BreedTypeModel> _catBreedList = [];
  List<BreedTypeModel> _horseBreedList = [];
  List<BreedTypeModel> _birdsBreedList = [];
  List<BreedTypeModel> _rabbitBreedList = [];
  List<BreedTypeModel> _pigBreedList = [];
  List<BreedTypeModel> _fishBreedList = [];
  List<BreedTypeModel> _guineaPigBreedList = [];
  List<BreedTypeModel> _hamsterBreedList = [];
  List<BreedTypeModel> _insectsBreedList = [];

  dynamic _pickImageError;
  XFile? _imageFile;

  String get imagePath => _imageFile?.path ?? "";

  bool get isValid => _isValid;

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

  onBackPressed() {
    _navigationService.back();
  }

  Future<void> setAnimalTypeList() async {
    switch (selectedValue) {
      case "Pet":
        {
          listOfAnimalTypes.clear();
          listOfAnimalTypes.addAll(petAnimalTypeListValues);
          notifyListeners();
          break;
        }
      case "Stray":
        {
          listOfAnimalTypes.clear();
          listOfAnimalTypes.addAll(strayAnimalTypeListValues);
          notifyListeners();
          break;
        }

      case "Wild":
        {
          listOfAnimalTypes.clear();
          listOfAnimalTypes.addAll(wildAnimalTypeListValues);
          notifyListeners();
          break;
        }

      case "Farm":
        {
          listOfAnimalTypes.clear();
          listOfAnimalTypes.addAll(farmAnimalTypeListValues);
          notifyListeners();
          break;
        }

      default:
        {
          listOfAnimalTypes.clear();
          listOfAnimalTypes.addAll(petAnimalTypeListValues);
          notifyListeners();
          break;
        }
    }

    for (String breedName in dogBreedList) {
      _dogBreedList.add(BreedTypeModel(breedName));
    }
    for (String breedName in catBreedList) {
      _catBreedList.add(BreedTypeModel(breedName));
    }
    for (String breedName in birdsBreedList) {
      _birdsBreedList.add(BreedTypeModel(breedName));
    }
    for (String breedName in horseBreedList) {
      _horseBreedList.add(BreedTypeModel(breedName));
    }
    for (String breedName in rabbitBreedList) {
      _rabbitBreedList.add(BreedTypeModel(breedName));
    }
    for (String breedName in pigBreedList) {
      _pigBreedList.add(BreedTypeModel(breedName));
    }
    for (String breedName in fishBreedList) {
      _fishBreedList.add(BreedTypeModel(breedName));
    }
    for (String breedName in guineaPigBreedList) {
      _guineaPigBreedList.add(BreedTypeModel(breedName));
    }
    for (String breedName in hamsterBreedList) {
      _hamsterBreedList.add(BreedTypeModel(breedName));
    }
    for (String breedName in insectsBreedList) {
      _insectsBreedList.add(BreedTypeModel(breedName));
    }
  }

  void closeKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  onChangeRadio(String? value) {
    selectedValue = value!;
    setAnimalTypeList();
    notifyListeners();
  }

  onAnimalAgeTypeChangeRadio(String? value) {
    selectedAnimalAgeChooseType = value!;
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

  onChangeGender(String? value) {
    selectedAnimalGender = value!;
    notifyListeners();
  }

  Future<void> createAnimalProfile() async {
    if (selectedValue.isNotEmpty && selectedValue == "Stray") {
      getCurrentLocation();
    } else {}
  }

  Future<void> selectTime(
      BuildContext context, TextEditingController tc) async {
    TimeOfDay selectedTime = TimeOfDay.now();

    closeKeyboard(context);

    final TimeOfDay? picked_s = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!,
          );
        });

    if (picked_s != null && picked_s != selectedTime) {
      tc.text = picked_s.format(context);
    }
  }

  Future<void> selectDate(
      BuildContext context, TextEditingController tc) async {
    DateTime selectedDate = DateTime.now();

    closeKeyboard(context);

    final DateTime? picked_s = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: selectedDate,
    );
    if (picked_s != null && picked_s != selectedDate) {
      tc.text = "${picked_s.day}-${picked_s.month}-${picked_s.year}";
    }
  }

  selectBreedDDMFunction(BuildContext context, TextEditingController tc) async {
    animalBreedSelectedList.clear();
    String breedDisplayString = "";
    for (BreedTypeModel model in listOfAnimalBreed) {
      if (model.isChecked) {
        animalBreedSelectedList.add(model.breedName);
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

  selectAnimalTypeDDMFunction(
      BuildContext context, TextEditingController tc) async {
    if (tc.text != "" && tc.text != null) {
      Navigator.pop(context);
      closeKeyboard(context);
      checkBreedAvailable(tc.text.toLowerCase());
    } else {
      _snackBarService.showSnackbar(message: noAnimalTypeSelected);
    }
  }

  checkBreedAvailable(String value) {
    if (availableBreedList.contains(value)) {
      isBreedAvailable = true;
      setBreedList(value);
    } else {
      isBreedAvailable = false;
    }
    notifyListeners();
  }

  setBreedList(String value) {
    switch (value.toLowerCase()) {
      case "dog":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_dogBreedList);
          break;
        }

      case "cat":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_catBreedList);
          break;
        }

      case "horse":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_horseBreedList);
          break;
        }

      case "bird":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_birdsBreedList);
          break;
        }

      case "rabbit":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_rabbitBreedList);
          break;
        }

      case "pig":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_pigBreedList);
          break;
        }

      case "fish":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_fishBreedList);
          break;
        }

      case "guinea pig":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_guineaPigBreedList);
          break;
        }

      case "hamster":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_hamsterBreedList);
          break;
        }

      case "insect":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_insectsBreedList);
          break;
        }

      case "dogs":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_dogBreedList);
          break;
        }

      case "cats":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_catBreedList);
          break;
        }

      case "horses":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_horseBreedList);
          break;
        }

      case "birds":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_birdsBreedList);
          break;
        }

      case "rabbits":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_rabbitBreedList);
          break;
        }

      case "pigs":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_pigBreedList);
          break;
        }

      case "guinea pigs":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_guineaPigBreedList);
          break;
        }

      case "hamsters":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_hamsterBreedList);
          break;
        }

      case "insects":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(_insectsBreedList);
          break;
        }

      default:
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed = [];
          break;
        }
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

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
    _isValid = true;
    formValueMap.keys.forEach((element) {
      if (manitoryFeilds.contains(element)) {
        String elementValue = formValueMap[element];
        log.d("ElementValue $elementValue");
        if (elementValue.isEmpty) {
          _isValid = false;
          return;
        }
      }
    });

    notifyListeners();
  }
}

class AnimalTypeModel {
  String _type = "";
  String _imageAssetPath = "";

  AnimalTypeModel(this._type, this._imageAssetPath);

  String get type => this._type;

  String get imageAssetPath => _imageAssetPath;
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
