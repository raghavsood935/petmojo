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
                top: 10,
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
                child: SizedBox(
                    height: screenHeightPercentage(context, percentage: 0.70),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Column(
                          children: [
                            ListView.separated(
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
                          ],
                        ),
                      ),
                    )),
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
                      ),
                    ),
                    trailing: GestureDetector(
                      child: model.isCommentPostingLoading
                          ? CircularProgressIndicator(
                              color: colors.primary,
                            )
                          : Image.asset(sendImgPath),
                      onTap: () => model.postComment(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // child: Scaffold(
          //   appBar: AppBar(
          //     backgroundColor: colors.white,
          //     elevation: 0.0,
          //     automaticallyImplyLeading: false,
          //     title: AppText.subheading("Comments"),
          //     centerTitle: true,
          //     actions: <Widget>[
          //       Padding(
          //         padding: const EdgeInsets.only(right: 15.0),
          //         child: GestureDetector(
          //           onTap: () => model.onClose(context),
          //           child: Image.asset(
          //             crossImgPath,
          //             height: 12,
          //             width: 12,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          //   body: ListView.builder(
          //     itemCount: model.listOfComments.length,
          //     // shrinkWrap: true,
          //     physics: ScrollPhysics(),
          //     itemBuilder: (BuildContext context, int index) => ListTile(
          //       tileColor: colors.white,
          //       leading: CustomCircularAvatar(
          //         radius: 20.0,
          //         imgPath: model.listOfComments[index].profileImgUrl,
          //       ),
          //       title: AppText.body(model.listOfComments[index].username),
          //       subtitle:
          //           AppText.caption(model.listOfComments[index].description),
          //       trailing: Icon(Icons.favorite_border),
          //     ),
          //   ),
          //   bottomSheet: ListTile(
          //     tileColor: colors.white,
          //     contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          //     leading: CustomCircularAvatar(
          //       radius: 20.0,
          //       imgPath: widget.sheetRequest.customData.toString(),
          //     ),
          //     title: Expanded(
          //       child: Container(
          //         decoration: BoxDecoration(
          //           color: colors.kcVeryLightGreyColor,
          //           borderRadius: BorderRadius.circular(30.0),
          //         ),
          //         child: TextField(
          //           decoration: InputDecoration(
          //             hintText: "Comment here",
          //             border: InputBorder.none,
          //             focusedBorder: InputBorder.none,
          //             enabledBorder: InputBorder.none,
          //             errorBorder: InputBorder.none,
          //             disabledBorder: InputBorder.none,
          //             contentPadding: EdgeInsets.symmetric(
          //               vertical: 10,
          //               horizontal: 15,
          //             ),
          //           ),
          //           controller: model.commentTC,
          //           maxLines: null,
          //         ),
          //       ),
          //     ),
          //     trailing: GestureDetector(
          //       child: Image.asset(sendImgPath),
          //       onTap: () {},
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}

Widget commentTile(CommentResponse comment) {
  return ListTile(
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
