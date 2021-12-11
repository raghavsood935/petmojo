import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import '../dogrunningbooking_viewmodel.dart';

class BookingDetailsView extends ViewModelWidget<DogRunningBookingViewModel> {
  @override
  Widget build(BuildContext context, DogRunningBookingViewModel model) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Address
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.body2(bookingDetailsSubtitle),
                  verticalSpaceRegular,
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  // Address 1
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AppText.body1(
                        addressLineOneLabel,
                        textAlign: TextAlign.start,
                        color: colors.black,
                      ),
                    ),
                  ),
                  AppInputField(
                    hint: addressLineOneHint,
                    controller: model.addressLineOneController,
                    onChanged: model.secondPageValidation,
                    //errorText: model.validUser(emailController),
                    textInputType: TextInputType.name,
                    textCapitalization: TextCapitalization.none,
                  ),
                  // Address 2
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AppText.body1(
                        addressLineTwoLabel,
                        textAlign: TextAlign.start,
                        color: colors.black,
                      ),
                    ),
                  ),
                  AppInputField(
                    hint: addressLineTwoHint,
                    controller: model.addressLineTwoController,
                    onChanged: model.secondPageValidation,
                    //errorText: model.validUser(phoneController),
                    textInputType: TextInputType.name,
                    textCapitalization: TextCapitalization.none,
                  ),
                  // Address 3
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AppText.body1(
                        addressLineThreeLabel,
                        textAlign: TextAlign.start,
                        color: colors.black,
                      ),
                    ),
                  ),
                  AppInputField(
                    hint: addressLineThreeHint,
                    controller: model.addressLineThreeController,
                    onChanged: model.secondPageValidation,
                    //errorText: model.validUser(phoneController),
                    textInputType: TextInputType.name,
                    textCapitalization: TextCapitalization.none,
                  ),
                ],
              ),
            ),
            verticalSpaceSmall,
            const Divider(
              color: colors.kcLightGreyBackground,
              height: 5.0,
              thickness: 5.0,
            ),
            verticalSpaceMedium,

            // Phone
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AppText.body1(
                        phoneVerificationLabel,
                        textAlign: TextAlign.start,
                        color: colors.black,
                      ),
                    ),
                  ),
                  AppInputField(
                    hint: phoneVerificationHint,
                    controller: model.phoneController,
                    onChanged: model.secondPageValidation,
                    //errorText: model.validUser(emailController),
                    textInputType: TextInputType.phone,
                    textCapitalization: TextCapitalization.none,
                    maxLength: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: AppText.body1(
                      addAddressSubtitle,
                      textAlign: TextAlign.start,
                      color: colors.kcCaptionGreyColor,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpaceMedium,
            const Divider(
              color: colors.kcLightGreyBackground,
              height: 5.0,
              thickness: 5.0,
            ),
            verticalSpaceMedium,

            // Alternate
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.body2(alternatePersonLabel),
                  verticalSpaceRegular,
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  // Address 1
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AppText.body1(
                        alternatePersonNameLabel,
                        textAlign: TextAlign.start,
                        color: colors.black,
                      ),
                    ),
                  ),
                  AppInputField(
                    hint: alternatePersonNameHint,
                    controller: model.alternateNameController,
                    onChanged: model.secondPageValidation,
                    //errorText: model.validUser(emailController),
                    textInputType: TextInputType.name,
                    textCapitalization: TextCapitalization.none,
                  ),
                  // Address 2
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AppText.body1(
                        alternatePersonPhoneLabel,
                        textAlign: TextAlign.start,
                        color: colors.black,
                      ),
                    ),
                  ),
                  AppInputField(
                    hint: alternatePersonPhoneHint,
                    controller: model.alternatePhoneController,
                    onChanged: model.secondPageValidation,
                    //errorText: model.validUser(phoneController),
                    textInputType: TextInputType.phone,
                    textCapitalization: TextCapitalization.none,
                    maxLength: 10,
                  ),
                ],
              ),
            ),
            verticalSpaceSmall,
            const Divider(
              color: colors.kcLightGreyBackground,
              height: 5.0,
              thickness: 5.0,
            ),
            verticalSpaceMedium,
            verticalSpaceMedium,
            verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}
