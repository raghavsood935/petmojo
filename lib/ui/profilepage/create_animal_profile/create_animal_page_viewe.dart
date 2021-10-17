import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kubelite/layers/create_animal_profile_layer.dart';
import 'package:kubelite/models/animal_type_model.dart';
import 'package:kubelite/models/breed_animal_model.dart';
import 'package:kubelite/ui/profilepage/create_animal_profile/create_animal_page_viewe.form.dart';
import 'package:kubelite/ui/profilepage/create_animal_profile/create_animal_view_model.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_input_field.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:kubelite/widgets/main_btn.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

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
  CreateAnimalPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAnimalViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: AppText.subheading(createAnimalTitle),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_sharp),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  model.onImageButtonPressed(ImageSource.gallery, context);
                },
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: colors.primary,
                  child: CircleAvatar(
                    radius: 67,
                    backgroundColor: colors.kcLightGreyBackground,
                    child: Stack(
                      children: [
                        if (model.imagePath.isEmpty)
                          CircleAvatar(
                            backgroundColor: colors.primary,
                            radius: 65,
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: colors.white,
                              size: 50,
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
                                  child: Image.file(File(model.imagePath))),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: model.animalTypeValues.length,
                  itemBuilder: (context, index) => radioButton(
                      model.animalTypeValues[index],
                      model.selectedValue,
                      model.onChangeRadio),
                ),
              ),
              horizontalSpaceSmall,
              Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: CreateAnimalProfileLayer(
                    nameTF: item(
                      AppInputField(
                        controller: nameController,
                        hint: "Name here",
                      ),
                      "Name",
                      true,
                    ),
                    usernameTF: item(
                      AppInputField(
                        controller: usernameController,
                        hint: "Unique username",
                      ),
                      "Username",
                      true,
                    ),
                    shortBioTF: item(
                      AppInputField(
                        controller: shortbioController,
                        hint: "We would love to know more about the animal:)",
                      ),
                      "Short Bio",
                      false,
                    ),
                    animalTypeDDM: item(
                      AppInputField(
                        controller: animalTypeController,
                        hint: "TYPE",
                      ),
                      "Animal Type",
                      true,
                    ),
                    genderDDM: item(
                      AppInputField(
                        controller: genderController,
                        hint: "GENDER",
                      ),
                      "Gender",
                      false,
                    ),
                    animalBreedDDM: item(
                      selectItem(
                          context,
                          breedController,
                          model.aniamlBreedTypeValues,
                          model.animalBreedBoolList,
                          null),
                      "Breed",
                      false,
                    ),
                    dobTF: AppInputField(
                      controller: dobController,
                      hint: "dd/mm/yyyy",
                    ),
                    ageChooseOptnDDM: dropDownButton(model.ageType,
                        model.ageTypeValues, "Choose age", model.onChangeAge),
                    type: "Animal",
                  ),
                ),
              ),
              spacedDividerSmall,
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Up for Mating"),
                      trailing: Switch(
                          activeColor: colors.primary,
                          value: model.matingValue,
                          onChanged: model.onChangeMating),
                    ),
                    spacedDividerSmall,
                    ListTile(
                      title: Text("Up for Adoption"),
                      trailing: Switch(
                          activeColor: colors.primary,
                          value: model.adoptionValue,
                          onChanged: model.onChangeAdoption),
                    ),
                    Visibility(
                      visible: model.adoptionValue,
                      child: ListTile(
                        title: Text("Registered with Indian Kennel Club ?"),
                        trailing: Switch(
                            activeColor: colors.primary,
                            value: model.resigteredWithKCValue,
                            onChanged: model.onChangeresigteredKC),
                      ),
                    ),
                    spacedDividerSmall,
                    ListTile(
                      title: Text("Up for Play-buddies"),
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
                                        AppInputField(
                                          controller: fromTimeController,
                                          hint: "select time",
                                          readOnly: true,
                                          trailing: Icon(Icons.alarm),
                                          trailingTapped: () => _selectTime(
                                              context, fromTimeController),
                                        ),
                                        "From time",
                                        false)),
                                horizontalSpaceRegular,
                                Expanded(
                                    child: item(
                                        AppInputField(
                                          controller: toTimeController,
                                          hint: "select time",
                                          readOnly: true,
                                          trailing: Icon(Icons.alarm),
                                          trailingTapped: () => _selectTime(
                                              context, toTimeController),
                                        ),
                                        "To time",
                                        false))
                              ],
                            ),
                            "Up for Play-buddies Generally I’m available to play from ",
                            false)),
                    spacedDividerSmall,
                    MainButtonWidget(
                        onMainButtonTapped: () {},
                        mainButtonTitle: "CREATE PROFILE"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => CreateAnimalViewModel(),
    );
  }
}

