import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamely/util/String.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/main_btn.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/util/Color.dart';
import 'package:dotted_border/dotted_border.dart';

class HelpView extends StatefulWidget {
  const HelpView({Key? key}) : super(key: key);

  @override
  _HelpViewState createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _content = TextEditingController();
  final Color inputFieldColor = Color(0xFFFBF0F4);
  final String hintText =
      "Type your issue here. We will reach out to you shortly!";
  bool isPhone = true;
  bool isEmail = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
        ),
        title: AppText.subheading(helpTitle),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(
              "assets/images/help.svg",
              width: 20,
              height: 20,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.body2("How would you like us to reach you?"),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  (isPhone)
                      ? ButtonActions(
                          onMainButtonTapped: () {},
                          mainButtonTitle: "Phone",
                        )
                      : ButtonActions(
                          bgColor: Colors.white,
                          textColor: colors.kcPrimaryTextColor,
                          borderColor: Colors.black,
                          onMainButtonTapped: () {
                            setState(() {
                              isPhone = !isPhone;
                              isEmail = !isEmail;
                            });
                          },
                          mainButtonTitle: "Phone",
                        ),
                  (isEmail)
                      ? ButtonActions(
                          onMainButtonTapped: () {},
                          mainButtonTitle: "E-mail",
                        )
                      : ButtonActions(
                          bgColor: Colors.white,
                          textColor: colors.kcPrimaryTextColor,
                          borderColor: Colors.black,
                          onMainButtonTapped: () {
                            setState(() {
                              if (!isEmail) {
                                isEmail = !isEmail;
                                isPhone = !isPhone;
                              }
                            });
                          },
                          mainButtonTitle: "E-mail",
                        ),
                ],
              ),
              verticalSpaceMedium,
              (isPhone)
                  ? AppInputField(
                      controller: _phone,
                      label: 'Phone Number',
                      textInputType: TextInputType.phone,
                    )
                  : AppInputField(
                      controller: _email,
                      label: "E-mail ID",
                      textInputType: TextInputType.emailAddress,
                    ),
              AppText.body2("Report a problem / spam / abuse"),
              verticalSpaceMedium,
              TextAreaWidget(
                ctrl: _content,
                bgColor: inputFieldColor,
                hintText: hintText,
              ),
              verticalSpaceMedium,
              ScreenShotInput(bgColor: inputFieldColor, onClick: () {}),
              verticalSpaceRegular,
              MainButtonWidget(
                  onMainButtonTapped: () {}, mainButtonTitle: "SUBMIT HELP")
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonActions extends StatelessWidget {
  const ButtonActions({
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
      width: 135,
      margin: const EdgeInsets.only(top: 16, right: 16),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: onMainButtonTapped,
        child: AppText.subheading(mainButtonTitle, color: textColor),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(bgColor),
          padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
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
