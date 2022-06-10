import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/get_blogs_model.dart';
import 'package:tamely/ui/exploreblogs/explore_blogs_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/blogs_item.dart';
import 'package:tamely/widgets/bottom_sheet_view_models/blog_item_view_model.dart';

import 'blog_detail_view_model.dart';

class BlogDetailsPageView extends StatefulWidget {
  BlogDetailsPageView({Key? key, required this.blog}) : super(key: key);

  blogDetails blog;

  @override
  State<BlogDetailsPageView> createState() => _BlogDetailsPageViewState();
}

class _BlogDetailsPageViewState extends State<BlogDetailsPageView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BlogDetailViewModel>.reactive(
      viewModelBuilder: () => BlogDetailViewModel(),
      onModelReady: (model) => model.init(widget.blog),
      builder: (context, model, child) => WillPopScope(
        onWillPop: () => model.onDetailsPageBack(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: colors.black,
              ),
              onPressed: () => model.onDetailsPageBack(),
            ),
          ),
          body: SafeArea(
            child: model.isLoading
                ? Center(
                    child: CircularProgressIndicator(
                      color: colors.primary,
                    ),
                  )
                : SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Container(
                      width: screenWidth(context),
                      child: Padding(
                        padding: EdgeInsets.zero,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              model.blog!.thumbnail ?? emptyProfileImgUrl,
                              fit: BoxFit.cover,
                              height: 200,
                              width: double.maxFinite,
                              errorBuilder: (ct, o, s) =>
                                  errorBuilder(ct, o, s, 200),
                            ),
                            verticalSpaceSmall,
                            Padding(
                              padding: commonPadding,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    height: 2,
                                    decoration: BoxDecoration(
                                      color: colors.black,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  AppText.subheading(model.blog!.title ?? "-"),
                                  verticalSpaceSmall,
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: colors.white,
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          border: Border.all(
                                              color: colors.black, width: 2),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          child: Image.asset(
                                            logo,
                                            height: 25,
                                            width: 25,
                                          ),
                                        ),
                                      ),
                                      horizontalSpaceSmall,
                                      AppText.body("Petmojo"),
                                      Spacer(),
                                      GestureDetector(
                                          child: model.isLiked
                                              ? Icon(
                                                  Icons.favorite,
                                                  color: colors.primary,
                                                  size: 30,
                                                )
                                              : Icon(
                                                  Icons.favorite_border,
                                                  size: 30,
                                                ),
                                          onTap: () {
                                            setState(() {});
                                            model.likedBlog(
                                                model.blog!.sId ?? "");
                                          }),
                                      AppText.titleBold(
                                          "  ${model.likesCount}"),
                                      AppText.title(" hearts"),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical:
                                            (model.blog!.text ?? "").isEmpty
                                                ? 0
                                                : 10),
                                    // child: AppText.body(
                                    //   "${model.blog!.text ?? " "}",
                                    //   color: colors.kcMediumGreyColor,
                                    // ),
                                    child: AppText.body(
                                      // "${(model.blog!.text ?? "").replaceAll("^", "\n").replaceAll("^", "\n").replaceAll("^", "\n").replaceAll("^", "\n").replaceAll("^", "\n").replaceAll("^", "\n")}",
                                      "${(model.blog!.text ?? "").replaceAll("^", "\n")}",
                                      color: colors.kcMediumGreyColor,
                                    ),
                                    // child: ListView.builder(
                                    //   physics: ScrollPhysics(),
                                    //   shrinkWrap: true,
                                    //   itemCount: model.descriptions.length,
                                    //   itemBuilder: (context, index) =>
                                    //       AppText.body(
                                    //     "${model.descriptions[index].replaceAll("^", "\n").replaceAll("^", "\n")}",
                                    //     color: colors.kcMediumGreyColor,
                                    //   ),
                                    // )
                                    //   child :Wrap(
                                    //   children: model.descriptions
                                    //       .map(
                                    //         (e) => AppText.body(
                                    //           "$e \n\n",
                                    //           color: colors.kcMediumGreyColor,
                                    //         ),
                                    //       )
                                    //       .toList(),
                                    // ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
            // child: SingleChildScrollView(
            //   physics: ScrollPhysics(),
            //   child: Column(
            //     children: [
            //       BlogItem(
            //         blog: blog,
            //         isDetailView: true,
            //       ),
            //       spacedDividerSmall,
            //       Padding(
            //         padding: commonPaddding,
            //         child: Align(
            //           alignment: Alignment.centerLeft,
            //           child: AppText.titleBold("Next on the pipeline"),
            //         ),
            //       ),
            //       verticalSpaceSmall,
            //       model.isLoading
            //           ? Center(
            //               child: CircularProgressIndicator(
            //                 color: colors.primary,
            //               ),
            //             )
            //           : model.listOfBlogs.isEmpty
            //               ? Center(
            //                   child: AppText.body1Bold(
            //                     "No Blogs found!",
            //                     color: colors.primary,
            //                   ),
            //                 )
            //               : ListView.separated(
            //                   physics: ScrollPhysics(),
            //                   shrinkWrap: true,
            //                   itemCount: model.listOfBlogs.length,
            //                   itemBuilder: (context, index) => BlogItem(
            //                     blog: model.listOfBlogs[index],
            //                     isDetailView: true,
            //                   ),
            //                   separatorBuilder: (context, index) =>
            //                       spacedDividerSmall,
            //                 ),
            //     ],
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
