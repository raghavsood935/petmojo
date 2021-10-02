import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_text.dart';

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
              child: AppText.body(
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
                    'Forget Password?',
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
                FacebookAuthButton(
                  onPressed: onSignInWithFacebook ?? () {},
                  // darkMode: true,
                  text: continueWithFB,
                  style: AuthButtonStyle(
                    iconSize: 24,
                    height: 50,
                    width: double.maxFinite,
                    textStyle: TextStyle(color: Colors.white),
                    buttonType: AuthButtonType.secondary,
                  ),
                ),
                verticalSpaceRegular,
                GoogleAuthButton(
                  onPressed: onSignInWithGoogle ?? () {},
                  text: continueWithGoogle,
                  style: AuthButtonStyle(
                    buttonColor: Color(0xff4285F4),
                    iconSize: 24,
                    width: double.maxFinite,
                    iconBackground: Colors.white,
                    buttonType: AuthButtonType.secondary,
                    height: 50,
                    textStyle: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
        ],
      ),
    );
  }
}
