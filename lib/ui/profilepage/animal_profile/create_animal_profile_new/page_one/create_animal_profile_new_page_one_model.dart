import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/params/create_animal_profile_new_body.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class CreateAnimalProfileNewPageOneViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();

  TextEditingController petNameController = TextEditingController();
  TextEditingController petUsernameController = TextEditingController();

  bool isValid = true;
  bool isLoading = false;

  bool isFromStart = false;

  Future onChange(String value) async {
    isValid = true;
    if (petNameController.text.isEmpty) {
      isValid = false;
    }
    if (petUsernameController.text.isEmpty) {
      isValid = false;
    }

    notifyListeners();
  }

  Future<bool> onBack() async {
    _navigationService.back(result: 0);
    return true;
  }

  Future createProfile() async {
    if (isValid) {
      isLoading = true;
      notifyListeners();

      var response = await _tamelyApi.animalProfileCreateNew(
        CreateAnimalProfileNewBody(
            petNameController.text, petUsernameController.text),
      );

      if (response.getException != null) {
        ServerError error = response.getException as ServerError;
        _snackBarService.showSnackbar(message: error.getErrorMessage());
        isLoading = false;
        notifyListeners();
      } else if (response.data != null) {
        isLoading = false;
        notifyListeners();
        _navigationService.replaceWith(
          Routes.createAnimalProfileNewPageTwo,
          arguments: CreateAnimalProfileNewPageTwoArguments(
              id: response.data!.id ?? "",
              token: response.data!.token ?? "",
              isFromStart: isFromStart),
        );
      }
    }
  }

  void init(bool isStart) {
    isFromStart = isStart;
    notifyListeners();
    generatePetName();
  }

  Future<bool> skip() async {
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
    return true;
  }

  Future<void> generatePetName() async {
    isLoading = true;
    notifyListeners();
    var response = await _tamelyApi.generatePetUsername();

    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
      isLoading = false;
      notifyListeners();
    } else if (response.data != null) {
      print("GENREATEDUSERNAME   ${response.data!.username ?? ""}");
      petUsernameController.text = response.data!.username ?? "";
      isLoading = false;
      notifyListeners();
    }
  }
}
