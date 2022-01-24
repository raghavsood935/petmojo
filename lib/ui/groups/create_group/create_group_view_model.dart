import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/params/groups/create_group_body.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/global_methods.dart';

import 'create_group_fisrt_page/create_group_fisrt_page_view.dart';
import 'create_group_second_page/create_group_second_page_view.dart';
import 'create_group_third_page/create_group_third_page_view.dart';

class CreateGroupViewModel extends BaseModel {
  final _tamelyApi = locator<TamelyApi>();
  final _snackBarService = locator<SnackbarService>();
  final navigationService = locator<NavigationService>();

  List<bool> currentStep = [true, false, false];
  // List<Widget> _pages = [
  //   CreateGroupFirstView(),
  //   CreateGroupSecondView(),
  //   CreateGroupThirdView()
  // ];
  List<String> titles = ["Create group", "Group details", "Invite people"];
  List<String> mainBtnTitles = ["CREATE GROUP", "CONTINUE", "DONE"];
  PageController _controller = PageController();
  int currentIndex = 0;

  bool isLoading = false;
  bool isValid = false;

  // List<Widget> get pages => _pages;
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
}
