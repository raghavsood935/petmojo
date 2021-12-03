import 'dart:ffi';

import 'package:geocoder/geocoder.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/my_animal_model.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class GeneralInfoViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();

  String _location = "gasrgraesadrgwer";

  String _serviecPet = "";
  String _spayed = "";

  Future getLocation(String latLog) async {
    List<String> position = latLog.split(",");

    print(latLog);

    if (position != null && position.length <= 2) {
      double lat = double.parse(position[0]);
      double log = double.parse(position[1]);

      final coordinates = new Coordinates(lat, log);

      var addresses =
          await Geocoder.local.findAddressesFromCoordinates(coordinates);
      var first = addresses.first;

      _location = first.addressLine;

      notifyListeners();

      print(_location);
    } else {
      _location = "AAAAAAAAAAA";
      print("EMPTY");
      notifyListeners();
    }
  }

  Future goToEdit(String petId) async {
    var result = await _navigationService.navigateTo(
      Routes.createAnimalPageView,
      arguments: CreateAnimalPageViewArguments(
        petId: petId,
        isEdit: true,
      ),
    );
    if (result == 1) {
      _navigationService.back(result: 1);
    }
  }

  Future setSomeDetails(MyAnimalModelResponse animalModelResponse) async {
    if (animalModelResponse.servicePet == null) {
      _serviecPet = "-";
    } else {
      _serviecPet = animalModelResponse.servicePet! ? "Yes" : "No";
    }

    if (animalModelResponse.spayed == null) {
      _spayed = "-";
    } else {
      _spayed = animalModelResponse.spayed! ? "Yes" : "No";
    }
    notifyListeners();
  }

  String get location => _location;

  String get serviecPet => _serviecPet;

  String get spayed => _spayed;
}
