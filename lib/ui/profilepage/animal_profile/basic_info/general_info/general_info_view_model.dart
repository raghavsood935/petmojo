import 'dart:ffi';

import 'package:geocoder/geocoder.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class GeneralInfoViewModel extends BaseModel {
  String _name = "Leo";
  String _animalType = "Dog";
  String _gender = "Male";
  String _servicePet = "Yes";
  String _sprayed = "Yes";
  String _breed = "Husky";
  String _age = "7 yrs";
  bool _isUpForAdoption = true;
  bool _isUpForMating = true;
  bool _isUpForPlayBuddies = true;

  String location = "gasrgraesadrgwer";

  String get name => _name;

  String get animalType => _animalType;

  String get gender => _gender;

  String get servicePet => _servicePet;

  String get sprayed => _sprayed;

  String get breed => _breed;

  String get age => _age;

  bool get isUpForAdoption => _isUpForAdoption;

  bool get isUpForMating => _isUpForMating;

  bool get isUpForPlayBuddies => _isUpForPlayBuddies;

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

      location = first.addressLine;

      notifyListeners();

      print(location);
    } else {
      location = "AAAAAAAAAAA";
      print("EMPTY");
      notifyListeners();
    }
  }
}
