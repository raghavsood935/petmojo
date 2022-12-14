import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tamely/ui/profilepage/create_animal_profile/create_animal_page_viewe.form.dart';
import 'package:tamely/ui/profilepage/create_animal_profile/create_animal_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';

@FormView(fields: [
  FormTextField(name: 'name'),
  FormTextField(name: 'username'),
  FormTextField(name: 'shortbio'),
  FormTextField(name: 'animalType'),
  FormTextField(name: 'gender'),
  FormTextField(name: 'breed'),
  FormTextField(name: 'ageType'),
  FormTextField(name: 'dob'),
  FormTextField(name: 'search'),
  FormTextField(name: 'fromTime'),
  FormTextField(name: 'toTime'),
])
class CreateAnimalPageView extends StatelessWidget with $CreateAnimalPageView {
  CreateAnimalPageView({Key? key, this.petId, this.petToken, this.isEdit})
      : super(key: key);

  final bool? isEdit;
  final String? petId;
  final String? petToken;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAnimalViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: AppText.body(
                  isEdit ?? false ? editAnimalTitle : createAnimalTitle,
                ),
                leading: IconButton(
                  onPressed: model.onBackPressed,
                  icon: Icon(
                    Icons.arrow_back_sharp,
                    color: colors.black,
                  ),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: SingleChildScrollView(
                controller: model.scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        model.onImageButtonPressed(
                            ImageSource.gallery, context);
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: colors.primary,
                        child: CircleAvatar(
                          radius: 47,
                          backgroundColor: colors.white,
                          child: Stack(
                            children: [
                              if (model.imagePath.isEmpty ||
                                  model.avatarUrl.isEmpty)
                                CircleAvatar(
                                  backgroundColor: colors.primary,
                                  radius: 65,
                                  child: SvgPicture.asset(
                                    cameraIcon,
                                    color: colors.white,
                                  ),
                                ),
                              if (model.avatarUrl.isNotEmpty &&
                                  model.imagePath.isEmpty)
                                CircleAvatar(
                                  backgroundColor: colors.primary,
                                  radius: 64,
                                  child: ClipOval(
                                    child: SizedBox(
                                      width: 95,
                                      height: 95,
                                      child: Image.network(
                                        model.avatarUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              if (model.imagePath.isNotEmpty)
                                CircleAvatar(
                                  backgroundColor: colors.primary,
                                  radius: 65,
                                  child: ClipOval(
                                    child: SizedBox(
                                        width: 130,
                                        height: 130,
                                        child:
                                            Image.file(File(model.imagePath))),
                                  ),
                                )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          radioButton(model.animalTypeValues[0],
                              model.selectedValue, model.onChangeRadio),
                          radioButton(model.animalTypeValues[1],
                              model.selectedValue, model.onChangeRadio),
                          radioButton(model.animalTypeValues[2],
                              model.selectedValue, model.onChangeRadio),
                          radioButton(model.animalTypeValues[3],
                              model.selectedValue, model.onChangeRadio),
                        ],
                      ),
                    ),

                    // SizedBox(
                    //   height: 50,
                    //   child: ListView.separated(
                    //     scrollDirection: Axis.horizontal,
                    //     shrinkWrap: true,
                    //     itemCount: model.animalTypeValues.length,
                    //     itemBuilder: (context, index) => radioButton(
                    //         model.animalTypeValues[index],
                    //         model.selectedValue,
                    //         model.onChangeRadio),
                    //     separatorBuilder: (context, index) =>
                    //         horizontalSpaceSmall,
                    //   ),
                    // ),
                    horizontalSpaceSmall,
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: item(
                                  AppInputField(
                                    controller: nameController,
                                    hint: "Name here",
                                  ),
                                  "Name",
                                  true,
                                ),
                              ),
                              verticalSpaceTiny,
                              Expanded(
                                child: item(
                                  AppInputField(
                                    controller: usernameController,
                                    hint: "Unique username",
                                  ),
                                  "Username",
                                  true,
                                ),
                              ),
                            ],
                          ),
                          verticalSpaceTiny,
                          item(
                            AppInputField(
                              controller: shortbioController,
                              hint:
                                  "We would love to know more about the animal:)",
                            ),
                            "Short Bio",
                            false,
                          ),
                          verticalSpaceTiny,
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: item(
                                  GestureDetector(
                                    child: Container(
                                      color: Colors.transparent,
                                      child: IgnorePointer(
                                        child: AppInputField(
                                          controller: animalTypeController,
                                          readOnly: true,
                                          hint: "Select animal type",
                                          trailing: Icon(Icons.arrow_drop_down),
                                        ),
                                      ),
                                    ),
                                    onTap: () => model.selectAnimalType(
                                        context, animalTypeController),
                                  ),
                                  "Animal Type",
                                  true,
                                ),
                              ),
                              verticalSpaceTiny,
                              Expanded(
                                child: item(
                                  dropDownButton(
                                      context,
                                      model.selectedAnimalGender,
                                      model.animalGenderList,
                                      "Choose gender",
                                      model.onChangeGender),
                                  "Gender",
                                  false,
                                ),
                              ),
                            ],
                          ),
                          verticalSpaceTiny,
                          Visibility(
                            visible: model.isBreedAvailable,
                            child: item(
                              GestureDetector(
                                child: Container(
                                  color: Colors.transparent,
                                  child: IgnorePointer(
                                    child: AppInputField(
                                      controller: breedController,
                                      readOnly: true,
                                      hint: "Select breed",
                                      trailing: Icon(Icons.arrow_drop_down),
                                    ),
                                  ),
                                ),
                                onTap: () => model.selectAnimalBreed(
                                    context, breedController),
                              ),
                              "Breed",
                              false,
                            ),
                          ),
                          verticalSpaceTiny,
                          // Row(
                          //   mainAxisSize: MainAxisSize.max,
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          //   children: [
                          //     horizontalSpaceSmall,
                          //     AppText.caption(
                          //       "Age of Animal",
                          //       color: colors.black,
                          //     ),
                          //     horizontalSpaceTiny,
                          //     AppText.caption(
                          //       "(Choose DOB or baby/adult/young)",
                          //       color: colors.kcMediumGreyColor,
                          //     ),
                          //   ],
                          // ),
                          // verticalSpaceTiny,
                          // Row(
                          //   mainAxisSize: MainAxisSize.max,
                          //   mainAxisAlignment: MainAxisAlignment.end,
                          //   crossAxisAlignment: CrossAxisAlignment.center,
                          //   children: [
                          //     Radio<String>(
                          //       value: "DOB",
                          //       splashRadius: 0,
                          //       groupValue: model.selectedAnimalAgeChooseType,
                          //       onChanged: model.onAnimalAgeTypeChangeRadio,
                          //       activeColor: colors.primary,
                          //     ),
                          //     Expanded(
                          //       child: GestureDetector(
                          //         child: Column(
                          //           children: [
                          //             Row(
                          //               mainAxisSize: MainAxisSize.max,
                          //               mainAxisAlignment:
                          //                   MainAxisAlignment.spaceBetween,
                          //               children: [
                          //                 AppText.caption(
                          //                     model.selectedDateValue),
                          //                 Align(
                          //                   alignment: Alignment.centerRight,
                          //                   child: Icon(
                          //                     Icons.calendar_today,
                          //                     size: 20,
                          //                     color: colors.kcLightGreyColor,
                          //                   ),
                          //                 ),
                          //               ],
                          //             ),
                          //             Divider(
                          //               color: colors.kcLightGreyColor,
                          //               thickness: 1,
                          //             )
                          //           ],
                          //         ),
                          //         onTap: () =>
                          //             model.selectedAnimalAgeChooseType == "DOB"
                          //                 ? model.selectDate(
                          //                     context, dobController)
                          //                 : {},
                          //       ),
                          //     ),
                          //     Radio<String>(
                          //       value: "AGE",
                          //       splashRadius: 0,
                          //       groupValue: model.selectedAnimalAgeChooseType,
                          //       onChanged: model.onAnimalAgeTypeChangeRadio,
                          //       activeColor: colors.primary,
                          //     ),
                          //     Expanded(
                          //       child: dropDownButton(
                          //         context,
                          //         model.ageType,
                          //         model.ageTypeValues,
                          //         "Choose age",
                          //         model.onChangeAge,
                          //         isEnabled:
                          //             model.selectedAnimalAgeChooseType ==
                          //                 "AGE",
                          //       ),
                          //     ),
                          //   ],
                          // )
                        ],
                      ),
                    ),
                    Divider(
                      color: colors.kcLightGreyColor,
                      thickness: 5,
                    ),
                    ListTile(
                      title: AppText.body1("Up for Mating"),
                      trailing: Switch(
                          activeColor: colors.primary,
                          value: model.matingValue,
                          onChanged: model.onChangeMating),
                    ),
                    spacedDividerTiny,
                    ListTile(
                      title: AppText.body1("Up for Adoption"),
                      trailing: Switch(
                          activeColor: colors.primary,
                          value: model.adoptionValue,
                          onChanged: model.onChangeAdoption),
                    ),
                    Visibility(
                      visible: model.adoptionValue,
                      child: ListTile(
                        title: AppText.body1(
                            "Registered with Indian Kennel Club ?"),
                        trailing: Switch(
                            activeColor: colors.primary,
                            value: model.resigteredWithKCValue,
                            onChanged: model.onChangeResigteredKC),
                      ),
                    ),
                    spacedDividerTiny,
                    Visibility(
                      visible: isEdit ?? false,
                      child: ListTile(
                        title: AppText.body1("Service Pet"),
                        trailing: Switch(
                            activeColor: colors.primary,
                            value: model.servicePetValue,
                            onChanged: model.onChangeServicePet),
                      ),
                    ),
                    Visibility(
                        visible: isEdit ?? false, child: spacedDividerTiny),
                    Visibility(
                      visible: isEdit ?? false,
                      child: ListTile(
                        title: AppText.body1("Spayed/Neutered"),
                        trailing: Switch(
                            activeColor: colors.primary,
                            value: model.spayedPetValue,
                            onChanged: model.onChangeSpayed),
                      ),
                    ),
                    Visibility(
                        visible: isEdit ?? false, child: spacedDividerTiny),
                    ListTile(
                      title: AppText.body1("Up for Play-buddies"),
                      trailing: Switch(
                          activeColor: colors.primary,
                          value: model.playBuddiesValue,
                          onChanged: model.onChangePlayBuddies),
                    ),
                    Visibility(
                      visible: model.playBuddiesValue,
                      child: item(
                          Row(
                            children: [
                              Expanded(
                                  child: item(
                                      GestureDetector(
                                        child: Container(
                                          color: Colors.transparent,
                                          child: IgnorePointer(
                                            child: AppInputField(
                                              controller: fromTimeController,
                                              hint: "Select time",
                                              readOnly: true,
                                              leading: Icon(Icons.alarm),
                                            ),
                                          ),
                                        ),
                                        onTap: () => model.selectTime(
                                            context, fromTimeController),
                                      ),
                                      "From time",
                                      false)),
                              horizontalSpaceRegular,
                              Expanded(
                                  child: item(
                                      GestureDetector(
                                        child: Container(
                                          color: Colors.transparent,
                                          child: IgnorePointer(
                                            child: AppInputField(
                                              controller: toTimeController,
                                              hint: "Select time",
                                              readOnly: true,
                                              leading: Icon(Icons.alarm),
                                            ),
                                          ),
                                        ),
                                        onTap: () => model.selectTime(
                                            context, toTimeController),
                                      ),
                                      "To time",
                                      false))
                            ],
                          ),
                          "Generally I???m available to play",
                          false),
                    ),
                    spacedDividerTiny,
                    Visibility(
                      visible: model.isLocationPicked,
                      child: Container(
                        width: screenWidth(context),
                        color: colors.primaryLight,
                        height: 45,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 20,
                                color: colors.black,
                              ),
                              horizontalSpaceSmall,
                              AppText.body1(
                                model.address,
                                color: colors.black,
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: model.changeAddress,
                                child: AppText.body2(
                                  "Change",
                                  color: colors.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    verticalSpace(100),
                  ],
                ),
              ),
              bottomSheet: Container(
                width: double.maxFinite,
                margin: const EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {
                    if (model.isValid) {
                      if (isEdit ?? false) {
                        model.editAnimalProfile(petId!);
                      } else {
                        model.createAnimalProfile();
                      }
                    }
                  },
                  child: AppText.body2(
                      isEdit ?? false ? "SAVE PROFILE" : "CREATE PROFILE",
                      color: colors.white),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(model.isValid
                        ? colors.primary
                        : colors.kcMediumGreyColor),
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
            ),
        viewModelBuilder: () => CreateAnimalViewModel(),
        onModelReady: (model) {
          model.init(
              petId ?? "",
              petToken ?? "",
              isEdit ?? false,
              nameController,
              usernameController,
              shortbioController,
              animalTypeController,
              breedController,
              dobController,
              fromTimeController,
              toTimeController);
          listenToFormUpdated(model);
          model.setAnimalTypeList();
        });
    // {
    //   model.setAnimalTypeList();
    //   listenToFormUpdated(model);
    // });
  }
}

