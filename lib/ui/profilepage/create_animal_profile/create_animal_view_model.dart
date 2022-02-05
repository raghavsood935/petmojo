import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/base_response.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/common_response.dart';
import 'package:tamely/models/my_animal_model.dart';
import 'package:tamely/models/params/animal_details_body.dart';
import 'package:tamely/models/params/create_animal_profile_body.dart';
import 'package:tamely/models/params/edit_animal_profile_body.dart';
import 'package:tamely/models/params/location_body.dart';
import 'package:tamely/models/user_response_models.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/animal_type_constant.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/location_helper.dart';
import 'package:tamely/util/utils.dart';

class CreateAnimalViewModel extends FormViewModel {
  final log = getLogger('ProfileCreateViewModel');
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _dialogService = locator<DialogService>();
  final _snackBarService = locator<SnackbarService>();

  ScrollController scrollController = ScrollController();

  final ImagePicker _picker = ImagePicker();

  Position? _currentPosition = null;

  final List<String> animalTypeValues = ["Pet", "Stray", "Wild", "Farm"];
  final List<String> ageTypeValues = [select, "Baby", "Adult", "Young"];
  final List<String> manitoryFeilds = ["name", "username", "animalType"];
  List<String> animalBreedSelectedList = [];

  List<AnimalTypeModel> listOfAnimalTypes = [];
  List<String> listOfAnimalBreed = [];

  final List<String> animalGenderList = [
    select,
    "Male",
    "Female",
  ];

  String selectedValue = "Pet";

  String petToken = "";

  String selectedAnimalAgeChooseType = "DOB";

  String selectedDateValue = "Select date";

  bool matingValue = false;
  bool adoptionValue = false;
  bool resigteredWithKCValue = false;
  bool playBuddiesValue = false;
  bool servicePetValue = false;
  bool spayedPetValue = false;
  bool vaccinatedValue = false;
  bool isBreedAvailable = false;
  String ageType = select;
  String dob = "";
  String selectedAnimalType = "";
  String selectedAnimalGender = select;

  bool _isValid = false;

  bool isLocationPicked = false;

  dynamic _pickImageError;
  XFile? _imageFile;
  String avatarUrl = "";

  String get imagePath => _imageFile?.path ?? "";

  bool get isValid => _isValid;

  Timer? _debounce;
  String _username = "";
  bool _isValidUsername = false;

  bool get isValidUsername => _isValidUsername;

  LatLng currentLocation = const LatLng(28.445364671660784, 77.05960247665644);
  String _address = "Gurugram, Haryana";

  String get address => _address;

  String validUser(TextEditingController usernameController) {
    if (_isValidUsername) {
      return "";
    } else {
      return "Username is not available";
    }
  }

