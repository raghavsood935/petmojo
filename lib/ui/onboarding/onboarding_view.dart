import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/loading_view.dart';
import 'package:tamely/widgets/main_btn.dart';

import 'onboarding_viewmodel.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnBoardingViewModel>.reactive(
      onModelReady: (model) {
        model.initModel();
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.kcVeryLightGreyColor,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              model.goBack();
            },
            icon: Icon(Icons.arrow_back_sharp),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset("assets/images/login_banner.png"),
                    verticalSpaceMedium,
                    AppText.subheading("Join the team animals"),
                    verticalSpaceMedium,
                    Container(
                      width: double.maxFinite,
                      margin: const EdgeInsets.all(16),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          model.useFacebookAuthentication();
                        },
                        icon: Image.asset("assets/images/facebook.png"),
                        label:
                            AppText.body1(continueWithFB, color: Colors.white),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(colors.fbBlue),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(12)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: const EdgeInsets.all(16),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          model.useGoogleAuthentication();
                        },
                        icon: Image.asset("assets/images/google.png"),
                        label: AppText.body1(continueWithGoogle,
                            color: colors.kcPrimaryTextColor),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(colors.white),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(12)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    verticalSpaceRegular,
                    AppText.body(orSignUpWith),
                    verticalSpaceRegular,
                    //Signup Flow
                    MainButtonWidget(
                        onMainButtonTapped: () {
                          model.moveToSignup();
                        },
                        mainButtonTitle: emailPhoneTitle),
                    verticalSpaceRegular,
                    //Login
                    GestureDetector(
                      onTap: () {
                        model.moveToLogin();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText.body(alreadyHaveAccount),
                          horizontalSpaceSmall,
                          AppText.body(
                            loginButtonTitle,
                            color: colors.primary,
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceLarge,
                    // GestureDetector(
                    //   onTap: () {
                    //     model.moveAsGuest();
                    //   },
                    //   child: Row(
                    //     mainAxisSize: MainAxisSize.max,
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       AppText.body("OR"),
                    //       horizontalSpaceSmall,
                    //       GestureDetector(
                    //         onTap: model.moveAsGuest,
                    //         child: AppText.body(
                    //           continueGuestTitle,
                    //           color: colors.primary,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            if (model.isBusy) LoadingView()
          ],
        ),
      ),
      viewModelBuilder: () => OnBoardingViewModel(),
    );
  }
}
