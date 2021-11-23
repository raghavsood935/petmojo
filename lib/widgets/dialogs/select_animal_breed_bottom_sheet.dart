import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/bottom_sheet_view_models/select_animal_breed_view_model.dart';
import 'package:tamely/widgets/search_text_field.dart';

class SelectAnimalBreedBottomSheet extends StatefulWidget {
  final SheetRequest sheetRequest;
  final Function(SheetResponse) onDialogTap;

  const SelectAnimalBreedBottomSheet(
      {Key? key, required this.sheetRequest, required this.onDialogTap})
      : super(key: key);

  @override
  _SelectAnimalBreedBottomSheetState createState() =>
      _SelectAnimalBreedBottomSheetState();
}

class _SelectAnimalBreedBottomSheetState
    extends State<SelectAnimalBreedBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SelectAnimalBreedViewModel>.reactive(
      viewModelBuilder: () => SelectAnimalBreedViewModel(),
      onModelReady: (model) => model.init(widget.sheetRequest.customData),
      builder: (context, model, child) => Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          color: colors.white,
        ),
        height: screenHeightPercentage(context, percentage: 0.80),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    child: AppText.body2(
                      "Save",
                      color: colors.primary,
                    ),
                    onTap: () {
                      model.onSaveBreed().whenComplete(() => widget.onDialogTap(
                          SheetResponse(
                              confirmed: true,
                              data: model.selectedBreedString)));
                    }),
              ),
              verticalSpaceSmall,
              AppText.headingThree(widget.sheetRequest.title ?? ""),
              SearchTextField(
                  controller: model.searchTC,
                  onChange: model.onSearch,
                  hint: "Search the breed"),
              ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: model.resultList.length,
                  itemBuilder: (context, index) {
                    return CheckboxListTile(
                      value: model.resultList[index].isChecked,
                      onChanged: (bool? value) {
                        setState(
                            () => model.resultList[index].setChecked(value));
                      },
                      title: AppText.body(model.resultList[index].breedName),
                      activeColor: colors.primary,
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
