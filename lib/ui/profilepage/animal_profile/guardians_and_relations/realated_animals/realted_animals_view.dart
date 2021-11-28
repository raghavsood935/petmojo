import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/profile_account_model.dart';
import 'package:tamely/models/user_details_model.dart';
import 'package:tamely/ui/profilepage/animal_profile/guardians_and_relations/realated_animals/realted_animals_view_model.dart';
import 'package:tamely/ui/profilepage/animal_profile/guardians_and_relations/realated_animals/relations_tile.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/search_text_field.dart';

class RelatedAnimalsView extends StatefulWidget {
  const RelatedAnimalsView({Key? key}) : super(key: key);

  @override
  _RelatedAnimalsViewState createState() => _RelatedAnimalsViewState();
}

class _RelatedAnimalsViewState extends State<RelatedAnimalsView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RelatedAnimalsViewModel>.reactive(
        viewModelBuilder: () => RelatedAnimalsViewModel(),
        onModelReady: (model) => model.dummyStart(),
        builder: (context, model, child) => Column(children: [
              SearchTextField(
                controller: model.searchTC,
                hint: "Search for guardians",
                onChange: model.searchOnChange,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: model.listOfRelations.length,
                  itemBuilder: (context, index) => RelationsTile(
                    profileModel: model.listOfRelations[index],
                  ),
                ),
              ),
            ]));
  }
}
