import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'dogrunningbooking_viewmodel.dart';

class DogRunningBookingView extends StatelessWidget {
  DogRunningBookingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DogRunningBookingViewModel>.nonReactive(
      onModelReady: (model) {
        model.getPets();
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              verticalSpaceRegular,
              // Heading
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    left: 25,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: model.navigateBack,
                    ),
                  ),
                  Center(
                    child: AppText.headingThree(
                      model.titles[model.currentIndex],
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              verticalSpaceTiny,
              spacedDividerTiny,

              // Page Indication
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

              // Body
              Expanded(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  scrollBehavior: ScrollBehavior(),
                  physics: NeverScrollableScrollPhysics(),
                  controller: model.controller,
                  onPageChanged: model.onPageChanged,
                  children: model.pages,
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.horizontal),
          child: Container(
            color: colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10.0),
            child: GestureDetector(
              onTap: model.onMainButtonPressed,
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  model.mainBtnTitles[model.currentIndex],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => DogRunningBookingViewModel(),
    );
  }
}
