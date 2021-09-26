import 'package:flutter/material.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:kubelite/widgets/main_btn.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';

class StartupView extends StatefulWidget {
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
      duration: Duration(milliseconds: 1500),
    );
    animation2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    _fadeOut = Tween<double>(begin: 1.0, end: 0.0).animate(animation1!);
    _fadeIn = Tween<double>(begin: 0.0, end: 1.0).animate(animation2!);

    animation1?.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animation2?.forward();
      }
    });
    animation1?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            FadeTransition(
              opacity: _fadeOut!,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      child:
                          Image.asset("assets/images/light_splash_screen.png"),
                    ),
                    AppText.subheading(
                      "All Things Pets!",
                      color: Color(0xFF3F414E),
                    )
                  ],
                ),
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
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          contentPadding: EdgeInsets.all(0),
                          leading: Icon(
                            Icons.check_box,
                            color: colors.primary,
                          ),
                          title: AppText.body1(wireFrameTitle1),
                          selected: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          contentPadding: EdgeInsets.all(0),
                          leading: Icon(
                            Icons.check_box,
                            color: colors.primary,
                          ),
                          title: AppText.body1(wireFrameTitle2),
                          selected: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          contentPadding: EdgeInsets.all(0),
                          leading: Icon(
                            Icons.check_box,
                            color: colors.primary,
                          ),
                          title: AppText.body1(wireFrameTitle3),
                          selected: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          contentPadding: EdgeInsets.all(0),
                          leading: Icon(
                            Icons.check_box,
                            color: colors.primary,
                          ),
                          title: AppText.body1(wireFrameTitle4),
                          selected: true,
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                  MainButtonWidget(
                      onMainButtonTapped: () {},
                      mainButtonTitle: signUpLoginTitle)
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
