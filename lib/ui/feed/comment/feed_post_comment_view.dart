import 'package:flutter/material.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_input_field.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:stacked/stacked.dart';

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
      builder: (context, model, child) => Container(
        height: screenHeightPercentage(context, percentage: 0.75),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          color: colors.white,
        ),
        child: ListView(
          children: [
            ListTile(
              title: AppText.headingThree(
                "Comments",
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.close_rounded),
              ),
            ),
            SizedBox(
              height: screenHeightPercentage(context, percentage: 0.50),
              child: ListView.builder(
                itemCount: model.listOfComments.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundColor: colors.primary,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(
                          model.listOfComments[index].profileImgUrl),
                    ),
                  ),
                  title: AppText.body(model.listOfComments[index].username),
                  subtitle:
                      AppText.caption(model.listOfComments[index].description),
                  trailing: Icon(Icons.favorite_border),
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: colors.primary,
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(widget.myUserProfileImgUrl),
                ),
              ),
              title: AppInputField(
                controller: model.commentTC,
                hint: "Comment here",
                trailing: Icon(Icons.send, color: colors.primary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
