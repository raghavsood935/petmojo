import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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

  int index = 0;

  SwiperController _imageScrollController = SwiperController();

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController();

    return ViewModelBuilder<StartUpViewModel>.reactive(
      onModelReady: (model) => model.initialise(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: FadeTransition(
                opacity: _fadeOut!,
                child: Lottie.asset(
                  'assets/lottie/loading_animation.json',
                  width: double.maxFinite,
                  height: double.maxFinite,
                  onLoaded: (composition) {
                    animationController.addStatusListener((status) {
                      if (status == AnimationStatus.completed) {
                        model.moveToRedirectState();
                        if (!model.isDestinationAvailable)
                          animation2?.forward();
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
            ),
            FadeTransition(
              opacity: _fadeIn!,
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/images/on_boarding/Vectoron_boarding_bg.png",
                        width: screenWidth(context),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: SizedBox(
                        height: 200,
                        child: Swiper(
                          itemCount: 3,
                          controller: _imageScrollController,
                          loop: false,
                          index: index,
                          itemBuilder: (context, index) => Column(
                            children: [
                              SizedBox(height: 90),
                              Image.asset(
                                "assets/images/on_boarding/on-boarding-image-${index + 1}.png",
                                width: screenWidth(context),
                              ),
                              SizedBox(height: 150),
                              Image.asset(
                                "assets/images/on_boarding/on-boarding-text-${index + 1}.png",
                                width: screenWidth(context),
                              ),
                            ],
                          ),
                          onIndexChanged: (int i) {
                            setState(() {
                              index = i;
                            });
                          },
                        ),
                      ),
                    ),
                    // Positioned(
                    //   left: 0,
                    //   right: 0,
                    //   bottom: screenHeightPercentage(context, percentage: 0.15),
                    //   child: SizedBox(
                    //     height: 200,
                    //     child: Swiper(
                    //       itemCount: 3,
                    //       controller: _textScrollController,
                    //
                    //       loop: false,
                    //       index: index,
                    //       itemBuilder: (context, index) => Image.asset(
                    //         "assets/images/on_boarding/on-boarding-text-${index + 1}.png",
                    //         width: screenWidth(context),
                    //       ),
                    //       onIndexChanged: (int i) {
                    //         setState(() {
                    //           index = i;
                    //         });
                    //       },
                    //     ),
                    //   ),
                    // ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: screenHeightPercentage(context, percentage: 0.10),
                      child: SizedBox(
                        height: 35,
                        width: screenWidth(context),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: Center(
                                child: AnimatedSmoothIndicator(
                                  activeIndex: index,
                                  count: 3,
                                  effect: ScrollingDotsEffect(
                                    activeDotScale: 1.5,
                                    dotHeight: 10,
                                    dotWidth: 10,
                                    activeDotColor: colors.eCommercePrimary,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 20,
                              top: 0,
                              bottom: 0,
                              child: Visibility(
                                visible: index == 2,
                                child: IconButton(
                                  onPressed: () => model.moveToNext(),
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: colors.primary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      viewModelBuilder: () => StartUpViewModel(),
    );
  }
}
