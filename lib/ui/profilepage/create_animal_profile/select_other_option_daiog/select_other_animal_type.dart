import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/Constant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class SelectOtherAnimalType extends StatefulWidget {
  SelectOtherAnimalType({Key? key, required this.searchTC}) : super(key: key);

  TextEditingController searchTC;

  @override
  _SelectOtherAnimalTypeState createState() => _SelectOtherAnimalTypeState();
}

class _SelectOtherAnimalTypeState extends State<SelectOtherAnimalType> {
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                controller: widget.searchTC,
                onChanged: (value) {
                  setState(() {
                    isValid = false;
                  });
                },
                onSubmitted: (value) {
                  setState(() {
                    isValid = false;
                  });
                },
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
              onSuggestionSelected: (selectedSuggestion) {
                widget.searchTC.text = selectedSuggestion;
                setState(() {
                  isValid = true;
                });
              }),
        ],
      ),
      bottomSheet: Container(
        width: double.maxFinite,
        margin: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            if (isValid) {
              Navigator.pop(context);
              Navigator.pop(context);
            }
          },
          child: AppText.body2("SAVE", color: colors.white),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                isValid ? colors.primary : colors.kcMediumGreyColor),
            padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: colors.white,
    );
  }
}

List<String> getSuggestions(String query) {
  return List.of(otherAnimalTypesList).where((item) {
    final itemLower = item.toLowerCase();
    final queryLower = query.toLowerCase();

    return itemLower.contains(queryLower);
  }).toList();
}
