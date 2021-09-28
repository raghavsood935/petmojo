import 'package:flutter/material.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.kcVeryLightGreyColor,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
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
                  label: AppText.body1("CONTINUE WITH FACEBOOK",
                      color: Colors.white),
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
                  onPressed: () {
                    model.useGoogleAuthentication();
                  },
                  icon: Image.asset("assets/images/google.png"),
                  label: AppText.body1("CONTINUE WITH GOOGLE",
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
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
