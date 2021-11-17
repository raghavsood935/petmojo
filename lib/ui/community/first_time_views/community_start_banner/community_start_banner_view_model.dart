import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/shared/base_viewmodel.dart';

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

  Future _communityMainViewGo() async {
    if (_communityMainView != null) {
      await _navigationService.navigateTo(
        _communityMainView!,
        arguments: _destinationArguments,
      );
    }
  }

  void goToCommunityMainView() async {
    await _communityMainViewGo();
  }
}
