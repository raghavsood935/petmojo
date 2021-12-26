import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/list_of_relations.dart';
import 'package:tamely/ui/profilepage/animal_profile/guardians_and_relations/realated_animals/realted_animals_view_model.dart';
import 'package:tamely/ui/profilepage/animal_profile/guardians_and_relations/realated_animals/relations_tile.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/search_text_field.dart';

class RelatedAnimalsView extends StatefulWidget {
  RelatedAnimalsView({Key? key, required this.petID, required this.petToken})
      : super(key: key);

  String petID;
  String petToken;

  @override
  _RelatedAnimalsViewState createState() => _RelatedAnimalsViewState();
}

class _RelatedAnimalsViewState extends State<RelatedAnimalsView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RelatedAnimalsViewModel>.reactive(
      viewModelBuilder: () => RelatedAnimalsViewModel(),
      onModelReady: (model) => model.init(widget.petID, widget.petToken),
      // builder: (context, model, child) =>
      //     AppText.body1Bold("Under development", color: colors.primary),
      builder: (context, model, child) => SingleChildScrollView(
        child: Column(
          children: [
            SearchTextField(
              controller: model.searchTC,
              hint: "Search for profiles,keywords etc.",
              onChange: (value) => model.onSearchChange(value, false),
            ),
            model.listOfResult.isEmpty
                ? Visibility(
                    visible: model.searchTC.text.isNotEmpty,
                    child: Visibility(
                      visible: !model.isLoading,
                      child: Center(
                        child: AppText.body1Bold(
                          "No result found",
                          color: colors.primary,
                        ),
                      ),
                    ),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: model.listOfResult.length,
                    itemBuilder: (context, index) => RelationsTile(
                      profileModel: model.listOfResult[index],
                      viewModel: model,
                    ),
                  ),
            Visibility(visible: model.isLoading, child: verticalSpaceRegular),
            Visibility(
              visible: model.isLoading,
              child: Center(
                child: CircularProgressIndicator(
                  color: colors.primary,
                ),
              ),
            ),
            Visibility(visible: model.isLoading, child: verticalSpaceRegular),
            Visibility(
              visible: model.searchTC.text.isNotEmpty,
              child: Visibility(
                visible: model.listOfResult.isNotEmpty,
                child: Visibility(
                  visible: !model.isEndOfList,
                  child: Visibility(
                    visible: !model.isLoading,
                    child: GestureDetector(
                      onTap: () =>
                          model.onSearchChange(model.searchTC.text, true),
                      child: AppText.body1Bold(
                        "See more profiles",
                        color: colors.primary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Visibility(visible: model.isLoading, child: verticalSpaceSmall),
            Visibility(
                visible: model.searchTC.text.isEmpty &&
                    model.listOfResult.isNotEmpty,
                child: spacedDividerBigTiny),
            Visibility(
                visible: model.searchTC.text.isEmpty,
                child: Padding(
                    padding: commonPaddding,
                    child: AppText.body1Bold("Guardians"))),
            Visibility(
              visible: model.searchTC.text.isEmpty,
              child: ListView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: model.listOfRelations.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => model.inspectProfile(
                      context, model.listOfRelations[index].animal!.Id ?? ""),
                  child: relationListTile(model.listOfRelations[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget relationListTile(RelationsResponse model) {
  return ListTile(
    title: AppText.body(
      model.animal!.name ?? "-",
      color: colors.black,
    ),
    subtitle: AppText.caption(model.animal!.username ?? "-"),
    trailing: AppText.body1Bold(
      model.relation ?? "-",
      color: colors.primary,
    ),
    leading: CustomCircularAvatar(
      radius: 24,
      imgPath: model.animal!.avatar ?? emptyProfileImgUrl,
    ),
  );
}
