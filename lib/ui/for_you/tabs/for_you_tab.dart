import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/for_you/tabs/for_you_tab_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class ForYouTab extends StatefulWidget {
  const ForYouTab({Key? key}) : super(key: key);

  @override
  _ForYouTabState createState() => _ForYouTabState();
}

class _ForYouTabState extends State<ForYouTab> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForYouTabViewModel>.reactive(
      viewModelBuilder: () => ForYouTabViewModel(),
      onModelReady: (model) {
        model.getPosts(false);
        controller.addListener(() {
          if (controller.position.pixels ==
              controller.position.maxScrollExtent) {
            model.getPosts(true);
          }
        });
      },
      builder: (context, model, child) => RefreshIndicator(
        onRefresh: () async {
          await model.getPosts(false);
        },
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: colors.kcGreyBackground),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search_rounded),
                      horizontalSpaceSmall,
                      AppText.caption("Search for profiles, keywords etc.")
                    ],
                  ),
                ),
                onTap: model.goToSearchView,
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: SizedBox(
            //     height: 125,
            //     child: ListView.separated(
            //       scrollDirection: Axis.horizontal,
            //       shrinkWrap: true,
            //       itemCount: model.vidoes.length,
            //       itemBuilder: (context, index) => rowPost(model.vidoes[index]),
            //       separatorBuilder: (BuildContext context, int index) =>
            //           horizontalSpaceSmall,
            //     ),
            //   ),
            // ),
            // spacedDividerSmall,
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  StaggeredGridView.countBuilder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: model.dummyListOfPosts.length,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6,
                    crossAxisCount: 3,
                    controller: controller,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () =>
                          model.postDetailsPage(model.dummyListOfPosts[index]),
                      child: postItem(context, index,
                          model.dummyListOfPosts[index].thumbnail ?? ""),
                    ),
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  ),
                  verticalSpaceRegular,
                  Visibility(
                    visible: model.isLoading,
                    child: Align(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(
                        color: colors.primary,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: !model.isEndOfList,
                    child: Visibility(
                      visible: !model.isLoading,
                      child: GestureDetector(
                        onTap: ()=>model.getPosts(true),
                        child: AppText.body1Bold(
                          "See more Posts",
                          textAlign: TextAlign.center,
                          color: colors.primary,
                        ),
                      ),
                    ),
                  ),
                  verticalSpaceRegular,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // controller.addListener(() {
    //   if (controller.position.pixels == controller.position.maxScrollExtent) {
    //     getPosts();
    //   }
    // });
  }
}

Widget rowPost(String vido) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.network(
      vido,
      width: 75,
      fit: BoxFit.cover,
    ),
  );
}

Widget postItem(
  BuildContext context,
  int index,
  String url,
) =>
    Container(
      height: getPostItemHeight(context, index),
      margin: EdgeInsets.all(3),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ),
      ),
    );

double getPostItemHeight(BuildContext context, int index) {
  if (index == 0) {
    return (thirdScreenWidth(context) - 24.0);
  } else if ((index - 1) % 4 == 0) {
    return ((thirdScreenWidth(context) * 1.5) - 30.0);
  } else {
    return (thirdScreenWidth(context) - 24.0);
  }
}
