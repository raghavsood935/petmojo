import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/models/breed_animal_model.dart';
import 'package:kubelite/shared/base_viewmodel.dart';
import 'package:kubelite/util/Constant.dart';
import 'package:kubelite/util/ImageConstant.dart';
import 'package:kubelite/util/String.dart';
import 'package:stacked_services/stacked_services.dart';

class CreateAnimalViewModel extends BaseModel {
  final ImagePicker _picker = ImagePicker();

  Position? _currentPosition = null;

  final log = getLogger('ProfileCreateViewModel');
  final _snackBarService = locator<SnackbarService>();
  final _navigationService = locator<NavigationService>();

  final List<String> animalTypeValues = ["Pet", "Stray", "Wild", "Farm"];
  final List<String> ageTypeValues = ["Baby", "Adult", "Young"];
  List<String> animalBreedSelectedList = [];

  List<AnimalTypeModel> listOfAnimalTypes = [];
  List<BreedTypeModel> listOfAnimalBreed = [];

  final List<AnimalTypeModel> _petAnimalTypeListValues = [
    AnimalTypeModel(
      "Dog",
      dogImgPath,
    ),
    AnimalTypeModel(
      "Cat",
      catImgPath,
    ),
    AnimalTypeModel(
      "Horse",
      horseImgPath,
    ),
    AnimalTypeModel(
      "Birds",
      birdImgPath,
    ),
    AnimalTypeModel(
      "Rabbit",
      rabbitImgPath,
    ),
    AnimalTypeModel(
      "Pig",
      pigImgPath,
    ),
    AnimalTypeModel(
      "Fish",
      fishImgPath,
    ),
    AnimalTypeModel(
      "Guinea pigs",
      guineaPigImgPath,
    ),
    AnimalTypeModel(
      "Hamsters",
      hamstersImgPath,
    ),
  ];

  final List<AnimalTypeModel> _strayAnimalTypeListValues = [
    AnimalTypeModel(
      "Dog",
      dogImgPath,
    ),
    AnimalTypeModel(
      "Cat",
      catImgPath,
    ),
    AnimalTypeModel(
      "Horse",
      horseImgPath,
    ),
    AnimalTypeModel(
      "Goat",
      goatImgPath,
    ),
    AnimalTypeModel(
      "Rabbit",
      rabbitImgPath,
    ),
    AnimalTypeModel(
      "Pig",
      pigImgPath,
    ),
    AnimalTypeModel(
      "Camel",
      camelImgPath,
    ),
    AnimalTypeModel(
      "Guinea pigs",
      guineaPigImgPath,
    ),
    AnimalTypeModel(
      "Cow",
      cowImgPath,
    ),
    AnimalTypeModel(
      "Donkeys ",
      donkeyImgPath,
    ),
  ];

  final List<AnimalTypeModel> _wildAnimalTypeListValues = [
    AnimalTypeModel(
      "Elephant",
      elephantImgPath,
    ),
    AnimalTypeModel(
      "Monkey",
      monkeyImgPath,
    ),
    AnimalTypeModel(
      "Gorillas",
      gorillaImgPath,
    ),
    AnimalTypeModel(
      "Lion",
      lionImgPath,
    ),
    AnimalTypeModel(
      "Tiger ",
      tigerImgPath,
    ),
    AnimalTypeModel(
      "Deer",
      deerImgPath,
    ),
    AnimalTypeModel(
      "Polar bear",
      polarBearImgPath,
    ),
    AnimalTypeModel(
      "Cheetah",
      cheetahImgPath,
    ),
    AnimalTypeModel(
      "Panda",
      pandaImgPath,
    ),
  ];

