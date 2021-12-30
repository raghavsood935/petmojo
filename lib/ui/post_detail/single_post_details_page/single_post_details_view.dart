import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/bottom_sheet_view_models/comment_view_model.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/dialogs/comments_bottom_sheet.dart';
import 'package:tamely/widgets/post_item_view.dart';

class SinglePostDetailsView extends StatefulWidget {
  SinglePostDetailsView({Key? key, required this.postResponse})
      : super(key: key);

  FeedPostResponse postResponse;

  @override
  _SinglePostDetailsViewState createState() => _SinglePostDetailsViewState();
}

class _SinglePostDetailsViewState extends State<SinglePostDetailsView> {
  bool isCommentEmpty = true;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CommentViewModel>.reactive(
      viewModelBuilder: () => CommentViewModel(),
      onModelReady: (model) => model.init(
        widget.postResponse.Id ?? "",
        previousCC: (widget.postResponse.commentResponse != null)
            ? widget.postResponse.commentResponse!.commentCount ?? 0
            : 0,
      ),
      builder: (context, model, child) => Scaffold(
        appBar: commonAppBar(context, "Post Details"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                PostItemView(
                  postResponse: widget.postResponse,
                  needToShowComments: false,
                ),
                // spacedDividerTiny,
                ListTile(
                  // tileColor: colors.white,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  leading: CustomCircularAvatar(
                    radius: 20.0,
                    imgPath: model.profileImgUrl,
                  ),
                  title: Container(
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
                      onChanged: (value) {
                        if (value.isEmpty) {
                          setState(() {
                            isCommentEmpty = true;
                          });
                        } else {
                          setState(() {
                            isCommentEmpty = false;
                          });
                        }
                      },
                    ),
                  ),
                  trailing: GestureDetector(
                    child: model.isCommentPostingLoading
                        ? CircularProgressIndicator(
                            color: colors.primary,
                          )
                        : Icon(
                            Icons.send_rounded,
                            color: isCommentEmpty
                                ? colors.kcMediumGreyColor
                                : colors.primary,
                            size: 30,
                          ),
                    onTap: () => model
                        .postComment(context)
                        .whenComplete(() => setState(() {
                              isCommentEmpty = true;
                            })),
                  ),
                ),
                Padding(
                  padding: commonPaddding,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: AppText.caption(
                      "${model.commentsCount} comments",
                      color: colors.primary,
                    ),
                  ),
                ),
                verticalSpaceSmall,
                model.listOfComments.length == 0
                    ? Visibility(
                        visible: !model.isLoading,
                        child: AppText.body1Bold(
                          "No one commented yet",
                          textAlign: TextAlign.center,
                          color: colors.primary,
                        ),
                      )
                    : ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: model.listOfComments.length,
                        itemBuilder: (context, index) =>
                            commentTile(model.listOfComments[index]),
                        separatorBuilder: (context, index) => spacedDividerTiny,
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
                      onTap: () => model.fetchComment(true),
                      child: AppText.body1Bold(
                        "See more Comments",
                        textAlign: TextAlign.center,
                        color: colors.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
