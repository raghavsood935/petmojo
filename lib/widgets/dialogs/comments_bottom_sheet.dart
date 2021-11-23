import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
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
      builder: (context, model, child) => Container(
        color: colors.white,
        height: screenHeightPercentage(context, percentage: 0.80),
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              top: 10,
              right: 0,
              left: 0,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      child: AppText.subheading(
                    "Comments",
                    textAlign: TextAlign.center,
                  )),
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
            ),
            Positioned(
              top: 50,
              right: 0,
              left: 0,
              child: SizedBox(
                height: screenHeightPercentage(context, percentage: 0.70),
                child: ListView.builder(
                  itemCount: model.listOfComments.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) => ListTile(
                    tileColor: colors.white,
                    leading: CustomCircularAvatar(
                      radius: 20.0,
                      imgPath: model.listOfComments[index].profileImgUrl,
                    ),
                    title: AppText.body(model.listOfComments[index].username),
                    subtitle: AppText.caption(
                        model.listOfComments[index].description),
                    trailing: Icon(Icons.favorite_border),
                  ),
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
    );
  }
}
