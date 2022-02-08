import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/ui/community/community_main_view/community_main_view.dart';

class CommunityStartBannerViewModel extends BaseModel {
  final log = getLogger('CommunityStartBannerView');
  final _navigationService = locator<NavigationService>();
  String? _chooseInterestsView = Routes.communityChooseInterestView;
  String? _communityMainView = Routes.communityMainView;
  dynamic _destinationArguments;

  Future _communityChooseInterestsView() async {
    if (_chooseInterestsView != null) {
      await _navigationService.navigateTo(
        _chooseInterestsView!,
        arguments: _destinationArguments,
      );
    }
  }

  void goToCommunityChooseInterestsView() async {
    await _communityChooseInterestsView();
  }

  final _sharedPreference = locator<SharedPreferencesService>();

  bool isHuman = true;
  String petId = "";
  String petToken = "";
  int profileCurrentIndex = 0;

  void init() {
    CurrentProfile profile = _sharedPreference.getCurrentProfile();
    isHuman = profile.isHuman;
    petId = profile.petId;
    petToken = profile.petToken;
    profileCurrentIndex = profile.currentIndex;
    notifyListeners();
  }

  Future goToCommunityMainPage(BuildContext context) async {
    _sharedPreference.setCommunityFirstTime(false);
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => CommunityMainView(),
      ),
    );
    // _navigationService.pushNamedAndRemoveUntil(
    //   Routes.dashboard,
    //   arguments: DashboardArguments(
    //     isNeedToUpdateProfile: false,
    //     initialPageState: 1,
    //     isHuman: isHuman,
    //     petID: petId,
    //     petToken: petToken,
    //     initialState: profileCurrentIndex,
    //   ),
    // );
  }
}
