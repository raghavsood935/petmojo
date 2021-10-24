import 'package:kubelite/app/app.locator.dart';
import 'package:kubelite/app/app.logger.dart';
import 'package:kubelite/app/app.router.dart';
import 'package:kubelite/models/my_animals_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final log = getLogger('CreateAnimalProfileView');
  final _navigationService = locator<NavigationService>();
  String? _animalProfileCreateView = Routes.createAnimalPageView;
  dynamic _destinationArguments;

  Future _createAnimalProfileView() async {
    if (_animalProfileCreateView != null) {
      await _navigationService.navigateTo(
        _animalProfileCreateView!,
        arguments: _destinationArguments,
      );
    }
  }

  Future _addDetailsPage() async {
    // if (_addDetailsRoute != null) {
    //   await _navigationService.navigateTo(
    //     _addDetailsRoute!,
    //     arguments: _destinationArguments,
    //   );
    // }
  }

  Future _followPeoplePage() async {
    // if (_followPeopleRoute != null) {
    //   await _navigationService.navigateTo(
    //     _followPeopleRoute!,
    //     arguments: _destinationArguments,
    //   );
    // }
  }

  String _profilename = "Joeylene Rivera";
  String _username = "username";
  String _actionText = "Complete your profile";
  int _completedProfileStepCount = 0;
  int _completedProfileTotalCount = 2;
  int _noOfAnimals = 0;
  int _noOfPosts = 0;
  int _noOfFollowers = 0;
  int _noOfFollowing = 0;
  int _noOfHearts = 0;

  bool isMyAnimalsVisibile = false;
  bool _profileCompleted = false;

  List<MyAnimalsModel> _dummyListOfMyAnimals = [
    MyAnimalsModel(),
    MyAnimalsModel(),
    MyAnimalsModel(),
    MyAnimalsModel(),
    MyAnimalsModel(),
    MyAnimalsModel(),
    MyAnimalsModel(),
    MyAnimalsModel(),
    MyAnimalsModel(),
  ];

  List<String> _dummyListOfPosts = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZpYSLMlrAH9fclS4--Jgzvy8s51BnJdOY4w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZpYSLMlrAH9fclS4--Jgzvy8s51BnJdOY4w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREXRvslazqeJ0hLFvkgCxmYefVVKceG3U7Gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOGB8hL92pHixnkA7yY-IrWBfJNDSl3FTe8w&usqp=CAU",
  ];

  List<String> get dummyListOfPosts => _dummyListOfPosts;

  List<MyAnimalsModel> get dummyListOfMyAnimals => _dummyListOfMyAnimals;

  String get profilename => _profilename;

  String get username => _username;

  String get actionText => _actionText;

  int get noOfAnimals => _noOfAnimals;

  int get noOfPosts => _noOfPosts;

  int get noOfFollowers => _noOfFollowers;

  int get noOfFollowing => _noOfFollowing;

  int get noOfHearts => _noOfHearts;

  int get completedProfileStepCount => _completedProfileStepCount;

  int get completedProfileTotalCount => _completedProfileTotalCount;

  bool get profileCompleted => _profileCompleted;

  void myAnimalVisible() {
    isMyAnimalsVisibile = !isMyAnimalsVisibile;
    notifyListeners();
  }

  void goToAddDetailsProfileAction() async {
    await _addDetailsPage();
  }

  void goToFollowPeopleProfileAction() async {
    await _followPeoplePage();
  }

  void goToCreateAnimalProfileView() async {
    await _createAnimalProfileView();
  }

  void goToProfileEditView() {}
}
