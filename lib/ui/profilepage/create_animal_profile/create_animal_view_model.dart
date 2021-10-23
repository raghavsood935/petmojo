import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/models/breed_animal_model.dart';
import 'package:kubelite/shared/base_viewmodel.dart';
import 'package:stacked_services/stacked_services.dart';

class CreateAnimalViewModel extends BaseModel {
  final ImagePicker _picker = ImagePicker();

  final log = getLogger('ProfileCreateViewModel');
  final _snackBarService = locator<SnackbarService>();

  final List<String> animalTypeValues = ["Pet", "Stray", "Wild", "Farm"];
  final List<String> ageTypeValues = ["Baby", "Adult", "Young"];
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
  List<bool> animalBreedBoolList = [];
  String selectedValue = "";

  bool matingValue = false;
  bool adoptionValue = false;
  bool resigteredWithKCValue = true;
  bool playBuddiesValue = false;
  String ageType = "Baby";

  void iinitalList() {
    for (int i = 0; i < aniamlBreedTypeValues.length; i++) {
      animalBreedBoolList.add(true);
    }
  }

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

  onChangeresigteredKC(bool value) {
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
}
