import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kubelite/ui/profilepage/post_tabs/mentions_post_tab_view_model.dart';
import 'package:kubelite/util/Color.dart';
import 'package:stacked/stacked.dart';

class MentionsPostTabView extends StatelessWidget {
  const MentionsPostTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MentionsPostTabViewModel>.reactive(
      viewModelBuilder: () => MentionsPostTabViewModel(),
      builder: (context, model, child) => Container(
        padding: EdgeInsets.all(10),
        child: StaggeredGridView.countBuilder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: model.dummyListOfPosts.length,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
          crossAxisCount: 3,
          itemBuilder: (context, index) =>
              postItem(model.dummyListOfPosts[index], () {}),
          staggeredTileBuilder: (index) => StaggeredTile.fit(1),
        ),
      ),
    );
  }
}

Widget postItem(String url, void onTapFun()) => GestureDetector(
      child: Container(
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
