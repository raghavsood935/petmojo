import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/styles.dart';

import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

import 'bookmarks_viewmodel.dart';

class BookmarksView extends StatelessWidget {
  BookmarksView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BookmarksViewModel>.reactive(
      viewModelBuilder: () => BookmarksViewModel(),
      onModelReady: (model) => model.onInit(),
      builder: (context, model, child) => Scaffold(
        appBar: commonAppBar(context, "Bookmarks"),
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        //   // centerTitle: true,
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Icon(
        //         Icons.bookmark,
        //         size: 30,
        //         color: colors.primary,
        //       ),
        //       Text(
        //         "Bookmarks",
        //         style: subheadingStyle.copyWith(color: colors.primary),
        //       )
        //     ],
        //   ),
        //   leading: IconButton(
        //     padding: const EdgeInsets.all(0),
        //     icon: Icon(
        //       Icons.arrow_back,
        //       color: colors.black,
        //     ),
        //     onPressed: () => Navigator.pop(context),
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(top: 10),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Icon(
              //         Icons.bookmark,
              //         size: 30,
              //         color: colors.primary,
              //       ),
              //       Text(
              //         "Bookmarks",
              //         style: subheadingStyle.copyWith(color: colors.primary),
              //       )
              //     ],
              //   ),
              // ),
              // Divider(
              //   height: 20,
              //   thickness: 3,
              //   indent: 20,
              //   endIndent: 20,
              //   color: colors.primary,
              // ),
              Container(
                padding: EdgeInsets.all(10),
                child: model.listOfBookmark.length == 0
                    ? Center(
                        child: AppText.body1Bold(
                          "No Bookmarks",
                          color: colors.primary,
                        ),
                      )
                    // ? CircleAvatar(
                    //     backgroundColor: colors.black,
                    //     radius: 30,
                    //     child: CircleAvatar(
                    //       radius: 29,
                    //       backgroundColor: Colors.white,
                    //       child: CircleAvatar(
                    //         backgroundColor: colors.lightBackgroundColor,
                    //         radius: 26,
                    //         child: Icon(Icons.add),
                    //       ),
                    //     ),
                    //   )
                    : StaggeredGridView.countBuilder(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: model.listOfBookmark.length,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6,
                        crossAxisCount: 3,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () => model
                              .goToPostDetailsView(model.listOfBookmark[index]),
                          child: postItem(
                            context,
                            index,
                            model.listOfBookmark[index].thumbnail ??
                                emptyProfileImgUrl,
                          ),
                        ),
                        staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget postItem(BuildContext context, int index, String url) => Container(
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
}

double getPostItemHeight(BuildContext context, int index) {
  if (index == 0) {
    return (thirdScreenWidth(context) - 24.0);
  } else if ((index - 1) % 4 == 0) {
    return ((thirdScreenWidth(context) * 1.5) - 30.0);
  } else {
    return (thirdScreenWidth(context) - 24.0);
  }
}
