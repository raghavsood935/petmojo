import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/models/comment_added_response.dart';
import 'package:tamely/models/list_of_comments_response.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/bottom_sheet_view_models/comment_view_model.dart';

import '../app_text.dart';
import '../custom_circle_avatar.dart';

class CommentsBottomSheet extends StatefulWidget {
  final SheetRequest sheetRequest;
  final Function(SheetResponse) onDialogTap;

  const CommentsBottomSheet(
      {Key? key, required this.sheetRequest, required this.onDialogTap})
      : super(key: key);

  @override
  _CommentsBottomSheetState createState() => _CommentsBottomSheetState();
}

class _CommentsBottomSheetState extends State<CommentsBottomSheet> {
  bool isCommentEmpty = true;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CommentViewModel>.reactive(
      viewModelBuilder: () => CommentViewModel(),
      onModelReady: (model) => model.init(widget.sheetRequest.data),
      builder: (context, model, child) => WillPopScope(
        onWillPop: model.onClose,
        child: Container(
          color: colors.white,
          height: screenHeightPercentage(context, percentage: 0.80),
          width: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: AppText.subheading(
                    "Comments",
                    textAlign: TextAlign.center,
                  ),
                  trailing: Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: GestureDetector(
                      onTap: () => model.onClose(),
                      child: Image.asset(
                        crossImgPath,
                        height: 16,
                        width: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: 0,
                left: 0,
                bottom: 75,
                child: SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Column(
                    children: [
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
                              separatorBuilder: (context, index) =>
                                  spacedDividerTiny,
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
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: ColoredBox(
                  color: colors.white,
                  child: ListTile(
                    tileColor: colors.white,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    leading: CustomCircularAvatar(
                      radius: 20.0,
                      imgPath: widget.sheetRequest.customData.toString(),
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
                      onTap: () => model.postComment(context).whenComplete(() {
                        setState(() {
                          isCommentEmpty = true;
                        });
                      }),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget commentTile(CommentResponse comment) {
  return ListTile(
    contentPadding: commonPaddding,
    title: GlobalMethods.checkProfileType(comment.authorType ?? "")
        ? AppText.body1Bold(
            comment.authorDetailsResponse!.first.username ?? "-",
            isSingleLined: true,
          )
        : AppText.body1Bold(
            comment.animalAuthorDetailsResponse!.first.username ?? "-",
            isSingleLined: true,
          ),
    subtitle: AppText.caption(
      comment.message ?? "-",
      textAlign: TextAlign.start,
    ),
    leading: GlobalMethods.checkProfileType(comment.authorType ?? "")
        ? CustomCircularAvatar(
            radius: 20,
            imgPath: comment.authorDetailsResponse!.first.avatar ??
                emptyProfileImgUrl,
          )
        : CustomCircularAvatar(
            radius: 20,
            imgPath: comment.animalAuthorDetailsResponse!.first.avatar ??
                emptyProfileImgUrl,
          ),
  );
}
