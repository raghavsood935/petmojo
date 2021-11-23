import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/profilepage/post_tabs/my_posts_tab_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class MyPostsTabView extends StatelessWidget {
  const MyPostsTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyPostsTabViewModel>.reactive(
      viewModelBuilder: () => MyPostsTabViewModel(),
      builder: (context, model, child) => Container(
        padding: EdgeInsets.all(10),
        child:  model.dummyListOfPosts.length==0?  CircleAvatar(
          backgroundColor: colors.black,
          radius: 30,
          child: CircleAvatar(
            radius: 29,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: colors.lightBackgroundColor,
              radius: 26,
              child: Icon(Icons.add),
            ),
          ),
        )  :StaggeredGridView.countBuilder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: model.dummyListOfPosts.length,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
          crossAxisCount: 3,
          itemBuilder: (context, index) =>
              postItem(context, index, model.dummyListOfPosts[index], () {}),
          staggeredTileBuilder: (index) => StaggeredTile.fit(1),
        ),
      ),
    );
  }

  Widget postItem(
          BuildContext context, int index, String url, void onTapFun()) =>
      GestureDetector(
        child: Container(
          height: getPostItemHeight(context, index),
          margin: EdgeInsets.all(3),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              url,
              fit: BoxFit.cover,
            ),
          ),
        ),
        onTap: onTapFun,
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
