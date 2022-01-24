import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/get_blogs_model.dart';
import 'package:tamely/ui/community/community_main_view/community_main_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/bottom_sheet_view_models/blog_item_view_model.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';

import 'app_text.dart';

class BlogItem extends StatefulWidget {
  BlogItem(
      {Key? key,
      required this.blog,
      required this.isDetailView,
      this.isFromCommunity})
      : super(key: key);

  blogDetails blog;
  bool isDetailView;
  bool? isFromCommunity;

  @override
  _BlogItemState createState() => _BlogItemState();
}

class _BlogItemState extends State<BlogItem> {
  // bool isLiked = false;
  // int likesCount = 0;
  //
  // _BlogItemState(blogDetails blog) {
  //   likesCount = blog.likes ?? 0;
  //   isLiked = blog.isLiked ?? false;
  // }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BlogItemViewModel>.reactive(
      viewModelBuilder: () => BlogItemViewModel(),
      onModelReady: (model) => model.init(widget.blog),
      builder: (context, model, child) => GestureDetector(
        onTap: () =>
            widget.isDetailView ? null : model.goToBlogDetails(widget.blog),
        child: Container(
          width: (widget.isFromCommunity ?? false) ? 250 : screenWidth(context),
          child: Padding(
            padding: widget.isDetailView
                ? EdgeInsets.zero
                : (widget.isFromCommunity ?? false)
                    ? EdgeInsets.zero
                    : commonPaddding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(widget.isDetailView ? 0 : 10),
                  child: Image.network(
                    widget.blog.thumbnail ?? emptyProfileImgUrl,
                    fit: BoxFit.cover,
                    height: widget.isDetailView ? 200 : 150,
                    width: double.maxFinite,
                    errorBuilder: (c, o, t) =>
                        errorBuilder(c, o, t, widget.isDetailView ? 200 : 150),
                  ),
                ),
                verticalSpaceSmall,
                Padding(
                  padding:
                      widget.isDetailView ? commonPaddding : EdgeInsets.zero,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Visibility(
                        visible: widget.isDetailView,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          height: 2,
                          decoration: BoxDecoration(
                            color: colors.black,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      widget.isDetailView
                          ? AppText.subheading(widget.blog.title ?? "-")
                          : AppText.body1(widget.blog.title ?? "-"),
                      verticalSpaceSmall,
                      widget.isDetailView
                          ? Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: colors.white,
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(
                                        color: colors.black, width: 2),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: Image.asset(
                                      logo,
                                      height: 25,
                                      width: 25,
                                    ),
                                  ),
                                ),
                                horizontalSpaceSmall,
                                AppText.body("Tamely"),
                                Spacer(),
                                GestureDetector(
                                    child: model.isLiked
                                        ? Icon(
                                            Icons.favorite,
                                            color: colors.primary,
                                            size: 18,
                                          )
                                        : Icon(
                                            Icons.favorite_border,
                                            size: 18,
                                          ),
                                    onTap: () {
                                      setState(() {});
                                      model.likedBlog(widget.blog.sId ?? "");
                                    }),
                                AppText.body1Bold("  ${model.likesCount}"),
                                AppText.body1(" hearts"),
                              ],
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                    child: model.isLiked
                                        ? Icon(
                                            Icons.favorite,
                                            color: colors.primary,
                                            size: 18,
                                          )
                                        : Icon(
                                            Icons.favorite_border,
                                            size: 18,
                                          ),
                                    onTap: () {
                                      setState(() {
                                        // if (model.isLiked) {
                                        //   model.likesCount--;
                                        // } else {
                                        //   model.likesCount++;
                                        // }
                                        // model.isLiked = !model.isLiked;
                                      });
                                      model.likedBlog(widget.blog.sId ?? "");
                                    }),
                                AppText.body1Bold("  ${model.likesCount}"),
                                AppText.body1(" hearts"),
                                Spacer(),
                                AppText.caption(
                                  GlobalMethods.utcToLocal(
                                      widget.blog.date ?? ""),
                                )
                              ],
                            ),
                      Visibility(
                        visible: widget.isDetailView,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  (widget.blog.text ?? "").isEmpty ? 0 : 10),
                          child: AppText.body(
                            widget.blog.text ?? "",
                            color: colors.kcMediumGreyColor,
                          ),
                        ),
                      ),
                    ],
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

Widget errorBuilder(BuildContext ct, Object o, StackTrace? s, double height) {
  return Image.network(
    emptyProfileImgUrl,
    height: height,
    width: double.maxFinite,
    fit: BoxFit.cover,
  );
}
