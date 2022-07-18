// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String UsernameValueKey = 'username';
const String NameValueKey = 'name';
const String ShortBioValueKey = 'shortBio';

mixin $ProfileCreateView on StatelessWidget {
  // final TextEditingController usernameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController shortBioController = TextEditingController();
  final FocusNode usernameFocusNode = FocusNode();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode shortBioFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    // usernameController.addListener(() => _updateFormData(model));
    nameController.addListener(() => _updateFormData(model));
    shortBioController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            // UsernameValueKey: usernameController.text,
            NameValueKey: nameController.text,
            ShortBioValueKey: shortBioController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    // usernameController.dispose();
    usernameFocusNode.dispose();
    nameController.dispose();
    nameFocusNode.dispose();
    shortBioController.dispose();
    shortBioFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get usernameValue => this.formValueMap[UsernameValueKey];
  String? get nameValue => this.formValueMap[NameValueKey];
  String? get shortBioValue => this.formValueMap[ShortBioValueKey];

  bool get hasUsername => this.formValueMap.containsKey(UsernameValueKey);
  bool get hasName => this.formValueMap.containsKey(NameValueKey);
  bool get hasShortBio => this.formValueMap.containsKey(ShortBioValueKey);
}

extension Methods on FormViewModel {}