  final List<AnimalTypeModel> _farmAnimalTypeListValues = [
    AnimalTypeModel(
      "Chicken",
      chickenImgPath,
    ),
    AnimalTypeModel(
      "Cattle",
      cowImgPath,
    ),
    AnimalTypeModel(
      "Sheep",
      sheepImgPath,
    ),
    AnimalTypeModel(
      "Ducks",
      duckImgPath,
    ),
    AnimalTypeModel(
      "Goats",
      goatImgPath,
    ),
    AnimalTypeModel(
      "Alpaca",
      alpacaImgPath,
    ),
    AnimalTypeModel(
      "Pigs",
      pigImgPath,
    ),
    AnimalTypeModel(
      "Horse",
      horseImgPath,
    ),
    AnimalTypeModel(
      "Rabbit",
      rabbitImgPath,
    ),
    AnimalTypeModel(
      "Llama",
      llamaImgPath,
    ),
    AnimalTypeModel(
      "Donkeys",
      donkeyImgPath,
    ),
  ];

  final List<String> animalGenderList = [
    "Male",
    "Female",
  ];

  String selectedValue = "Pet";

  bool matingValue = false;
  bool adoptionValue = false;
  bool resigteredWithKCValue = false;
  bool playBuddiesValue = false;
  bool isBreedAvailable = false;
  String ageType = "Baby";
  String selectedAnimalType = "";
  String selectedAnimalGender = "Male";

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

  onBackPressed() {
    _navigationService.back();
  }

  Future<void> setAnimalTypeList() async {
    switch (selectedValue) {
      case "Pet":
        {
          listOfAnimalTypes.clear();
          listOfAnimalTypes.addAll(_petAnimalTypeListValues);
          notifyListeners();
          break;
        }
      case "Stray":
        {
          listOfAnimalTypes.clear();
          listOfAnimalTypes.addAll(_strayAnimalTypeListValues);
          notifyListeners();
          break;
        }

      case "Wild":
        {
          listOfAnimalTypes.clear();
          listOfAnimalTypes.addAll(_wildAnimalTypeListValues);
          notifyListeners();
          break;
        }

      case "Farm":
        {
          listOfAnimalTypes.clear();
          listOfAnimalTypes.addAll(_farmAnimalTypeListValues);
          notifyListeners();
          break;
        }

      default:
        {
          listOfAnimalTypes.clear();
          listOfAnimalTypes.addAll(_petAnimalTypeListValues);
          notifyListeners();
          break;
        }
    }
  }

  onChangeRadio(String? value) {
    selectedValue = value!;
    setAnimalTypeList();
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
          listOfAnimalBreed.addAll(dogBreedList);
          break;
        }

      case "cat":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(catBreedList);
          break;
        }

      case "horse":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(horseBreedList);
          break;
        }

      case "bird":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(birdsBreedList);
          break;
        }

      case "rabbit":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(rabbitBreedList);
          break;
        }

      case "pig":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(pigBreedList);
          break;
        }

      case "fish":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(fishBreedList);
          break;
        }

      case "guinea pig":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(guineaPigBreedList);
          break;
        }

      case "hamster":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(hamsterBreedList);
          break;
        }

      case "insect":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(insectsBreedList);
          break;
        }

      case "dogs":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(dogBreedList);
          break;
        }

      case "cats":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(catBreedList);
          break;
        }

      case "horses":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(horseBreedList);
          break;
        }

      case "birds":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(birdsBreedList);
          break;
        }

      case "rabbits":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(rabbitBreedList);
          break;
        }

      case "pigs":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(pigBreedList);
          break;
        }

      case "guinea pigs":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(guineaPigBreedList);
          break;
        }

      case "hamsters":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(hamsterBreedList);
          break;
        }

      case "insects":
        {
          listOfAnimalBreed.clear();
          listOfAnimalBreed.addAll(insectsBreedList);
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
}

class AnimalTypeModel {
  String _type = "";
  String _imageAssetPath = "";

  AnimalTypeModel(this._type, this._imageAssetPath);

  String get type => this._type;

  String get imageAssetPath => _imageAssetPath;
}
