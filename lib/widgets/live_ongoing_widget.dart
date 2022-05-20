import 'package:blinking_text/blinking_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tamely/ui/services/services_viewmodel.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/util/Color.dart';

class OngoingTraining extends StatefulWidget {
  final ServicesViewModel model;
  const OngoingTraining({
    required this.model,
  });

  @override
  State<OngoingTraining> createState() => _OngoingTrainingState();
}

class _OngoingTrainingState extends State<OngoingTraining> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black38,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/paws_background_long.png"),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      children: [
                        BlinkText("LIVE ●   ",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 17, 0)),
                            endColor: Color.fromARGB(255, 255, 17, 0),
                            beginColor: colors.white),
                        AppText.titleBold(
                          "Training Ongoing!",
                          color: colors.primary,
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceTiny,
                  AppText.caption(
                      "Our Trusted Trainer is taking good care of your Furry Baby!",
                      color: colors.primary),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            horizontalSpaceSmall,
            TextButton(
                onPressed: () => widget.model.onLiveSnippetCTA(),
                child: AppText.bodyBold(
                  "See Report",
                  color: colors.white,
                ),
                style: TextButton.styleFrom(
                  backgroundColor: colors.primary,
                  elevation: 8,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                )),
          ],
        ));
  }
}

class OngoingWalking extends StatefulWidget {
  final ServicesViewModel model;
  const OngoingWalking({
    required this.model,
  });

  @override
  State<OngoingWalking> createState() => _OngoingWalkingState();
}

class _OngoingWalkingState extends State<OngoingWalking> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black38,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/paws_background_long.png"),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      children: [
                        BlinkText("LIVE ●   ",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 17, 0)),
                            endColor: Color.fromARGB(255, 255, 17, 0),
                            beginColor: colors.white),
                        AppText.titleBold(
                          "Walk Ongoing!",
                          color: colors.primary,
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceTiny,
                  AppText.caption(
                      "Our Trusted Walker is taking good care of your Furry Baby!",
                      color: colors.primary),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            horizontalSpaceSmall,
            TextButton(
                onPressed: () => widget.model.onLiveSnippetCTA(),
                child: AppText.bodyBold(
                  "Track Live",
                  color: colors.white,
                ),
                style: TextButton.styleFrom(
                  backgroundColor: colors.primary,
                  elevation: 8,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                )),
          ],
        ));
  }
}
