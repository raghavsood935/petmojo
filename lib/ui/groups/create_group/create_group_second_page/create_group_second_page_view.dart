import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/create_group/create_group_second_page/create_group_second_page_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_input_field.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/with_title_item.dart';

import '../create_group_view.dart';

class CreateGroupSecondView extends StatefulWidget {
  CreateGroupSecondView(
      {Key? key,
      required this.groupId,
      required this.isFromEditView,
      required this.description,
      required this.hashtag})
      : super(key: key);

  String groupId;
  bool isFromEditView;

  String description;
  List<String> hashtag;

  @override
  _CreateGroupSecondViewState createState() => _CreateGroupSecondViewState();
}

class _CreateGroupSecondViewState extends State<CreateGroupSecondView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateGroupSecondViewModel>.reactive(
      viewModelBuilder: () => CreateGroupSecondViewModel(),
      onModelReady: (model) => model.init(
        widget.groupId,
        widget.description,
        widget.hashtag,
      ),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            CreateGroupView(
              currentIndex: 1,
              onSkipPressed: () => model.goToNextPage(widget.isFromEditView),
              isFromEdit: widget.isFromEditView,
            ),
            Padding(
              padding: commonPaddding,
              child: Column(
                children: [
                  WithTitleItem(
                    title: 'Add description',
                    isManitory: false,
                    child: TextField(
                      controller: model.descriptioinTC,
                      decoration: InputDecoration(
                        hintText: "Enter a description for the group",
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: colors.kcLightGreyColor),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: colors.kcLightGreyColor),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: colors.kcLightGreyColor),
                        ),
                      ),
                      onChanged: (value) => model.onTFChanged(),
                    ),
                  ),
                  verticalSpaceRegular,
                  WithTitleItem(
                    title: 'Add hashtags',
                    isManitory: false,
                    child: TextField(
                      controller: model.hashtagTC,
                      decoration: InputDecoration(
                        hintText: "Add 3 or more hashtags to get more reach",
                        suffix: model.hashtagTC.text.isNotEmpty
                            ? GestureDetector(
                                onTap: model.addHashTag,
                                child: AppText.body1Bold(
                                  "ADD",
                                  color: colors.primary,
                                ),
                              )
                            : SizedBox(),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: colors.kcLightGreyColor),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: colors.kcLightGreyColor),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: colors.kcLightGreyColor),
                        ),
                      ),
                      onChanged: (value) => model.onTFChanged(),
                    ),
                  ),
                  verticalSpaceSmall,
                  Wrap(
                    children: model.listOfHashtags
                        .map((e) => Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Chip(
                              label: AppText.caption(e),
                              onDeleted: () => model.deleteHashTag(e),
                            )))
                        .toList(),
                  ),
                ],
              ),
            )
          ]),
        ),
        bottomSheet: Visibility(
          visible: model.isValid,
          child: GestureDetector(
            child: Container(
              width: double.maxFinite,
              height: 60,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: colors.primary,
              ),
              child: (model.isDescriptionLoading || model.isHashtagsLoading)
                  ? Center(
                      child: CircularProgressIndicator(
                        color: colors.white,
                      ),
                    )
                  : AppText.subheading(
                      "CONTINUE",
                      textAlign: TextAlign.center,
                      color: Colors.white,
                    ),
            ),
            onTap: () => model
                .onContinuePressed()
                .whenComplete(() => model.goToNextPage(widget.isFromEditView)),
          ),
        ),
      ),
    );
  }
}
