import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';

import 'feed_post_comment_view_model.dart';

class FeedPostCommentView extends StatefulWidget {
  FeedPostCommentView({Key? key, required this.myUserProfileImgUrl})
      : super(key: key);

  String myUserProfileImgUrl;

  @override
  _FeedPostCommentViewState createState() => _FeedPostCommentViewState();
}

class _FeedPostCommentViewState extends State<FeedPostCommentView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FeedPostCommentViewModel>.reactive(
      viewModelBuilder: () => FeedPostCommentViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: colors.white,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          title: AppText.subheading("Comments"),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: GestureDetector(
                onTap: () => model.onClose(context),
                child: Image.asset(
                  crossImgPath,
                  height: 12,
                  width: 12,
                ),
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: model.listOfComments.length,
          // shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) => ListTile(
            tileColor: colors.white,
            leading: CustomCircularAvatar(
              radius: 20.0,
              imgPath: model.listOfComments[index].profileImgUrl,
            ),
            title: AppText.body(model.listOfComments[index].username),
            subtitle: AppText.caption(model.listOfComments[index].description),
            trailing: Icon(Icons.favorite_border),
          ),
        ),
        bottomSheet: ListTile(
          tileColor: colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          leading: CustomCircularAvatar(
            radius: 20.0,
            imgPath: widget.myUserProfileImgUrl,
          ),
          title: Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: colors.kcVeryLightGreyColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Comment here",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                ),
                controller: model.commentTC,
                maxLines: null,
              ),
            ),
          ),
          trailing: GestureDetector(
            child: Image.asset(sendImgPath),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
