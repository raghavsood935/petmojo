import 'package:kubelite/app/app.logger.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  final log = getLogger('StartupViewModel');
  // final _navigationService = locator<NavigationService>();
  // String? _addDetialsRoute = Routes.addDetialsProfileView;
  // dynamic _destinationArguments;

  Future _addDetialsPage() async {
    // if (_addDetialsRoute != null) {
    //   await _navigationService.navigateTo(
    //     _addDetialsRoute!,
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

  void goToaddDetialsProfileAction() async {
    await _addDetialsPage();
  }

  void followProfileAction() {}
}
