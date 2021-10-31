import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kubelite/models/breed_animal_model.dart';
import 'package:kubelite/ui/profilepage/create_animal_profile/create_animal_view_model.dart';
import 'package:kubelite/ui/profilepage/create_animal_profile/select_other_option_daiog/select_other_animal_type.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/ImageConstant.dart';
import 'package:kubelite/util/ui_helpers.dart';

import 'app_input_field.dart';
import 'app_text.dart';

class AppSelectItem extends StatefulWidget {
  AppSelectItem({
    Key? key,
    this.title,
    this.textController,
    this.searchController,
    this.onSaveWidget,
    this.breedList,
    this.animalTypeModel,
  }) : super(key: key);

  String? title;
  TextEditingController? textController;
  TextEditingController? searchController;
  Widget? onSaveWidget;
  List<BreedTypeModel>? breedList;
  List<AnimalTypeModel>? animalTypeModel;

  @override
  _AppSelectItemState createState() => _AppSelectItemState();
}

class _AppSelectItemState extends State<AppSelectItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.transparent,
        child: IgnorePointer(
          child: AppInputField(
            controller: widget.textController!,
            readOnly: true,
            hint: widget.title!,
            trailing: Icon(Icons.arrow_drop_down),
          ),
        ),
      ),
      onTap: () => showModalBottomSheet(
        enableDrag: false,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (context) => DraggableScrollableSheet(
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
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: widget.onSaveWidget,
                  ),
                  verticalSpaceSmall,
                  AppText.headingThree(widget.title!),
                  verticalSpaceSmall,
                  AppInputField(controller: widget.searchController!),
                  BuildList(
                    breedList: widget.breedList,
                    animalTypeModel: widget.animalTypeModel,
                    textController: widget.textController!,
                  ),
                  verticalSpaceSmall,
                  Visibility(
                    visible: widget.animalTypeModel != null,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: colors.mediumBackgroundColor,
                        child: Image.asset(animalFootPrintImgPath),
                      ),
                      title: AppText.body2("Other (please specify animal)"),
                      onTap: () => showModalBottomSheet(
                        enableDrag: false,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        context: context,
                        builder: (context) => DraggableScrollableSheet(
                          initialChildSize: 0.80,
                          maxChildSize: 0.80,
                          builder: (context, controller) => Container(
                              padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                                color: colors.white,
                              ),
                              child: SelectOtherAnimalType(
                                searchTC: widget.textController!,
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BuildList extends StatefulWidget {
  BuildList({
    Key? key,
    required this.breedList,
    required this.animalTypeModel,
    required this.textController,
  }) : super(key: key);

  List<BreedTypeModel>? breedList = null;
  List<AnimalTypeModel>? animalTypeModel = null;

  TextEditingController textController;

  @override
  _BuildListState createState() => _BuildListState();
}

class _BuildListState extends State<BuildList> {
  int selectedIndex = -1;

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
      print(selectedIndex);
      return StaggeredGridView.countBuilder(
        shrinkWrap: true,
        itemCount: widget.animalTypeModel!.length,
        crossAxisSpacing: 20,
        mainAxisSpacing: 6,
        crossAxisCount: 2,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: selectedIndex == index
                    ? colors.primary
                    : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(10)),
          // color:
          child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: AppText.body(
                widget.animalTypeModel![index].type,
              ),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: colors.primary,
                child: CircleAvatar(
                  radius: 23,
                  backgroundColor: colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      widget.animalTypeModel![index].imageAssetPath,
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              onTap: () {
                widget.textController.text =
                    widget.animalTypeModel![index].type;
                setState(() {
                  selectedIndex = index;
                });
              }),
        ),
        staggeredTileBuilder: (index) => StaggeredTile.fit(1),
      );
    } else {
      return SizedBox();
    }
  }
}
