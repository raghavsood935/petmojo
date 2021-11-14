import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/ui/groups/create_group/create_group_fisrt_page/create_group_fisrt_page_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/main_btn.dart';

import 'create_group_second_page/create_group_second_page_view.dart';
import 'create_group_third_page/create_group_third_page_view.dart';

class CreateGroupView extends StatefulWidget {
  const CreateGroupView({Key? key}) : super(key: key);

  @override
  _CreateGroupViewState createState() => _CreateGroupViewState();
}

class _CreateGroupViewState extends State<CreateGroupView> {
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

  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                horizontalSpaceSmall,
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      child: Image.asset(
                        crossImgPath,
                        height: 20,
                        width: 20,
                      ),
                      onTap: _navigationService.back,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: AppText.subheading(
                    titles[currentIndex],
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Visibility(
                    visible: currentIndex >= 1,
                    child: GestureDetector(
                      child: AppText.body2(
                        "Skip",
                        textAlign: TextAlign.end,
                        color: colors.primary,
                      ),
                      onTap: () {
                        if (currentIndex < 2) {
                          _controller.animateToPage(currentIndex + 1,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        } else if (currentIndex == 2) {
                          _navigationService.replaceWith(Routes.groupInfoView);
                        }
                      },
                    ),
                  ),
                ),
                horizontalSpaceSmall,
              ],
            ),
            spacedDividerTiny,
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: currentStep[0]
                          ? colors.primary
                          : colors.kcMediumGreyColor,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: currentStep[1]
                          ? colors.primary
                          : colors.kcMediumGreyColor,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: currentStep[2]
                          ? colors.primary
                          : colors.kcMediumGreyColor,
                    ),
                  ),
                ),
              ],
            ),
            verticalSpaceSmall,
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                controller: _controller,
                onPageChanged: (i) {
                  setState(() {
                    currentIndex = i;
                    currentStep.clear();
                    for (int a = 0; a < 3; a++) {
                      if (a <= i) {
                        currentStep.insert(a, true);
                      } else {
                        currentStep.insert(a, false);
                      }
                    }
                  });
                },
                children: _pages,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: MainButtonWidget(
        onMainButtonTapped: () {
          if (currentIndex < 2) {
            _controller.animateToPage(currentIndex + 1,
                duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          } else if (currentIndex == 2) {
            _navigationService.replaceWith(Routes.groupInfoView);
          }
        },
        mainButtonTitle: mainBtnTitles[currentIndex],
      ),
      backgroundColor: colors.white,
    );
  }
}