Widget dropDownButton(String value, List<String> listOfItems, String hint,
    void onChange(String? value)) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: DropdownButton<String>(
      isExpanded: true,
      itemHeight: null,
      icon: Icon(Icons.arrow_drop_down),
      value: value,
      hint: AppText.body(hint),
      items: listOfItems
          .map((item) => DropdownMenuItem<String>(
                child: Text(item),
                value: item,
              ))
          .toList(),
      onChanged: onChange,
    ),
  );
}

Widget radioButton(String value, String selectedValue, onChangeFun) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Radio<String>(
        value: value,
        groupValue: selectedValue,
        onChanged: onChangeFun,
        activeColor: colors.primary,
      ),
      AppText.body(value),
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
          AppText.body1(
            title,
            color: colors.black,
          ),
          isManitory
              ? AppText.body1(
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

Widget selectItem(
    BuildContext context,
    TextEditingController controller,
    List<BreedTypeModel>? breedList,
    List<bool> breedListBool,
    List<AnimalTypeModel>? animalTypeModel) {
  return AppInputField(
    controller: controller,
    readOnly: true,
    trailing: Icon(Icons.arrow_drop_down),
    trailingTapped: () => showModalBottomSheet(
        enableDrag: false,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (context) =>
            buildSheet(controller, breedList, breedListBool, animalTypeModel)),
  );
}

Widget buildSheet(
    TextEditingController TextController,
    List<BreedTypeModel>? breedList,
    List<bool> listOfBreedBool,
    List<AnimalTypeModel>? animalTypeModel) {
  return DraggableScrollableSheet(
    initialChildSize: 0.85,
    maxChildSize: 0.85,
    builder: (context, controller) => Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        color: colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppText.headingThree("Select breed"),
            verticalSpaceSmall,
            AppInputField(controller: TextController),
            BuildList(
              breedList: breedList,
            ),
          ],
        ),
      ),
    ),
  );
}

class BuildList extends StatefulWidget {
  BuildList({
    Key? key,
    this.breedList,
    this.animalTypeModel,
  }) : super(key: key);

  List<BreedTypeModel>? breedList = null;
  List<AnimalTypeModel>? animalTypeModel = null;

  @override
  _BuildListState createState() => _BuildListState();
}

class _BuildListState extends State<BuildList> {
  @override
  Widget build(BuildContext context) {
    if (widget.breedList != null) {
      return ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: widget.breedList!.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
              value: widget.breedList![index].isChecked,
              onChanged: (bool? value) {
                setState(() => widget.breedList![index].setChecked(value));
              },
              title: AppText.body(widget.breedList![index].breedName),
              activeColor: colors.primary,
            );
          });
    } else if (widget.animalTypeModel != null) {
      return ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: AppText.body(
            widget.animalTypeModel![index].type,
          ),
          trailing: CircleAvatar(
            child: Image.network(widget.animalTypeModel![index].profileUrl),
          ),
        ),
      );
    } else {
      return SizedBox();
    }
  }
}

// Widget buildList(
//     List<String>? breedList, List<AnimalTypeModel>? animalTypeModel) {
//   if (breedList != null) {
//     return ListView.builder(
//         shrinkWrap: true,
//         itemCount: breedList.length,
//         itemBuilder: (context, index) {
//           bool isChecked = false;
//           return CheckboxListTile(
//             value: isChecked,
//             onChanged: (bool? value) {
//               isChecked = !isChecked;
//             },
//             title: AppText.body(breedList[index]),
//             activeColor: colors.primary,
//           );
//         });
//   } else if (animalTypeModel != null) {
//     return ListView.builder(
//       itemBuilder: (context, index) => ListTile(
//         title: AppText.body(
//           animalTypeModel[index].type,
//         ),
//         trailing: CircleAvatar(
//           child: Image.network(animalTypeModel[index].profileUrl),
//         ),
//       ),
//     );
//   } else {
//     return SizedBox();
//   }
// }

Future<void> _selectTime(BuildContext context, TextEditingController tc) async {
  TimeOfDay selectedTime = TimeOfDay.now();

  final TimeOfDay? picked_s = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: child!,
        );
      });

  if (picked_s != null && picked_s != selectedTime) {
    tc.text = picked_s.format(context);
  }
  ;
}
