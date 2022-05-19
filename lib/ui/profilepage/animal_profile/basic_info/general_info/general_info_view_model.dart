
import 'package:geocoder/geocoder.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/get_appointment_details_response.dart';
import 'package:tamely/models/location_resopnse.dart';
import 'package:tamely/models/my_animal_model.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/String.dart';

class GeneralInfoViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();

  String _location = "-";

  String _serviecPet = "";
  String _spayed = "";
  String _age = "";
  String _breed = "";
  String _gender = "";

  Future getLocation(LatLongResponse loct) async {
    if (loct.coordinates != null && loct.coordinates!.length == 2) {
      double log = loct.coordinates![0];
      double lat = loct.coordinates![1];

      var address = await Geocoder.local
          .findAddressesFromCoordinates(Coordinates(lat, log));
      print("this is subAdminArea ${address.first.subAdminArea}");
      print("this is locality ${address.first.locality}");

      _location = '${address.first.locality}, ${address.first.subAdminArea}';
      notifyListeners();

      // Coordinates coordinates = new Coordinates(lat, log);
      // var addresses =
      //     await Geocoder.local.findAddressesFromCoordinates(coordinates);
      // var first = addresses.first;
      //
      // _location = first.addressLine;
      //
      // notifyListeners();
      //
      // print(_location);
    }
    // else {
    // _location = "AAAAAAAAAAA";
    // print("EMPTY");
    // notifyListeners();
    // }
  }

  Future goToEdit(String petId, String petToken) async {
    var result = await _navigationService.navigateTo(
      Routes.createAnimalPageView,
      arguments: CreateAnimalPageViewArguments(
        petId: petId,
        isEdit: true,
        petToken: petToken,
      ),
    );
    if (result == 1) {
      _navigationService.back(result: 1);
    }
  }

  Future setSomeDetails(MyAnimalModelResponse animalModelResponse) async {
    if (animalModelResponse.location != null) {
      getLocation(animalModelResponse.location!);
    }

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

    if (animalModelResponse.age != null) {
      if (animalModelResponse.age == select) {
        _age = "-";
      } else {
        _age = animalModelResponse.age ?? "-";
      }
    } else {
      _age = "-";
    }

    if (animalModelResponse.gender != null) {
      if (animalModelResponse.gender == select) {
        _gender = "-";
      } else {
        _gender = animalModelResponse.gender ?? "-";
      }
    } else {
      _gender = "-";
    }

    if (animalModelResponse.breed != null) {
      if (animalModelResponse.breed!
              .substring(animalModelResponse.breed!.length - 1) ==
          ",") {
        _breed = animalModelResponse.breed!
            .substring(0, animalModelResponse.breed!.length - 1);
      } else {
        _breed = animalModelResponse.breed ?? "";
      }
    } else {
      _breed = "-";
    }

    notifyListeners();
  }

  String get location => _location;

  String get serviecPet => _serviecPet;

  String get spayed => _spayed;

  String get age => _age;

  String get breed => _breed;

  String get gender => _gender;
}
