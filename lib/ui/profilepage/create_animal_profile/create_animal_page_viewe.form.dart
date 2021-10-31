// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String NameValueKey = 'name';
const String UsernameValueKey = 'username';
const String ShortbioValueKey = 'shortbio';
const String AnimalTypeValueKey = 'animalType';
const String GenderValueKey = 'gender';
const String BreedValueKey = 'breed';
const String AgeTypeValueKey = 'ageType';
const String DobValueKey = 'dob';
const String SearchValueKey = 'search';
const String FromTimeValueKey = 'fromTime';
const String ToTimeValueKey = 'toTime';

mixin $CreateAnimalPageView on StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController shortbioController = TextEditingController();
  final TextEditingController animalTypeController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController breedController = TextEditingController();
  final TextEditingController ageTypeController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController searchController = TextEditingController();
  final TextEditingController fromTimeController = TextEditingController();
  final TextEditingController toTimeController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode usernameFocusNode = FocusNode();
  final FocusNode shortbioFocusNode = FocusNode();
  final FocusNode animalTypeFocusNode = FocusNode();
  final FocusNode genderFocusNode = FocusNode();
  final FocusNode breedFocusNode = FocusNode();
  final FocusNode ageTypeFocusNode = FocusNode();
  final FocusNode dobFocusNode = FocusNode();
  final FocusNode searchFocusNode = FocusNode();
  final FocusNode fromTimeFocusNode = FocusNode();
  final FocusNode toTimeFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    nameController.addListener(() => _updateFormData(model));
    usernameController.addListener(() => _updateFormData(model));
    shortbioController.addListener(() => _updateFormData(model));
    animalTypeController.addListener(() => _updateFormData(model));
    genderController.addListener(() => _updateFormData(model));
    breedController.addListener(() => _updateFormData(model));
    ageTypeController.addListener(() => _updateFormData(model));
    dobController.addListener(() => _updateFormData(model));
    searchController.addListener(() => _updateFormData(model));
    fromTimeController.addListener(() => _updateFormData(model));
    toTimeController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            NameValueKey: nameController.text,
            UsernameValueKey: usernameController.text,
            ShortbioValueKey: shortbioController.text,
            AnimalTypeValueKey: animalTypeController.text,
            GenderValueKey: genderController.text,
            BreedValueKey: breedController.text,
            AgeTypeValueKey: ageTypeController.text,
            DobValueKey: dobController.text,
            SearchValueKey: searchController.text,
            FromTimeValueKey: fromTimeController.text,
            ToTimeValueKey: toTimeController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    nameController.dispose();
    usernameController.dispose();
    shortbioController.dispose();
    animalTypeController.dispose();
    genderController.dispose();
    breedController.dispose();
    ageTypeController.dispose();
    dobController.dispose();
    searchController.dispose();
    fromTimeController.dispose();
    toTimeController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get nameValue => this.formValueMap[NameValueKey];
  String? get usernameValue => this.formValueMap[UsernameValueKey];
  String? get shortbioValue => this.formValueMap[ShortbioValueKey];
  String? get animalTypeValue => this.formValueMap[AnimalTypeValueKey];
  String? get genderValue => this.formValueMap[GenderValueKey];
  String? get breedValue => this.formValueMap[BreedValueKey];
  String? get ageTypeValue => this.formValueMap[AgeTypeValueKey];
  String? get dobValue => this.formValueMap[DobValueKey];
  String? get searchValue => this.formValueMap[SearchValueKey];
  String? get fromTimeValue => this.formValueMap[FromTimeValueKey];
  String? get toTimeValue => this.formValueMap[ToTimeValueKey];

  bool get hasName => this.formValueMap.containsKey(NameValueKey);
  bool get hasUsername => this.formValueMap.containsKey(UsernameValueKey);
  bool get hasShortbio => this.formValueMap.containsKey(ShortbioValueKey);
  bool get hasAnimalType => this.formValueMap.containsKey(AnimalTypeValueKey);
  bool get hasGender => this.formValueMap.containsKey(GenderValueKey);
  bool get hasBreed => this.formValueMap.containsKey(BreedValueKey);
  bool get hasAgeType => this.formValueMap.containsKey(AgeTypeValueKey);
  bool get hasDob => this.formValueMap.containsKey(DobValueKey);
  bool get hasSearch => this.formValueMap.containsKey(SearchValueKey);
  bool get hasFromTime => this.formValueMap.containsKey(FromTimeValueKey);
  bool get hasToTime => this.formValueMap.containsKey(ToTimeValueKey);
}

extension Methods on FormViewModel {}