  void onImageButtonPressed(ImageSource source, BuildContext? context) async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    try {
      final pickedFile = await _picker.pickImage(
        source: source,
        // maxWidth: 500,
        // maxHeight: 500,
        // imageQuality: 100,
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

  Future init(
    String petId,
    String petToken,
    bool isEdit,
    TextEditingController name,
    TextEditingController username,
    TextEditingController bio,
    TextEditingController animalType,
    TextEditingController breed,
    TextEditingController dobTc,
    TextEditingController fromTime,
    TextEditingController toTime,
  ) async {
    this.petToken = petToken;
    notifyListeners();
    if (isEdit) {
      if (await Util.checkInternetConnectivity()) {
        WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
          // _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);
          var response = await runBusyFuture(_tamelyApi.getAnimalProfileDetail(
              AnimalProfileDetailsBody(petId),
              animalToken: petToken));

          if (response.getException != null) {
            ServerError error = response.getException as ServerError;
            _dialogService.completeDialog(DialogResponse(confirmed: true));
            _snackBarService.showSnackbar(message: error.getErrorMessage());
          } else if (response.data != null) {
            MyAnimalModelResponse model = response.data!.animalprofileModel!;

            isBreedAvailable = true;

            name.text = model.name ?? "";
            username.text = model.username ?? "";
            bio.text = model.bio ?? "";
            animalType.text = model.animalType ?? "";
            selectedAnimalGender = model.gender ?? select;
            breed.text = model.breed ?? "";

            if (model.age != null) {
              if (model.age!.contains("-")) {
                // _snackBarService.showSnackbar(message: "INSIDE THE DOB");
                dobTc.text = model.age ?? "";
                dob = model.age ?? "";
                selectedAnimalAgeChooseType = "DOB";
                notifyListeners();
              } else if (model.age == "") {
                //do nothing set it as default
                // _snackBarService.showSnackbar(message: "INSIDE THE DEFAULT");
              } else {
                // _snackBarService.showSnackbar(message: "INSIDE THE AGE");
                ageType = model.age ?? select;
                selectedAnimalAgeChooseType = "AGE";
                notifyListeners();
              }
            } else {
              // _snackBarService.showSnackbar(message: "INSIDE THE AGE");
              ageType = select;
              selectedAnimalAgeChooseType = "AGE";
              notifyListeners();
            }
            fromTime.text = model.playFrom ?? "";
            toTime.text = model.playTo ?? "";
            avatarUrl = model.avatar ?? "";

            selectedValue = model.category ?? "Pet";
            selectedAnimalType = model.animalType ?? "";
            selectedAnimalGender = model.gender ?? "Pet";

            adoptionValue = model.adoption ?? false;
            matingValue = model.mating ?? false;
            resigteredWithKCValue = model.registeredWithKennelClub ?? false;
            playBuddiesValue = model.playBuddies ?? false;
            servicePetValue = model.servicePet ?? false;
            spayedPetValue = model.spayed ?? false;
            // _dialogService.completeDialog(DialogResponse(confirmed: true));
            // checkBreedAvailable(model.animalType ?? "");

            if (model.location != null) {
              if ((model.location!.coordinates ?? []).length == 2) {
                currentLocation = LatLng(model.location!.coordinates![1],
                    model.location!.coordinates![0]);
                isLocationPicked = true;
                _address = await getAddress(Coordinates(
                    currentLocation.latitude, currentLocation.longitude));
                notifyListeners();
              }
            }

            notifyListeners();
          }
        });
      } else {}
    } else {
      generatePetName(username);
    }
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

  onChangeSpayed(bool value) {
    spayedPetValue = value;
    notifyListeners();
  }

  onChangeServicePet(bool value) {
    servicePetValue = value;
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

  Future<void> uploadImage() async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    if (_imageFile == null) {
      _snackBarService.showSnackbar(message: "Image is empty");
    }
    if (await Util.checkInternetConnectivity()) {
      avatarUrl = await GlobalMethods.imageToLink(File(_imageFile!.path));
      notifyListeners();
    } else {
      _snackBarService.showSnackbar(message: "No Internet connection");
    }
  }

  Future<void> createAnimalProfile() async {
    if (selectedValue.isNotEmpty && selectedValue == "Stray" ||
        matingValue ||
        adoptionValue ||
        playBuddiesValue) {
      if (isLocationPicked) {
        if (_imageFile != null) {
          uploadImage().whenComplete(() => {createAnimalProfileAccount()});
        } else {
          createAnimalProfileAccount();
        }
      } else {
        await _listenForPermissionStatus();
      }
    } else {
      if (_imageFile != null) {
        uploadImage().whenComplete(() => {createAnimalProfileAccount()});
      } else {
        createAnimalProfileAccount();
      }
    }
  }

  Future createAnimalProfileAccount() async {
    _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);

    String name = formValueMap["name"];
    String username = formValueMap["username"];
    String bio = formValueMap["shortbio"];
    String breed = formValueMap["breed"];
    String playFrom = formValueMap["fromTime"];
    String playTo = formValueMap["toTime"];

    String animalAge = "";

    if (selectedAnimalAgeChooseType == "DOB") {
      animalAge = dob;
    } else {
      if (ageType == select) {
        _snackBarService.showSnackbar(message: "Please select age");
      } else {
        animalAge = ageType;
      }
    }

    LocationBody? locationBody;
    if (currentLocation != null) {
      locationBody = LocationBody(
          "Point", [currentLocation.longitude, currentLocation.latitude]);
      notifyListeners();
    } else {
      locationBody = LocationBody("Point", [0.0, 0.0]);
      notifyListeners();
    }

    var response = await runBusyFuture(
      _tamelyApi.createAnimalProfile(
        CreateAnimalProfileBody(
          name,
          username.trimLeft().trimRight(),
          avatarUrl,
          selectedValue,
          bio,
          selectedAnimalType,
          selectedAnimalGender,
          breed,
          animalAge,
          matingValue,
          adoptionValue,
          playBuddiesValue,
          resigteredWithKCValue,
          playFrom,
          playTo,
          locationBody,
        ),
      ),
    );

    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _dialogService.completeDialog(DialogResponse(confirmed: true));
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      _dialogService.completeDialog(DialogResponse(confirmed: true));
      _navigationService.back(result: 1);
    }
  }

  Future editAnimalProfile(String petId) async {
    if (selectedValue.isNotEmpty && selectedValue == "Stray" ||
        matingValue ||
        adoptionValue ||
        playBuddiesValue) {
      if (isLocationPicked) {
        if (_imageFile != null) {
          uploadImage().whenComplete(() => {editAnimalProfileAccount(petId)});
        } else {
          editAnimalProfileAccount(petId);
        }
      } else {
        await _listenForPermissionStatus();
      }
    } else {
      if (_imageFile != null) {
        uploadImage().whenComplete(() => {editAnimalProfileAccount(petId)});
      } else {
        editAnimalProfileAccount(petId);
      }
    }
  }

  Future editAnimalProfileAccount(String petId) async {
    _dialogService.showCustomDialog(variant: DialogType.LoadingDialog);

    String name = formValueMap["name"];
    String username = formValueMap["username"];
    String bio = formValueMap["shortbio"];
    String breed = formValueMap["breed"];
    String playFrom = formValueMap["fromTime"];
    String playTo = formValueMap["toTime"];

    String animalAge = "";

    if (selectedAnimalAgeChooseType == "DOB") {
      animalAge = dob;
    } else {
      if (ageType == select) {
        _snackBarService.showSnackbar(message: "Please select age");
      } else {
        animalAge = ageType;
      }
    }

    LocationBody? locationBody;
    if (currentLocation != null) {
      locationBody = LocationBody(
          "Point", [currentLocation.longitude, currentLocation.latitude]);
      notifyListeners();
    } else {
      locationBody = LocationBody("Point", [0.0, 0.0]);
      notifyListeners();
    }

    var response = await runBusyFuture(
      _tamelyApi.editAnimalProfile(
          EditAnimalProfileBody(
              name,
              username.trimLeft().trimRight(),
              avatarUrl,
              selectedValue,
              bio,
              selectedAnimalType,
              selectedAnimalGender,
              breed,
              animalAge,
              matingValue,
              adoptionValue,
              playBuddiesValue,
              resigteredWithKCValue,
              playFrom,
              playTo,
              servicePetValue,
              spayedPetValue,
              locationBody,
              petId),
          petToken),
    );

    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _dialogService.completeDialog(DialogResponse(confirmed: true));
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      _dialogService.completeDialog(DialogResponse(confirmed: true));
      _navigationService.back(result: 1);
    }
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
      selectedDateValue = "${picked_s.day}-${picked_s.month}-${picked_s.year}";

      dob = selectedDateValue;

      notifyListeners();
    }
  }

  Future<void> generatePetName(TextEditingController usernameTC) async {
    var response = await runBusyFuture(_tamelyApi.generatePetUsername());

    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
    } else if (response.data != null) {
      print("GENREATEDUSERNAME   ${response.data!.username ?? ""}");
      usernameTC.text = response.data!.username ?? "";
      notifyListeners();
    }
  }

  //
  // Future selectAnimalBreed(BuildContext ct, TextEditingController tc) async {
  //   closeKeyboard(ct);
  //   var result = await _bottomSheetService.showCustomSheet(
  //     isScrollControlled: true,
  //     variant: BottomSheetType.SelectBreedBottomSheet,
  //     title: "Select breed",
  //     customData: listOfAnimalBreed,
  //   );
  //   if (result != null) {
  //     if (result.confirmed) {
  //       tc.text = result.data.toString();
  //       notifyListeners();
  //     }
  //   }
  // }

  // Future selectAnimalType(BuildContext ct, TextEditingController tc) async {
  //   closeKeyboard(ct);
  //   if (tc.text != "" && tc.text != null) {
  //     selectedAnimalType = tc.text;
  //     notifyListeners();
  //     // closeKeyboard(context);
  //     checkBreedAvailable(tc.text.toLowerCase());
  //   } else {
  //     _snackBarService.showSnackbar(message: noAnimalTypeSelected);
  //   }
  // }

  Future selectAnimalBreed(BuildContext ct, TextEditingController tc) async {
    closeKeyboard(ct);
    var result = await _bottomSheetService.showCustomSheet(
      isScrollControlled: true,
      variant: BottomSheetType.SelectBreedBottomSheet,
      title: "Select breed",
      customData: listOfAnimalBreed,
    );
    if (result != null) {
      if (result.confirmed) {
        tc.text = result.data
            .toString()
            .substring(0, result.data.toString().length - 1);
        notifyListeners();
      }
    }
  }

  Future selectAnimalType(BuildContext ct, TextEditingController tc) async {
    closeKeyboard(ct);
    var result = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.SelectAnimalTypeBottomSheet,
      isScrollControlled: true,
      title: "Select the type of $selectedValue",
      customData: listOfAnimalTypes,
    );

    if (result!.confirmed) {
      tc.text = result.data;
      selectedAnimalType = result.data;
      notifyListeners();
      checkBreedAvailable(tc.text.toLowerCase());

      if (result != null) {
        if (result.confirmed) {
          tc.text = result.data;
          selectedAnimalType = result.data;
          notifyListeners();
          checkBreedAvailable(tc.text.toLowerCase());
        }
      }
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
    // _listenForPermissionStatus();

    await LocationHelper.checkLocationPermission()
        .whenComplete(() => _determinePosition());
  }

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
    _isValid = true;
    formValueMap.keys.forEach((element) {
      if (manitoryFeilds.contains(element)) {
        String elementValue = formValueMap[element];
        if (elementValue.isEmpty) {
          _isValid = false;
          return;
        }
      }
    });

    notifyListeners();
  }

  final Permission _permission = Permission.location;
  PermissionStatus _permissionStatus = PermissionStatus.denied;

  Future<void> _listenForPermissionStatus() async {
    final status = await _permission.status;
    _permissionStatus = status;
    notifyListeners();
    _determinePosition();
  }

  Future<void> requestPermission(Permission permission) async {
    final status = await permission.request();
    _permissionStatus = status;
    notifyListeners();
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    // Test if location services are enabled.
    // serviceEnabled = await Geolocator.isLocationServiceEnabled();
    // if (!serviceEnabled) {
    //   await requestPermission(_permission);
    //   await Geolocator.openLocationSettings();
    //   return Future.error('Location services are disabled.');
    // }
    //
    // permission = await Geolocator.checkPermission();
    // if (permission == LocationPermission.denied) {
    //   permission = await Geolocator.requestPermission();
    //   if (permission == LocationPermission.denied) {
    //     requestPermission(_permission);
    //     return Future.error('Location permissions are denied');
    //   }
    // }
    //
    // if (permission == LocationPermission.deniedForever) {
    //   // Permissions are denied forever, handle appropriately.
    //   return Future.error(
    //       'Location permissions are permanently denied, we cannot request permissions.');
    // }

    // When we reach here, permissions are g anted and we can
    // continue accessing the position of the device.
    // Position location = await Geolocator.getCurrentPosition();

    LocationHelper.getCurrentLocation().then((position) {
      currentLocation = LatLng(position.latitude, position.longitude);
      notifyListeners();
    });
    // currentLocation = LatLng(location.latitude, location.longitude);
    _address = await getAddress(
        Coordinates(currentLocation.latitude, currentLocation.longitude));
    isLocationPicked = true;
    scrollController.jumpTo(scrollController.position.maxScrollExtent);
    _snackBarService.showSnackbar(message: "Confirm you location");
    notifyListeners();
  }

  Future<String> getAddress(Coordinates coordinates) async {
    var address =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    print("this is subAdminArea ${address.first.subAdminArea}");
    print("this is locality ${address.first.locality}");
    return '${address.first.locality}, ${address.first.subAdminArea}';
  }

  void changeAddress() async {
    List result = await _navigationService.navigateTo(Routes.locationPicker);
    if (result[1]) {
      currentLocation = result[0];
      setLocation(result[0]);
    } else {
      _address = "Gurugram, Haryana";
    }
    notifyListeners();
  }

  Future<void> setLocation(LatLng location) async {
    if (location.latitude != 0)
      await getAddress(Coordinates(location.latitude, location.longitude))
          .then((value) {
        _address = value;
        notifyListeners();
      });
  }
}

class AnimalTypeModel {
  String _type = "";
  String _imageAssetPath = "";

  AnimalTypeModel(this._type, this._imageAssetPath);

  String get type => this._type;

  String get imageAssetPath => _imageAssetPath;
}