Widget dropDownButton(BuildContext context, String value,
    List<String> listOfItems, String hint, void onChange(String? value),
    {bool isEnabled = true}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
    child: DropdownButton<String>(
      isExpanded: true,
      itemHeight: null,
      icon: Icon(Icons.arrow_drop_down),
      value: value,
      hint: AppText.body(hint),
      items: listOfItems
          .map((item) => DropdownMenuItem<String>(
                child: AppText.body1(item,
                    color: item == select
                        ? colors.kcLightGreyColor
                        : colors.black),
                value: item,
              ))
          .toList(),
      onChanged: isEnabled ? onChange : null,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
    ),
  );
}

Widget radioButton(String value, String selectedValue, onChangeFun) {
  // return RadioListTile(
  //   value: value,
  //   groupValue: selectedValue,
  //   onChanged: onChangeFun,
  //   activeColor: colors.primary,
  //   contentPadding: EdgeInsets.zero,
  // );

  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Radio<String>(
        value: value,
        groupValue: selectedValue,
        onChanged: onChangeFun,
        activeColor: colors.primary,
      ),
      AppText.caption(
        value,
        color: colors.black,
      ),
    ],
  );
}

Widget item(Widget child, String title, bool isManitory) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          horizontalSpaceSmall,
          AppText.caption(
            title,
            color: colors.black,
          ),
          isManitory
              ? AppText.caption(
                  "*",
                  color: colors.primary,
                )
              : SizedBox(),
        ],
      ),
      child,
    ],
  );
}
