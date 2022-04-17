import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'dg_doggroomingbooking_viewmodel.dart';

class DGDogGroomingBookingView extends StatefulWidget {
  const DGDogGroomingBookingView({Key? key}) : super(key: key);

  @override
  State<DGDogGroomingBookingView> createState() =>
      _DGDogGroomingBookingViewState();
}

class _DGDogGroomingBookingViewState extends State<DGDogGroomingBookingView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DGDogGroomingBookingViewModel>.reactive(
      onModelReady: (model) async {
        await model.getPets();
        // await model.getFreeWalkStatus();
        model.checkValid();
      },
      onDispose: (model) {
        model.dispose();
      },
      viewModelBuilder: () => DGDogGroomingBookingViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                verticalSpaceRegular,
                // Heading
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      left: 0,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerLeft,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          model.navigateBack();
                          SystemChannels.textInput
                              .invokeMethod('TextInput.hide');
                        },
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
                verticalSpaceRegular,
                //spacedDividerTiny,

                // Page Indication
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.only(top: 8.0, right: 8.0, bottom: 8.0),
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
                        margin:
                            EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: model.currentStep[1]
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
        ),
        bottomSheet: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.horizontal),
          child: Container(
            color: colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: model.isValid
                        ? () {
                            model.onMainButtonPressed();
                            SystemChannels.textInput
                                .invokeMethod('TextInput.hide');
                          }
                        : null,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: model.isValid
                            ? colors.primary
                            : colors.kcLightGreyColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: model.loading
                          ? CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            )
                          : Text(
                              model.mainBtnTitles[model.currentIndex],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                    ),
                  ),
                ),
                horizontalSpaceSmall,
                GestureDetector(
                  onTap: () {
                    model.openWhatsapp();
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    padding: EdgeInsets.all(4),
                    // rounded grey border
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: colors.kcLightGreyColor),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/whatsapp_icon.png"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
