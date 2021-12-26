import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/create_group/create_group_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/main_btn.dart';

class CreateGroupView extends StatefulWidget {
  const CreateGroupView({Key? key}) : super(key: key);

  @override
  _CreateGroupViewState createState() => _CreateGroupViewState();
}

class _CreateGroupViewState extends State<CreateGroupView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateGroupViewModel>.reactive(
      viewModelBuilder: () => CreateGroupViewModel(),
      builder: (context, model, child) => Scaffold(
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
                        onTap: model.navigationService.back,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: AppText.subheading(
                      model.titles[model.currentIndex],
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Visibility(
                      visible: model.currentIndex >= 1,
                      child: GestureDetector(
                          child: AppText.body2(
                            "Skip",
                            textAlign: TextAlign.end,
                            color: colors.primary,
                          ),
                          onTap: model.onSkipPressed),
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
                        color: model.currentStep[0]
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
                        color: model.currentStep[1]
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
                        color: model.currentStep[2]
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
                  controller: model.controller,
                  onPageChanged: model.onPageChanged,
                  children: model.pages,
                ),
              ),
            ],
          ),
        ),
        bottomSheet: MainButtonWidget(
          onMainButtonTapped: model.mainButtonPressed,
          mainButtonTitle: model.mainBtnTitles[model.currentIndex],
        ),
        backgroundColor: colors.white,
      ),
    );
  }
}
