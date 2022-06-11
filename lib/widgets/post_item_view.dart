import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/bottom_sheet_view_models/post_item_view_model.dart';

import 'app_text.dart';
import 'custom_circle_avatar.dart';

class PostItemView extends StatefulWidget {
  PostItemView({
    Key? key,
    required this.postResponse,
    required this.needToShowComments,
  }) : super(key: key);

  FeedPostResponse postResponse;

  bool needToShowComments;

  @override
  _PostItemViewState createState() => _PostItemViewState(postResponse);
}

class _PostItemViewState extends State<PostItemView> {
  int likesCount = 0;
  bool isLiked = false;
  bool isBookmarked = false;

  _PostItemViewState(FeedPostResponse model) {
    if (model.votesCounts != null) {
      if (model.votesCounts!.length >= 1) {
        likesCount = model.votesCounts!.first.count ?? 0;
      } else {
        likesCount = 0;
      }
    } else {
      likesCount = 0;
    }

    isLiked = model.isLiked ?? false;
    isBookmarked = model.isBookmarked ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PostItemViewModel>.reactive(
      viewModelBuilder: () => PostItemViewModel(),
      onModelReady: (model) => model.init(widget.postResponse),
      builder: (context, model, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: commonPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible: (widget.postResponse.authorType == 'human' ||
                      widget.postResponse.authorType == 'User'),
                  child: GestureDetector(
                    onTap: () {
                      if ((widget.postResponse.userAuthor ?? []).isNotEmpty) {
                        if ((widget.postResponse.userAuthor ?? [])[0]
                            .Id!
                            .isNotEmpty) {
                          model.inspectProfile(context,
                              (widget.postResponse.userAuthor ?? [])[0].Id!);
                        }
                      }
                    },
                    child: Row(
                      children: [
                        CustomCircularAvatar(
                          radius: 20,
                          imgPath: (widget.postResponse.userAuthor ?? [])
                                  .isEmpty
                              ? ""
                              : widget.postResponse.userAuthor![0].avatar ?? "",
                          isHuman: GlobalMethods.checkProfileType(
                              (widget.postResponse.userAuthor ?? []).isEmpty
                                  ? ""
                                  : widget.postResponse.userAuthor![0].type ??
                                      ""),
                        ),
                        horizontalSpaceSmall,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // model.postOwnerDetails!.postOwnerType == "Animal"
                            //     ? Row(
                            //         children: [
                            //           AppText.body1Bold(
                            //             "${model.author!.first.username} > ",
                            //           ),
                            //           // AppText.caption(model.),
                            //         ],
                            //       ),
                            AppText.body1Bold(
                              (widget.postResponse.userAuthor ?? []).isEmpty
                                  ? "-"
                                  : widget.postResponse.userAuthor![0]
                                          .username ??
                                      "-",
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // AppText.caption(
                                //   model.location,
                                //   color: colors.kcCaptionGreyColor,
                                // ),
                                // horizontalSpaceTiny,
                                // CircleAvatar(
                                //   backgroundColor: colors.primary,
                                //   radius: 2,
                                // ),
                                // horizontalSpaceTiny,
                                AppText.caption(
                                  GlobalMethods.utcToLocal(
                                      widget.postResponse.date!),
                                  color: colors.kcCaptionGreyColor,
                                ),
                                // horizontalSpaceTiny,
                                // Visibility(
                                //   visible: model.isAnimalPost,
                                //   child: CircleAvatar(
                                //     backgroundColor: colors.primary,
                                //     radius: 2,
                                //   ),
                                // ),
                                // horizontalSpaceTiny,
                                // Visibility(
                                //   visible: model.isAnimalPost,
                                //   child: Icon(
                                //     model.isPrivate ? Icons.lock : Icons.campaign_sharp,
                                //     size: 10,
                                //     color: colors.kcCaptionGreyColor,
                                //   ),
                                // ),
                                // horizontalSpaceTiny,
                                // Visibility(
                                //   visible: model.isAnimalPost,
                                //   child: AppText.caption(
                                //     model.isPrivate ? "Private" : "Public",
                                //     color: colors.kcCaptionGreyColor,
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: widget.postResponse.authorType == 'Animal' ||
                      widget.postResponse.authorType == 'animal',
                  child: GestureDetector(
                    onTap: () {
                      if ((widget.postResponse.animalAuthorResponse ?? [])
                          .isNotEmpty) {
                        if ((widget.postResponse.animalAuthorResponse ?? [])[0]
                            .Id!
                            .isNotEmpty) {
                          model.inspectAnimalProfile(
                            context,
                            (widget.postResponse.animalAuthorResponse ?? [])[0]
                                .Id!,
                            (widget.postResponse.animalAuthorResponse ?? [])[0]
                                .token!,
                          );
                        }
                      }
                    },
                    child: Row(
                      children: [
                        CustomCircularAvatar(
                          radius: 20,
                          // imgPath: (widget.postResponse. ?? []).isEmpty
                          //     ? emptyProfileImgUrl
                          //     : widget.postResponse.userAuthor![0].avatar ??
                          //     emptyProfileImgUrl,
                          imgPath:
                              (widget.postResponse.animalAuthorResponse ?? [])
                                      .isEmpty
                                  ? ""
                                  : widget.postResponse.animalAuthorResponse![0]
                                          .avatar ??
                                      "-",
                          isHuman: false,
                        ),
                        horizontalSpaceSmall,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // model.postOwnerDetails!.postOwnerType == "Animal"
                            //     ? Row(
                            //         children: [
                            //           AppText.body1Bold(
                            //             "${model.author!.first.username} > ",
                            //           ),
                            //           // AppText.caption(model.),
                            //         ],
                            //       ),
                            AppText.body1Bold(
                              (widget.postResponse.animalAuthorResponse ?? [])
                                      .isEmpty
                                  ? "-"
                                  : widget.postResponse.animalAuthorResponse![0]
                                          .name ??
                                      "-",
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // AppText.caption(
                                //   model.location,
                                //   color: colors.kcCaptionGreyColor,
                                // ),
                                // horizontalSpaceTiny,
                                // CircleAvatar(
                                //   backgroundColor: colors.primary,
                                //   radius: 2,
                                // ),
                                // horizontalSpaceTiny,
                                AppText.caption(
                                  GlobalMethods.utcToLocal(
                                      widget.postResponse.date!),
                                  color: colors.kcCaptionGreyColor,
                                ),
                                // horizontalSpaceTiny,
                                // Visibility(
                                //   visible: model.isAnimalPost,
                                //   child: CircleAvatar(
                                //     backgroundColor: colors.primary,
                                //     radius: 2,
                                //   ),
                                // ),
                                // horizontalSpaceTiny,
                                // Visibility(
                                //   visible: model.isAnimalPost,
                                //   child: Icon(
                                //     model.isPrivate ? Icons.lock : Icons.campaign_sharp,
                                //     size: 10,
                                //     color: colors.kcCaptionGreyColor,
                                //   ),
                                // ),
                                // horizontalSpaceTiny,
                                // Visibility(
                                //   visible: model.isAnimalPost,
                                //   child: AppText.caption(
                                //     model.isPrivate ? "Private" : "Public",
                                //     color: colors.kcCaptionGreyColor,
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // ListTile(
                //   leading: CustomCircularAvatar(
                //     radius: 20,
                //     imgPath: (widget.postResponse.userAuthor ?? []).isEmpty
                //         ? emptyProfileImgUrl
                //         : widget.postResponse.userAuthor![0].avatar ?? emptyProfileImgUrl,
                //   ),
                // ),
                verticalSpaceTiny,
                Visibility(
                  visible: (widget.postResponse.caption ?? "").isNotEmpty,
                  child: AppText.caption(
                    widget.postResponse.caption!.split("#").first,
                    textAlign: TextAlign.start,
                  ),
                ),
                Visibility(
                  visible: (widget.postResponse.hashtags ?? []).isNotEmpty,
                  child: Wrap(
                    children: widget.postResponse.hashtags!
                        .map(
                          (e) => AppText.caption(
                            "#$e",
                            color: colors.blue,
                            textAlign: TextAlign.start,
                          ),
                        )
                        .toList(),
                  ),
                ),
                verticalSpaceSmall,
              ],
            ),
          ),
          GestureDetector(
            onTap: () => model.imageTapped(
                context, widget.postResponse.image ?? emptyProfileImgUrl),
            child: SwiperWidget(model: widget.postResponse),
          ),
          verticalSpaceTiny,
          Padding(
            padding: commonPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                        child: isLiked
                            ? Image.asset(
                                likesImgPath,
                                height: 30,
                                width: 30,
                              )
                            : Image.asset(
                                likeOutlineImgPath,
                                height: 30,
                                width: 30,
                              ),
                        onTap: () {
                          setState(() {
                            if (isLiked) {
                              likesCount--;
                            } else {
                              likesCount++;
                            }
                            isLiked = !isLiked;
                          });
                          model.likeOrDislikePost(isLiked);
                        }),
                    // LikeBtn(
                    //     initialState: widget.isLiked,
                    //     onTap: () {
                    //       setState(() {
                    //         widget.isLiked = !widget.isLiked;
                    //       });
                    //       model
                    //           .likeOrDislikePost(widget.postResponse.Id!, widget.isLiked);
                    // //     }),
                    // horizontalSpaceSmall,
                    // imageButton(false, () {}, assetsPath: sendOutlineImgPath),
                    horizontalSpaceSmall,
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            isBookmarked = !isBookmarked;
                          });
                          model.bookmarkAction();
                        },
                        child: isBookmarked
                            ? Icon(
                                Icons.bookmark,
                                color: colors.primary,
                              )
                            : Icon(
                                Icons.bookmark_border_rounded,
                                color: colors.black,
                              )),
                    Expanded(
                      child: Visibility(
                        visible: model.isOurPost,
                        child: Visibility(
                          visible: !widget.needToShowComments,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () => model.showMoreOptions(),
                              icon: Icon(Icons.more_vert),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // AppText.caption(
                //     "Loved by ${model.postVotes.toString().replaceAll("[", "replace").replaceAll("]", "")}"),
                verticalSpaceTiny,
                Row(
                  children: [
                    AppText.caption(
                      "$likesCount likes",
                      color: colors.primary,
                    ),
                    horizontalSpaceSmall,
                    Visibility(
                      visible: widget.needToShowComments,
                      child: GestureDetector(
                        onTap: () =>
                            model.showComments(widget.postResponse.Id ?? ""),
                        child: AppText.caption(
                          "${model.commentsCounts} comments",
                          color: colors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpaceTiny,
                Visibility(
                  visible: widget.needToShowComments,
                  child: GestureDetector(
                    child: Row(
                      children: [
                        CustomCircularAvatar(
                          radius: 17.0,
                          imgPath: model.myProfileImg,
                          isHuman: model.isHuman,
                        ),
                        horizontalSpaceSmall,
                        AppText.caption(
                          "Add a comment",
                          color: colors.kcCaptionGreyColor,
                        ),
                      ],
                    ),
                    onTap: () =>
                        model.showComments(widget.postResponse.Id ?? ""),
                  ),
                ),
              ],
            ),
          ),
          // verticalSpaceSmall,
        ],
      ),
    );
  }
}

class SwiperWidget extends StatefulWidget {
  SwiperWidget({Key? key, required this.model}) : super(key: key);

  final FeedPostResponse model;

  @override
  _SwiperWidgetState createState() => _SwiperWidgetState();
}

class _SwiperWidgetState extends State<SwiperWidget> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenWidth(context),
      width: screenWidth(context),
      child: Stack(
        children: [
          Positioned(
            child: Swiper(
              autoplay: false,
              loop: false,
              itemCount: [widget.model.image].length,
              itemBuilder: (context, index) => Image.network(
                widget.model.image!,
                height: screenWidth(context),
                width: screenWidth(context),
                fit: BoxFit.cover,
              ),
              onIndexChanged: (int i) {
                setState(() => _currentIndex = i + 1);
              },
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Visibility(
              visible: [widget.model.image].length > 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF87000000),
                ),
                child: AppText.caption(
                  "$_currentIndex/${[widget.model.image].length}",
                  color: colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
