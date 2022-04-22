import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/params/edit_animal_type_body.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/ui/profilepage/create_animal_profile/create_animal_view_model.dart';
import 'package:tamely/util/ImageConstant.dart';

class CreateAnimalProfileNewPageTwoViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();

  bool isFromStart = false;

  String animalId = "";

  List<AnimalTypeModel> petAnimalTypeListValues = [
    AnimalTypeModel(
      "Dog",
      dogImgPath,
    ),
    AnimalTypeModel(
      "Cat",
      catImgPath,
    ),
    AnimalTypeModel(
      "Pig",
      pigImgPath,
    ),
    AnimalTypeModel(
      "Rabbit",
      rabbitImgPath,
    ),
    AnimalTypeModel(
      "Birds",
      birdImgPath,
    ),
    AnimalTypeModel(
      "Fish",
      fishImgPath,
    ),
    AnimalTypeModel(
      "Hamster",
      hamstersImgPath,
    ),
    AnimalTypeModel(
      "Others",
      othersImgPath,
    ),
  ];

  bool isValid = true;
  bool isLoading = false;

  Future init(String id, bool isStart) async {
    animalId = id;
    isFromStart = isStart;

    notifyListeners();
  }

  Future<bool> onBack() async {
    if (isFromStart) {
      _navigationService.pushNamedAndRemoveUntil(
        Routes.dashboard,
        arguments: DashboardArguments(
          isNeedToUpdateProfile: true,
          initialPageState: 0,
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

  Future createProfile(int index) async {
    if (index >= 0) {
      isLoading = true;
      notifyListeners();

      var response = await _tamelyApi.editAnimalType(
          EditAnimalTypeBody(animalId, petAnimalTypeListValues[index].type));

      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _snackBarService.showSnackbar(message: error.getErrorMessage());
        isLoading = false;
        notifyListeners();
      } else if (response.data != null) {
        isLoading = false;
        notifyListeners();
        _navigationService.replaceWith(
          Routes.createAnimalProfileNewPageThree,
          arguments: CreateAnimalProfileNewPageThreeArguments(
            id: animalId,
            token: "",
            type: petAnimalTypeListValues[index].type,
            isFromStart: isFromStart,
          ),
        );
      }
    }
  }

  Future onSkipPressed() async {
    _navigationService.replaceWith(
      Routes.createAnimalProfileNewPageThree,
      arguments: CreateAnimalProfileNewPageThreeArguments(
          id: animalId, token: "", type: "dog", isFromStart: isFromStart),
    );
  }
}
