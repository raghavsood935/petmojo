import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/shared/base_viewmodel.dart';

import 'create_group_fisrt_page/create_group_fisrt_page_view.dart';
import 'create_group_second_page/create_group_second_page_view.dart';
import 'create_group_third_page/create_group_third_page_view.dart';

class CreateGroupViewModel extends BaseModel {
  List<bool> currentStep = [true, false, false];
  List<Widget> _pages = [
    CreateGroupFirstView(),
    CreateGroupSecondView(),
    CreateGroupThirdView()
  ];
  List<String> titles = ["Create group", "Group details", "Invite people"];
  List<String> mainBtnTitles = ["CREATE GROUP", "CONTINUE", "DONE"];
  PageController _controller = PageController();
  int currentIndex = 0;

  final navigationService = locator<NavigationService>();

  List<Widget> get pages => _pages;
  PageController get controller => _controller;

  void onSkipPressed() {
    if (currentIndex < 2) {
      _controller.animateToPage(currentIndex + 1,
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    } else if (currentIndex == 2) {
      navigationService.replaceWith(Routes.groupInfoView);
    }
  }

  void onPageChanged(i) {
    currentIndex = i;
    currentStep.clear();
    for (int a = 0; a < 3; a++) {
      if (a <= i) {
        currentStep.insert(a, true);
      } else {
        currentStep.insert(a, false);
      }
    }
    notifyListeners();
  }

  void mainButtonPressed() {
    if (currentIndex < 2) {
      _controller.animateToPage(currentIndex + 1,
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    } else if (currentIndex == 2) {
      navigationService.replaceWith(Routes.groupInfoView);
    }
  }
}
