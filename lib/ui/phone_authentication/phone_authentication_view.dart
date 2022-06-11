import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tamely/ui/phone_authentication/phone_authentication_view_model.dart';
import 'package:tamely/ui/phone_authentication/phone_authentication_view.form.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';

@FormView(fields: [
  FormTextField(name: 'countryCode'),
  FormTextField(name: 'phoneNumber'),
])
class PhoneAuthenticationView extends StatelessWidget
    with $PhoneAuthenticationView {
  PhoneAuthenticationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PhoneAuthenticationViewModel>.reactive(
      viewModelBuilder: () => PhoneAuthenticationViewModel(context),
      onModelReady: (model) {
        // countryCodeController.text = "91";
        model.countryCodeTC.text = "91";
      },
      builder: (context, model, child) => Scaffold(
        body: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: colors.black,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/on_boarding/log_in_logo.png",
                height: 150,
              ),
            ),
            Padding(
              padding: commonPadding,
              child: AppText.titleBold(
                "Create your account",
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(35),
            Padding(
              padding: commonPadding,
              child: TextField(
                controller: model.phonenumberTC,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Phone number",
                  labelStyle: TextStyle(color: colors.black),
                  hintText: "201-555-0123",
                  hintStyle: TextStyle(
                    color: colors.kcGreyBackground,
                    fontSize: 14,
                  ),
                  prefix: AppText.body1(
                    "+91  ",
                    color: colors.kcMediumGreyColor,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: colors.primary, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colors.primary, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colors.primary, width: 2),
                  ),
                ),
                keyboardType: TextInputType.phone,
                maxLength: 10,
              ),
            ),
            // Padding(
            //   padding: commonPaddding,
            //   child: AppText.caption("Phone number"),
            // ),
            // Padding(
            //   padding: commonPaddding,
            //   child: Row(
            //     children: [
            //       // AppText.body("+"),
            //       // Expanded(
            //       //   flex: 1,
            //       //   child: AppInputField(
            //       //     controller: model.countryCodeTC,
            //       //     textInputType: TextInputType.number,
            //       //     hint: "_ _",
            //       //     maxLength: 2,
            //       //   ),
            //       // ),
            //       // horizontalSpaceTiny,
            //       Expanded(
            //         flex: 5,
            //         child: AppInputField(
            //           controller: model.phonenumberTC,
            //           textInputType: TextInputType.number,
            //           hint: "Enter a phone number",
            //           maxLength: 10,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // verticalSpaceRegular,
            // GestureDetector(
            //   onTap: model.sendOTP,
            //   child: Container(
            //     margin: EdgeInsets.all(16),
            //     width: double.infinity,
            //     height: 50,
            //     alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //       color: colors.primary,
            //       borderRadius: BorderRadius.circular(50),
            //     ),
            //     child: model.isLoading
            //         ? CircularProgressIndicator(
            //             valueColor: AlwaysStoppedAnimation(Colors.white),
            //           )
            //         : Text(
            //             "SEND OTP",
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontWeight: FontWeight.bold,
            //                 fontSize: 14),
            //           ),
            //   ),
            // ),
          ],
        ),
        bottomSheet: GestureDetector(
          onTap: model.sendOTP,
          child: Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: model.isLoading
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  )
                : Text(
                    "CONTINUE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
          ),
        ),
        // bottomSheet: GestureDetector(
        //   onTap: model.isValid ? model.sendOTP : null,
        //   child: Container(
        //     margin: EdgeInsets.all(16),
        //     width: double.infinity,
        //     height: 50,
        //     alignment: Alignment.center,
        //     decoration: BoxDecoration(
        //       color: model.isValid ? colors.primary : colors.kcLightGreyColor,
        //       borderRadius: BorderRadius.circular(50),
        //     ),
        //     child: model.isLoading
        //         ? CircularProgressIndicator(
        //             valueColor: AlwaysStoppedAnimation(Colors.white),
        //           )
        //         : Text(
        //             "SEND OTP",
        //             style: TextStyle(
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 14),
        //           ),
        //   ),
        // ),
      ),
    );
  }
}
