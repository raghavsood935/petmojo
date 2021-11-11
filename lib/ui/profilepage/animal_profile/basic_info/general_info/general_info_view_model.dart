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
}
