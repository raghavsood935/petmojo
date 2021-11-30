import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/feedback/feedback_viewmodel.dart';
import 'package:tamely/util/String.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/main_btn.dart';
import 'package:tamely/util/Color.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedbackView extends StatefulWidget {
  const FeedbackView({Key? key}) : super(key: key);

  @override
  _FeedbackViewState createState() => _FeedbackViewState();
}

class _FeedbackViewState extends State<FeedbackView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FeedBackViewModel>.reactive(
      viewModelBuilder: () => FeedBackViewModel(),
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: AppText.subheading(feedbackTitle),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: SvgPicture.asset(
                "assets/images/feedback.svg",
                width: 20,
                height: 20,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StarsRating(
                  onRateChange: model.onRateChange,
                ),
                verticalSpaceMedium,
                AppText.subheading("Submit your valuable feedback"),
                verticalSpaceRegular,
                AppText.body2("Tags"),
                Wrap(
                  spacing: 10,
                  runSpacing: 2,
                  children: [
                    TagsWidget(
                      bgColor: model.bug ? colors.primary : Colors.white,
                      textColor: model.bug ? Colors.white : colors.primary,
                      borderColor:
                          model.bug ? Colors.transparent : colors.primary,
                      onMainButtonTapped: model.onBugChange,
                      mainButtonTitle: "Bug",
                    ),
                    TagsWidget(
                      bgColor: model.feature ? colors.primary : Colors.white,
                      textColor: model.feature ? Colors.white : colors.primary,
                      borderColor:
                          model.feature ? Colors.transparent : colors.primary,
                      onMainButtonTapped: model.onFeaturesChange,
                      mainButtonTitle: "Feature",
                    ),
                    TagsWidget(
                      bgColor: model.design ? colors.primary : Colors.white,
                      textColor: model.design ? Colors.white : colors.primary,
                      borderColor:
                          model.design ? Colors.transparent : colors.primary,
                      onMainButtonTapped: model.onDesignChange,
                      mainButtonTitle: "Design",
                    ),
                    TagsWidget(
                      bgColor: model.idea ? colors.primary : Colors.white,
                      textColor: model.idea ? Colors.white : colors.primary,
                      borderColor:
                          model.idea ? Colors.transparent : colors.primary,
                      onMainButtonTapped: model.onIdeaChange,
                      mainButtonTitle: "Idea",
                    ),
                    TagsWidget(
                      bgColor: model.others ? colors.primary : Colors.white,
                      textColor: model.others ? Colors.white : colors.primary,
                      borderColor:
                          model.others ? Colors.transparent : colors.primary,
                      onMainButtonTapped: model.onOthersChange,
                      mainButtonTitle: "Others",
                    ),
                  ],
                ),
                verticalSpaceMedium,
                TextAreaWidget(
                  ctrl: model.feedback,
                  bgColor: colors.inputFieldColor,
                  hintText: model.hintText,
                ),
                verticalSpaceRegular,
                ScreenShotInput(
                    bgColor: colors.inputFieldColor,
                    onClick: () => model.onImageButtonPressed(
                        ImageSource.gallery, context)),
                verticalSpaceTiny,
                Visibility(
                  visible: model.avatarUrl.isNotEmpty,
                  child: Image.network(
                    model.avatarUrl,
                    width: screenWidthPercentage(context, percentage: 0.85),
                    height: screenWidthPercentage(context, percentage: 0.85),
                  ),
                ),
                verticalSpaceRegular,
                MainButtonWidget(
                  onMainButtonTapped: model.onSubmit,
                  mainButtonTitle: "SUBMIT FEEDBACK",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StarsRating extends StatefulWidget {
  StarsRating({Key? key, required this.onRateChange}) : super(key: key);

  Function(int i) onRateChange;

  @override
  _StarsRatingState createState() => _StarsRatingState();
}

class _StarsRatingState extends State<StarsRating> {
  bool r1 = false;
  bool r2 = false;
  bool r3 = false;
  bool r4 = false;
  bool r5 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppText.headingThree("How well did we do..?"),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 9,
              top: 10,
            ),
            child: Row(
              children: [
                (!r1)
                    ? IconButton(
                        onPressed: () {
                          widget.onRateChange(1);
                          setState(() {
                            r1 = true;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.star,
                          color: colors.primary,
                        ),
                      )
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            r5 = false;
                            r4 = false;
                            r3 = false;
                            r2 = false;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.solidStar,
                          color: colors.primary,
                        ),
                      ),
                (!r2)
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            widget.onRateChange(2);
                            r2 = true;
                            r1 = true;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.star,
                          color: colors.primary,
                        ),
                      )
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            r5 = false;
                            r4 = false;
                            r3 = false;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.solidStar,
                          color: colors.primary,
                        ),
                      ),
                (!r3)
                    ? IconButton(
                        onPressed: () {
                          widget.onRateChange(3);
                          setState(() {
                            r3 = true;
                            r2 = true;
                            r1 = true;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.star,
                          color: colors.primary,
                        ),
                      )
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            r5 = false;
                            r4 = false;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.solidStar,
                          color: colors.primary,
                        ),
                      ),
                (!r4)
                    ? IconButton(
                        onPressed: () {
                          widget.onRateChange(4);
                          setState(() {
                            r4 = true;
                            r3 = true;
                            r2 = true;
                            r1 = true;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.star,
                          color: colors.primary,
                        ),
                      )
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            r5 = false;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.solidStar,
                          color: colors.primary,
                        ),
                      ),
                (!r5)
                    ? IconButton(
                        onPressed: () {
                          widget.onRateChange(5);
                          setState(() {
                            r5 = true;
                            r4 = true;
                            r3 = true;
                            r2 = true;
                            r1 = true;
                          });
                        },
                        icon: Icon(
                          FontAwesomeIcons.star,
                          color: colors.primary,
                        ),
                      )
                    : IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.solidStar,
                          color: colors.primary,
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
          color: colors.inputFieldColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(
            color: colors.primary,
          )),
    );
  }
}

class TagsWidget extends StatelessWidget {
  const TagsWidget({
    Key? key,
    required this.onMainButtonTapped,
    required this.mainButtonTitle,
    this.bgColor = colors.primary,
    this.textColor = Colors.white,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  final VoidCallback onMainButtonTapped;
  final String mainButtonTitle;
  final Color bgColor;
  final Color textColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 34,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: onMainButtonTapped,
        child: AppText.body1(mainButtonTitle, color: textColor),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(bgColor),
          // padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
    );
  }
}

class TextAreaWidget extends StatelessWidget {
  const TextAreaWidget(
      {Key? key,
      required this.ctrl,
      required this.bgColor,
      required this.hintText})
      : super(key: key);
  final TextEditingController ctrl;
  final Color bgColor;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 10,
      controller: ctrl,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: bgColor,
      ),
    );
  }
}

class ScreenShotInput extends StatelessWidget {
  const ScreenShotInput(
      {Key? key, required this.bgColor, required this.onClick})
      : super(key: key);
  final Color bgColor;
  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: DottedBorder(
        dashPattern: [6, 4],
        color: colors.primary,
        strokeWidth: 2,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.attachment_sharp),
              horizontalSpaceSmall,
              AppText.body2("Screenshot"),
            ],
          ),
          width: double.infinity,
          height: 30,
          decoration: BoxDecoration(color: bgColor),
        ),
      ),
    );
  }
}
