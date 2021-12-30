import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/hashtag_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/widgets/app_text.dart';

import 'hashtags_search_tab_view_model.dart';

class HashtagsSearchTabView extends StatefulWidget {
  const HashtagsSearchTabView({Key? key}) : super(key: key);

  @override
  _HashtagsSearchTabViewState createState() => _HashtagsSearchTabViewState();
}

class _HashtagsSearchTabViewState extends State<HashtagsSearchTabView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HashtagsSearchTabViewModel>.reactive(
        viewModelBuilder: () => HashtagsSearchTabViewModel(),
        builder: (context, model, child) => Center(
              child: AppText.body1Bold(
                "Under development",
                color: colors.primary,
              ),
            )
        // builder: (context, model, child) => ListView(
        //   padding: EdgeInsets.all(8),
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: AppText.body1("Result for Hashtag"),
        //     ),
        //     ListView.builder(
        //       shrinkWrap: true,
        //       physics: ScrollPhysics(),
        //       itemCount: model.listOfHashTag.length,
        //       itemBuilder: (context, index) => listItem(
        //         index,
        //         model,
        //       ),
        //     )
        //   ],
        // ),
        );
  }
}

Widget listItem(int index, HashtagsSearchTabViewModel viewModel) {
  HashTagModel model = viewModel.listOfHashTag[index];
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
    title: AppText.body1(model.tag),
    subtitle: AppText.caption("used in ${model.usedCount} posts"),
    trailing: GestureDetector(
      child: Image.asset(
        crossImgPath,
        height: 12,
        width: 12,
      ),
      onTap: () => viewModel.removeHashTagFromList(index),
    ),
  );
}
