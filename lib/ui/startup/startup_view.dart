import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/main_btn.dart';

import 'startup_viewmodel.dart';

class StartupView extends StatefulHookWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  _StartupViewState createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView>
    with TickerProviderStateMixin {
  AnimationController? animation1;
  AnimationController? animation2;
  Animation<double>? _fadeOut;
  Animation<double>? _fadeIn;

  @override
  void initState() {
    super.initState();
    animation1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2500),
    );
    animation2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    _fadeOut = Tween<double>(begin: 1.0, end: 0.0).animate(animation1!);
    _fadeIn = Tween<double>(begin: 0.0, end: 1.0).animate(animation2!);

    animation1?.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animation1?.dispose();
    animation2?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController();

    return ViewModelBuilder<StartUpViewModel>.reactive(
      onModelReady: (model) => model.initialise(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            FadeTransition(
              opacity: _fadeOut!,
              // child: Center(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     mainAxisSize: MainAxisSize.max,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Image.asset(
              //         lightSplashScreen,
              //         height: 200,
              //         width: 200,
              //       ),
              //       AppText.subheading(splashScreenSubTitle)
              //     ],
              //   ),
              // )
              child: Lottie.asset(
                'assets/lottie/tamely_loading.json',
                width: double.maxFinite,
                height: double.maxFinite,
                onLoaded: (composition) {
                  animationController.addStatusListener((status) {
                    if (status == AnimationStatus.completed) {
                      model.moveToRedirectState();
                      if (!model.isDestinationAvailable) animation2?.forward();
                    }
                  });

                  // Configure the AnimationController with the duration of the
                  // Lottie file and start the animation.
                  animationController
                    ..duration = composition.duration
                    ..forward();
                },
              ),
            ),
            FadeTransition(
              opacity: _fadeIn!,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  verticalSpaceMedium,
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: Image.asset("assets/images/workflow_banner1.png"),
                  ),
                  AppText.subheading(
                    "Why Tamely?",
                  ),
                  verticalSpaceMedium,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          contentPadding: EdgeInsets.all(0),
                          leading: Checkbox(
                            value: model.title1Value,
                            onChanged: model.title1Change,
                            activeColor: colors.primary,
                          ),
                          title: AppText.body1(wireFrameTitle1),
                          selected: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          contentPadding: EdgeInsets.all(0),
                          leading: Checkbox(
                            value: model.title2Value,
                            onChanged: model.title2Change,
                            activeColor: colors.primary,
                          ),
                          title: AppText.body1(wireFrameTitle2),
                          selected: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          contentPadding: EdgeInsets.all(0),
                          leading: Checkbox(
                            value: model.title3Value,
                            onChanged: model.title3Change,
                            activeColor: colors.primary,
                          ),
                          title: AppText.body1(wireFrameTitle3),
                          selected: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          contentPadding: EdgeInsets.all(0),
                          leading: Checkbox(
                            value: model.title4Value,
                            onChanged: model.title4Change,
                            activeColor: colors.primary,
                          ),
                          title: AppText.body1(wireFrameTitle4),
                          selected: true,
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                  MainButtonWidget(
                      onMainButtonTapped: () {
                        model.moveToNext();
                      },
                      mainButtonTitle: signUpLoginTitle),
                ],
              ),
            )
          ],
        ),
      ),
      viewModelBuilder: () => StartUpViewModel(),
    );
  }
}
