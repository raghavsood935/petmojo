// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String UsernameValueKey = 'username';
const String FullNameValueKey = 'fullName';
const String EmailValueKey = 'email';
const String PasswordValueKey = 'password';

mixin $SignUpView on StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode usernameFocusNode = FocusNode();
  final FocusNode fullNameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    usernameController.addListener(() => _updateFormData(model));
    fullNameController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            UsernameValueKey: usernameController.text,
            FullNameValueKey: fullNameController.text,
            EmailValueKey: emailController.text,
            PasswordValueKey: passwordController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    usernameController.dispose();
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get usernameValue => this.formValueMap[UsernameValueKey];
  String? get fullNameValue => this.formValueMap[FullNameValueKey];
  String? get emailValue => this.formValueMap[EmailValueKey];
  String? get passwordValue => this.formValueMap[PasswordValueKey];

  bool get hasUsername => this.formValueMap.containsKey(UsernameValueKey);
  bool get hasFullName => this.formValueMap.containsKey(FullNameValueKey);
  bool get hasEmail => this.formValueMap.containsKey(EmailValueKey);
  bool get hasPassword => this.formValueMap.containsKey(PasswordValueKey);
}

extension Methods on FormViewModel {}
