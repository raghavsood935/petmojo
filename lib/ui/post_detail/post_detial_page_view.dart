import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/ui/feed/feed_view.dart';
import 'package:tamely/ui/post_detail/post_detial_page_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';

class PostDetialsPageView extends StatefulWidget {
  const PostDetialsPageView({
    Key? key,
    required this.postResponse,
  }) : super(key: key);

  final FeedPostResponse postResponse;

  @override
  _PostDetialsPageViewState createState() => _PostDetialsPageViewState();
}

class _PostDetialsPageViewState extends State<PostDetialsPageView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PostDetialsPageViewModel>.reactive(
      viewModelBuilder: () => PostDetialsPageViewModel(),
      onModelReady: (model) => model.init(widget.postResponse),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: AppText.body1Bold("For you"),
          centerTitle: true,
          backgroundColor: colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: colors.black,
            ),
            onPressed: model.back,
          ),
          elevation: 2,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: model.dummyListOfFeedPost.length,
                itemBuilder: (context, index) => FeedPostItem(
                    model: model.dummyListOfFeedPost[index], viewModel: model),
                separatorBuilder: (BuildContext context, int index) => Divider(
                  indent: 0,
                  thickness: 5,
                  color: colors.kcLightGreyBackground,
                ),
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
                  onTap: model.seeMorePost,
                  child: AppText.body1Bold(
                    "See more Posts",
                    textAlign: TextAlign.center,
                    color: colors.primary,
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

class FeedPostItem extends StatefulWidget {
  FeedPostItem({Key? key, required this.model, required this.viewModel})
      : super(key: key);

  FeedPostResponse model;
  PostDetialsPageViewModel viewModel;

  bool isLiked = false;
  bool isBookmared = false;

  @override
  _FeedPostItemState createState() => _FeedPostItemState(model);
}

class _FeedPostItemState extends State<FeedPostItem> {
  int likesCount = 0;

  _FeedPostItemState(FeedPostResponse model) {
    likesCount = model.votesCounts!.first.count ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 5.0,
        bottom: 5.0,
        right: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: (widget.model.authorType == 'human' ||
                widget.model.authorType == 'User'),
            child: GestureDetector(
              onTap: () {
                if ((widget.model.userAuthor ?? []).isNotEmpty) {
                  if ((widget.model.userAuthor ?? [])[0].Id!.isNotEmpty) {
                    widget.viewModel.inspectProfile(
                        context, (widget.model.userAuthor ?? [])[0].Id!);
                  }
                }
              },
              child: Row(
                children: [
                  CustomCircularAvatar(
                    radius: 20,
                    imgPath: (widget.model.userAuthor ?? []).isEmpty
                        ? emptyProfileImgUrl
                        : widget.model.userAuthor![0].avatar ??
                            emptyProfileImgUrl,
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
                        (widget.model.userAuthor ?? []).isEmpty
                            ? "-"
                            : widget.model.userAuthor![0].username ?? "-",
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
                            GlobalMethods.utcToLocal(widget.model.date!),
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
            visible: widget.model.authorType == 'Animal' ||
                widget.model.authorType == 'animal',
            child: GestureDetector(
              onTap: () {
                if ((widget.model.animalAuthorResponse ?? []).isNotEmpty) {
                  if ((widget.model.animalAuthorResponse ?? [])[0]
                      .Id!
                      .isNotEmpty) {
                    widget.viewModel.inspectAnimalProfile(
                        context,
                        (widget.model.animalAuthorResponse ?? [])[0].Id!,
                        (widget.model.animalAuthorResponse ?? [])[0].token!);
                  }
                }
              },
              child: Row(
                children: [
                  CustomCircularAvatar(
                    radius: 20,
                    // imgPath: (widget.model. ?? []).isEmpty
                    //     ? emptyProfileImgUrl
                    //     : widget.model.userAuthor![0].avatar ??
                    //     emptyProfileImgUrl,
                    imgPath: emptyProfileImgUrl,
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
                        (widget.model.animalAuthorResponse ?? []).isEmpty
                            ? "-"
                            : widget.model.animalAuthorResponse![0].name ?? "-",
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
                            GlobalMethods.utcToLocal(widget.model.date!),
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
          //     imgPath: (widget.model.userAuthor ?? []).isEmpty
          //         ? emptyProfileImgUrl
          //         : widget.model.userAuthor![0].avatar ?? emptyProfileImgUrl,
          //   ),
          // ),
          verticalSpaceTiny,
          AppText.caption(widget.model.caption!.split("#").first),
          Wrap(
            children: widget.model.hashtags!
                .map(
                  (e) => AppText.caption(
                    "#$e",
                    color: colors.blue,
                  ),
                )
                .toList(),
          ),
          verticalSpaceSmall,
          SwiperWidget(model: widget.model),
          Row(
            children: [
              GestureDetector(
                  child: widget.isLiked
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
                      if (widget.isLiked) {
                        likesCount--;
                      } else {
                        likesCount++;
                      }
                      widget.isLiked = !widget.isLiked;
                    });
                    widget.viewModel
                        .likeOrDislikePost(widget.model.Id!, widget.isLiked);
                  }),
              // LikeBtn(
              //     initialState: widget.isLiked,
              //     onTap: () {
              //       setState(() {
              //         widget.isLiked = !widget.isLiked;
              //       });
              //       widget.viewModel
              //           .likeOrDislikePost(widget.model.Id!, widget.isLiked);
              // //     }),
              // horizontalSpaceSmall,
              // imageButton(false, () {}, assetsPath: sendOutlineImgPath),
              Visibility(
                  visible: widget.model.hashtags!.isNotEmpty,
                  child: horizontalSpaceSmall),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.isBookmared = !widget.isBookmared;
                    });
                    widget.viewModel.bookmarkAction(widget.model.Id!);
                  },
                  child: widget.isBookmared
                      ? Icon(
                          Icons.bookmark,
                          color: colors.primary,
                        )
                      : Icon(
                          Icons.bookmark_border_rounded,
                          color: colors.black,
                        )),
              // Expanded(
              //   child: Align(
              //     alignment: Alignment.centerRight,
              //     child: IconButton(
              //       onPressed: () => widget.viewModel.showMoreOptions(),
              //       icon: Icon(Icons.more_horiz),
              //     ),
              //   ),
              // ),
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
              GestureDetector(
                onTap: () =>
                    widget.viewModel.showComments(widget.model.Id ?? ""),
                child: AppText.caption(
                  "${widget.model.commentResponse!.comments!.length} comments",
                  color: colors.primary,
                ),
              ),
            ],
          ),
          verticalSpaceTiny,
          GestureDetector(
            child: Row(
              children: [
                CustomCircularAvatar(
                  radius: 17.0,
                  imgPath: widget.viewModel.myProfileImg,
                ),
                horizontalSpaceSmall,
                AppText.caption(
                  "Add a comment",
                  color: colors.kcCaptionGreyColor,
                ),
              ],
            ),
            onTap: () => widget.viewModel.showComments(widget.model.Id ?? ""),
          )
        ],
      ),
    );
  }
}

Widget imageButton(bool isNetworkImg, void onTap,
    {String assetsPath = "", String urlPath = ""}) {
  return GestureDetector(
    child: isNetworkImg
        ? Image.network(urlPath)
        : Image.asset(
            assetsPath,
          ),
    onTap: () => onTap,
  );
}
