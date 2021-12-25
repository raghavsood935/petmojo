// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String CountryCodeValueKey = 'countryCode';
const String PhoneNumberValueKey = 'phoneNumber';

mixin $PhoneAuthenticationView on StatelessWidget {
  final TextEditingController countryCodeController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final FocusNode countryCodeFocusNode = FocusNode();
  final FocusNode phoneNumberFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    countryCodeController.addListener(() => _updateFormData(model));
    phoneNumberController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            CountryCodeValueKey: countryCodeController.text,
            PhoneNumberValueKey: phoneNumberController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    countryCodeController.dispose();
    countryCodeFocusNode.dispose();
    phoneNumberController.dispose();
    phoneNumberFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get countryCodeValue => this.formValueMap[CountryCodeValueKey];
  String? get phoneNumberValue => this.formValueMap[PhoneNumberValueKey];

  bool get hasCountryCode => this.formValueMap.containsKey(CountryCodeValueKey);
  bool get hasPhoneNumber => this.formValueMap.containsKey(PhoneNumberValueKey);
}

extension Methods on FormViewModel {}
