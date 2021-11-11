import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/my_animals_model.dart';
import 'package:tamely/ui/profilepage/post_tabs/mentions_post_tab.dart';
import 'package:tamely/ui/profilepage/post_tabs/my_posts_tab.dart';

class ProfileViewModel extends BaseViewModel {
  final log = getLogger('CreateAnimalProfileView');
  final _navigationService = locator<NavigationService>();
  String? _animalProfileCreateView = Routes.createAnimalPageView;
  String? _animalProfileView = Routes.animalProfileView;
  dynamic _destinationArguments;

  List<Widget> _tabs = [MyPostsTabView(), MentionsPostTabView()];
  List<Tab> _tabsTitle = [
    Tab(
      text: "My posts",
    ),
    Tab(
      text: "Mentions",
    )
  ];

  Future _createAnimalProfileView() async {
    if (_animalProfileCreateView != null) {
      await _navigationService.navigateTo(
        _animalProfileCreateView!,
        arguments: _destinationArguments,
      );
    }
  }

  Future _animalProfileViewGoTo() async {
    if (_animalProfileView != null) {
      await _navigationService.navigateTo(
        _animalProfileView!,
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

  List<Widget> get tabs => _tabs;

  List<Tab> get tabsTitle => _tabsTitle;

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

  void goToAnimalProfileView() async {
    await _animalProfileViewGoTo();
  }

  void goToProfileEditView() {}
}
