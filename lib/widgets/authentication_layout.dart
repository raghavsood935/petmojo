import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class AuthenticationLayout extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? mainButtonTitle;
  final Widget? form;
  final bool showTermsText;
  final void Function()? onMainButtonTapped;
  final void Function()? onCreateAccountTapped;
  final void Function()? onForgotPassword;
  final void Function()? onBackPressed;
  final void Function()? onSignInWithFacebook;
  final void Function()? onSignInWithGoogle;
  final void Function()? onResendOTP;
  final String? validationMessage;
  final bool busy;
  final bool isValid;
  final bool isSocialLoginEnabled;

  const AuthenticationLayout({
    Key? key,
    this.title,
    this.subtitle,
    this.mainButtonTitle,
    this.form,
    this.onMainButtonTapped,
    this.onCreateAccountTapped,
    this.onForgotPassword,
    this.onBackPressed,
    this.onSignInWithFacebook,
    this.onSignInWithGoogle,
    this.onResendOTP,
    this.validationMessage,
    this.showTermsText = false,
    this.busy = false,
    this.isValid = false,
    this.isSocialLoginEnabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView(
        children: [
          if (onBackPressed == null) verticalSpaceLarge,
          if (onBackPressed != null) verticalSpaceRegular,
          if (onBackPressed != null)
            IconButton(
              padding: EdgeInsets.zero,
              alignment: Alignment.centerLeft,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: onBackPressed,
            ),
          AppText.subheading(
            title!,
            textAlign: TextAlign.center,
          ),
          verticalSpaceMedium,
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              child: AppText.body1(
                subtitle!,
                textAlign: TextAlign.center,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          verticalSpaceRegular,
          form!,
          verticalSpaceRegular,
          if (onForgotPassword != null)
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: onForgotPassword,
                  child: AppText.body(
                    forgotPasswordLabel,
                    color: colors.primary,
                  )),
            ),
          verticalSpaceRegular,
          if (validationMessage != null)
            AppText.body(
              validationMessage!,
              color: Colors.red,
            ),
          if (validationMessage != null) verticalSpaceRegular,
          GestureDetector(
            onTap: isValid ? onMainButtonTapped : null,
            child: Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isValid ? colors.primary : colors.kcLightGreyColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: busy
                  ? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    )
                  : Text(
                      mainButtonTitle!,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
            ),
          ),
          verticalSpaceRegular,
          if (onCreateAccountTapped != null)
            GestureDetector(
              onTap: onCreateAccountTapped,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  horizontalSpaceTiny,
                  Text(
                    'Create an account',
                    style: TextStyle(
                      color: colors.primary,
                    ),
                  )
                ],
              ),
            ),
          if (showTermsText)
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_box,
                      size: 16,
                      color: colors.primary,
                    ),
                    horizontalSpaceTiny,
                    AppText.caption(
                      'I herby accept T&C and Privacy policy',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                verticalSpaceTiny,
                AppText.caption(
                  'To view the complete policy visit\n www.tamely.in/privacypolicy-tamely',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          if (isSocialLoginEnabled)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                verticalSpaceRegular,
                Align(
                  alignment: Alignment.center,
                  child: AppText.body(
                    'Or',
                  ),
                ),
                verticalSpaceRegular,
                Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.all(16),
                  child: ElevatedButton.icon(
                    onPressed: onSignInWithFacebook ?? () {},
                    icon: Image.asset("assets/images/facebook.png"),
                    label: AppText.body1(continueWithFB, color: Colors.white),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(colors.fbBlue),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(12)),
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
                    onPressed: onSignInWithGoogle ?? () {},
                    icon: Image.asset("assets/images/google.png"),
                    label: AppText.body1(continueWithGoogle,
                        color: colors.kcPrimaryTextColor),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          if (onResendOTP != null) ResendOTPWidget(onResendOTP: onResendOTP!),
        ],
      ),
    );
  }
}

class ResendOTPWidget extends StatefulWidget {
  ResendOTPWidget({Key? key, required this.onResendOTP}) : super(key: key);

  final Function() onResendOTP;
  @override
  _ResendOTPWidgetState createState() => _ResendOTPWidgetState();
}

class _ResendOTPWidgetState extends State<ResendOTPWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;

  Duration get duration => controller.duration! * controller.value;

  bool _expired = false;
  set expired(bool value) {
    _expired = value;
  }

  bool get expired => _expired;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 30),
    );

    controller.addListener(() {
      if (duration.inSeconds == 0) {
        setState(() {
          expired = true;
        });
      }
    });

    controller.reverse(from: 30);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (expired)
            GestureDetector(
                onTap: () {
                  widget.onResendOTP();
                  controller.reverse(from: 30);
                },
                child: AppText.body("Resend OTP")),
          if (!expired)
            AnimatedBuilder(
              animation: controller,
              builder: (BuildContext context, Widget? child) {
                return new AppText.body1(
                  'Resend OTP in ${duration.inSeconds}',
                );
              },
            )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
