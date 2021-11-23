import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/ui/profilepage/create_animal_profile/select_other_option_daiog/select_other_animal_type.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';

import '../app_text.dart';

class SelectOtherAnimalTypeBottomSheet extends StatelessWidget {
  final SheetRequest sheetRequest;
  final Function(SheetResponse) onDialogTap;

  const SelectOtherAnimalTypeBottomSheet(
      {Key? key, required this.sheetRequest, required this.onDialogTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController tc = TextEditingController();

    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        color: colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.subheading(
            "Please specify other animal",
            textAlign: TextAlign.center,
          ),
          verticalSpaceSmall,
          AppText.caption("Animal type"),
          TypeAheadField<String>(
            textFieldConfiguration: TextFieldConfiguration(
              controller: tc,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "Search type of animal"),
            ),
            suggestionsCallback: getSuggestions,
            itemBuilder: (context, suggestion) => ListTile(
              title: AppText.body2(suggestion),
            ),
            onSuggestionSelected: (selectedSuggestion) => onDialogTap(
              SheetResponse(confirmed: true, data: selectedSuggestion),
            ),
          ),
        ],
      ),
    );
  }
}
