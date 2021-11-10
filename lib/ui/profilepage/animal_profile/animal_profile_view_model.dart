import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class AnimalProfileViewModel extends BaseModel {
  final log = getLogger('AnimalProfileView');
  final _navigationService = locator<NavigationService>();
  String? _animalBasicInfoRoute = Routes.animalBasicInfo;
  dynamic _destinationArguments;

  String _profilename = "Joeylene Rivera";
  String _username = "username";
  String _animalBreed = "Dog (Siberian Husky)";
  String _shortBio =
      "Helping B2C Tech Start-ups build a greate marketing websiter. Get on the right track with a 60 mins consultation ";
  int _completedProfileStepCount = 0;
  int _completedProfileTotalCount = 2;
  int _noOfPosts = 0;
  int _noOfFollowers = 0;
  int _noOfFollowing = 0;
  int _noOfHearts = 0;

  bool _isUpForAdoption = true;
  bool _isUpForMating = true;
  bool _isUpForPlayBuddies = true;

  String get profilename => _profilename;

  String get username => _username;

  String get shortBio => _shortBio;

  int get completedProfileStepCount => _completedProfileStepCount;

  int get noOfHearts => _noOfHearts;

  int get noOfFollowing => _noOfFollowing;

  int get noOfFollowers => _noOfFollowers;

  int get noOfPosts => _noOfPosts;

  String get animalBreed => _animalBreed;

  bool get isUpForAdoption => _isUpForAdoption;

  int get completedProfileTotalCount => _completedProfileTotalCount;

  bool get isUpForMating => _isUpForMating;

  bool get isUpForPlayBuddies => _isUpForPlayBuddies;

  Future _animalBasicInfo() async {
    if (_animalBasicInfoRoute != null) {
      await _navigationService.navigateTo(
        _animalBasicInfoRoute!,
        arguments: _destinationArguments,
      );
    }
  }

  void goToAnimalBasicInfo() async {
    await _animalBasicInfo();
  }
}
