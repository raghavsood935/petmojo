import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/community_animal_interest.dart';

class CommunityChooseInterestViewModel extends BaseModel {
  final _navigationService = locator<NavigationService>();
  final _sharedPreference = locator<SharedPreferencesService>();

  bool isHuman = true;
  String petId = "";
  String petToken = "";
  int profileCurrentIndex = 0;

  List<Animal> _listOfAnimals = [
    Animal("Dogs", dogFullImgPath, dogInterests),
    Animal("Cats", catFullImgPath, catInterests),
    Animal("Horse", horseFullImgPath, horseInterests),
    Animal("Birds", birdFullImgPath, birdsInterests),
    Animal("Rabbit", rabbitFullImgPath, rabbitInterests),
    Animal("Pig", pigFullImgPath, pigInterests),
    Animal("Fish", fishFullImgPath, fishInterests),
    Animal("Reptiles", reptilesFullImgPath, reptilesInterests),
  ];

  List<Animal> get listOfAnimals => _listOfAnimals;

  void init() {
    CurrentProfile profile = _sharedPreference.getCurrentProfile();
    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;
    profileCurrentIndex = profile.currentIndex;
    notifyListeners();
  }

  Future goToCommunityMainPage() async {
    _sharedPreference.setCommunityFirstTime(false);
    _navigationService.pushNamedAndRemoveUntil(
      Routes.dashboard,
      arguments: DashboardArguments(
        isNeedToUpdateProfile: false,
        initialPageState: 1,
        isHuman: isHuman,
        petID: petId,
        petToken: petToken,
        initialState: profileCurrentIndex,
      ),
    );
  }
}

class Animal {
  String _name;
  String _imgPath;
  bool _isOpened = false;

  List<AnimalSubTitle> _subTypes = [];

  Animal(this._name, this._imgPath, List<String> _subTypesString) {
    for (String name in _subTypesString) {
      _subTypes.add(AnimalSubTitle(name));
    }
  }

  List<AnimalSubTitle> get subTypes => _subTypes;

  String get imgPath => _imgPath;

  String get name => _name;

  bool get isOpened => _isOpened;

  void changeOpenedState() {
    _isOpened = !_isOpened;
  }
}

class AnimalSubTitle {
  String _name;
  bool _isSelected = false;

  AnimalSubTitle(this._name);

  void changeSelectState() {
    _isSelected = !_isSelected;
  }

  bool get isSelected => _isSelected;

  String get name => _name;
}
