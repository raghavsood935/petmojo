import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/models/params/edit_animal_breed_age_body.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/animal_type_constant.dart';

class CreateAnimalProfileNewPageThreeViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();
  final _bottomSheetService = locator<BottomSheetService>();

  bool isFromStart = false;

  TextEditingController breedController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  List<String> listOfYears = [
    "Years",
    "0 Year",
    "1 Year",
    "2 Years",
    "3 Years",
    "4 Years",
    "5 Years",
    "6 Years",
    "7 Years",
    "8 Years",
    "9 Years",
    "10 Years",
    "11 Years",
    "12 Years",
    "13 Years",
    "14 Years",
    "15 Years",
    "16 Years",
    "17 Years",
    "18 Years",
    "19 Years",
    "20 Years",
  ];

  List<String> listOfMoths = [
    "Months",
    "1 Month",
    "2 Months",
    "3 Months",
    "4 Months",
    "5 Months",
    "6 Months",
    "7 Months",
    "8 Months",
    "9 Months",
    "10 Months",
    "11 Months",
  ];

  String selectedYear = "Years";
  String selectedMonth = "Months";

  List<String> listOfAnimalBreed = [];

  String animalId = "";

  bool isValid = true;
  bool isLoading = false;

  Future init(String id, String type, bool isStart) async {
    animalId = id;
    isFromStart = isStart;
    notifyListeners();
    setBreedList(type);
  }

  Future<bool> onBack() async {
    if (isFromStart) {
      _navigationService.pushNamedAndRemoveUntil(
        Routes.dashboard,
        arguments: DashboardArguments(
          isNeedToUpdateProfile: true,
          initialPageState: 3,
          isHuman: true,
          petID: "",
          petToken: "",
          initialState: 0,
        ),
      );
    } else {
      _navigationService.back(result: 1);
    }
    return true;
  }

  Future onChangeYear(String? value) async {
    selectedYear = value ?? "";
    notifyListeners();
  }

  Future onChangeMonth(String? value) async {
    selectedMonth = value ?? "";
    notifyListeners();
  }

  Future createProfile() async {
    isLoading = true;
    notifyListeners();

    var response = await _tamelyApi.editAnimalBreedAndAge(
        EditAnimalBreedAgeBody(animalId, "$selectedYear-$selectedMonth",
            breedController.text.isEmpty ? "-" : breedController.text));

    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
      isLoading = false;
      notifyListeners();
    } else if (response.data != null) {
      isLoading = false;
      notifyListeners();
      onBack();
    }
  }

  Future<void> selectDate(BuildContext context) async {
    DateTime selectedDate = DateTime.now();

    FocusScope.of(context).unfocus();

    final DateTime? picked_s = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: selectedDate,
    );
    if (picked_s != null && picked_s != selectedDate) {
      dobController.text = "${picked_s.day}-${picked_s.month}-${picked_s.year}";

      notifyListeners();
    }
  }

  Future selectAnimalBreed(BuildContext ct) async {
    FocusScope.of(ct).unfocus();
    var result = await _bottomSheetService.showCustomSheet(
      isScrollControlled: true,
      variant: BottomSheetType.SelectBreedBottomSheet,
      title: "Select breed",
      customData: listOfAnimalBreed,
      data:breedController.text,
    );
    if (result != null) {
      if (result.confirmed) {
        breedController.text = result.data
            .toString();
        notifyListeners();
      }
    }
  }

  Future setBreedList(String value) async {
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
}
