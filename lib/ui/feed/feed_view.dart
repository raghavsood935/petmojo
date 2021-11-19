import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/feed_post_model.dart';
import 'package:tamely/ui/feed/feed_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/util/utils.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';

class FeedView extends StatelessWidget {
  final BuildContext menuScreenContext;
  final Function onScreenHideButtonPressed;
  final bool hideStatus;
  const FeedView(
      {Key? key,
      required this.menuScreenContext,
      required this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FeedViewModel>.reactive(
      viewModelBuilder: () => FeedViewModel(),
      builder: (context, model, child) => Scaffold(
        body: ListView(
          physics: ScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 0, right: 0, top: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    horizontalSpaceRegular,
                    rowItem(
                      true,
                      myTales,
                      model.myProfileImg,
                    ),
                    horizontalSpaceRegular,
                    SizedBox(
                      height: 85,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: model.dummyListOfTales.length,
                        itemBuilder: (context, index) => rowItem(
                          false,
                          model.dummyListOfTales[index].name,
                          model.dummyListOfTales[index].url,
                        ),
                        separatorBuilder: (BuildContext context, int index) =>
                            horizontalSpaceSmall,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            spacedDividerTiny,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                children: [
                  CustomCircularAvatar(
                    radius: 20.0,
                    imgPath: model.myProfileImg,
                  ),
                  horizontalSpaceRegular,
                  AppText.caption(
                    createPost,
                    textAlign: TextAlign.center,
                    color: colors.kcCaptionGreyColor,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: model.createPost,
                    child: Row(
                      children: [
                        Util.getImageChild(imageIcon, 16, 16),
                        horizontalSpaceTiny,
                        AppText.caption(
                          photoVideo,
                          color: colors.primary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            spacedDividerTiny,
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: model.dummyListOfFeedPost.length,
              itemBuilder: (context, index) => postItem(context,
                  model.dummyListOfFeedPost[index], model.myProfileImg, model),
              separatorBuilder: (BuildContext context, int index) => Divider(
                indent: 0,
                thickness: 5,
                color: colors.kcLightGreyBackground,
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget rowItem(bool isCreateOne, String name, String url) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 50,
        width: 50,
        child: Stack(
          children: [
            Positioned(
              child: CustomCircularAvatar(
                radius: 25.0,
                imgPath: url,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Visibility(
                visible: isCreateOne,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: colors.primary,
                  child: Icon(
                    Icons.add,
                    color: colors.white,
                    size: 14,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 5,
              child: Visibility(
                visible: !isCreateOne,
                child: Transform.rotate(
                  angle: 320,
                  child: Image.asset(
                    animalFootPrintImgPath,
                    height: 15,
                    width: 15,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 0,
              child: Visibility(
                visible: !isCreateOne,
                child: Transform.rotate(
                  angle: 250,
                  child: Image.asset(
                    animalFootPrintImgPath,
                    height: 15,
                    width: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      verticalSpaceTiny,
      AppText.caption(
        name,
        isSingleLined: true,
      )
    ],
  );
}

Widget postItem(BuildContext context, FeedPostModel model,
    String myProfileImgUrl, FeedViewModel viewModel) {
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
        Row(
          children: [
            CustomCircularAvatar(
              radius: 18.0,
              imgPath: model.profileImgUrl,
            ),
            horizontalSpaceSmall,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                model.isAnimalPost
                    ? Row(
                        children: [
                          AppText.body1Bold(
                            "${model.animalProfileName} > ",
                          ),
                          AppText.caption(model.username),
                        ],
                      )
                    : AppText.body1Bold(model.username),
                Row(
                  children: [
                    AppText.caption(
                      model.location,
                      color: colors.kcCaptionGreyColor,
                    ),
                    horizontalSpaceTiny,
                    CircleAvatar(
                      backgroundColor: colors.primary,
                      radius: 2,
                    ),
                    horizontalSpaceTiny,
                    AppText.caption(
                      model.uploadTime,
                      color: colors.kcCaptionGreyColor,
                    ),
                    horizontalSpaceTiny,
                    Visibility(
                      visible: model.isAnimalPost,
                      child: CircleAvatar(
                        backgroundColor: colors.primary,
                        radius: 2,
                      ),
                    ),
                    horizontalSpaceTiny,
                    Visibility(
                      visible: model.isAnimalPost,
                      child: Icon(
                        model.isPrivate ? Icons.lock : Icons.campaign_sharp,
                        size: 10,
                        color: colors.kcCaptionGreyColor,
                      ),
                    ),
                    horizontalSpaceTiny,
                    Visibility(
                      visible: model.isAnimalPost,
                      child: AppText.caption(
                        model.isPrivate ? "Private" : "Public",
                        color: colors.kcCaptionGreyColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        verticalSpaceTiny,
        // ListTile(
        //   contentPadding: EdgeInsets.zero,
        //   leading: CustomCircularAvatar(
        //     radius: 19.0,
        //     imgPath: model.profileImgUrl,
        //   ),
        //   title: model.isAnimalPost
        //       ? Row(
        //           children: [
        //             AppText.body1Bold(
        //               "${model.animalProfileName} > ",
        //             ),
        //             AppText.caption(model.username),
        //           ],
        //         )
        //       : AppText.body1Bold(model.username),
        //   subtitle: Row(
        //     children: [
        //       AppText.caption(
        //         model.location,
        //         color: colors.kcCaptionGreyColor,
        //       ),
        //       horizontalSpaceTiny,
        //       CircleAvatar(
        //         backgroundColor: colors.primary,
        //         radius: 2,
        //       ),
        //       horizontalSpaceTiny,
        //       AppText.caption(
        //         model.uploadTime,
        //         color: colors.kcCaptionGreyColor,
        //       ),
        //       horizontalSpaceTiny,
        //       Visibility(
        //         visible: model.isAnimalPost,
        //         child: CircleAvatar(
        //           backgroundColor: colors.primary,
        //           radius: 2,
        //         ),
        //       ),
        //       horizontalSpaceTiny,
        //       Visibility(
        //         visible: model.isAnimalPost,
        //         child: Icon(
        //           model.isPrivate ? Icons.lock : Icons.campaign_sharp,
        //           size: 10,
        //           color: colors.kcCaptionGreyColor,
        //         ),
        //       ),
        //       horizontalSpaceTiny,
        //       Visibility(
        //         visible: model.isAnimalPost,
        //         child: AppText.caption(
        //           model.isPrivate ? "Private" : "Public",
        //           color: colors.kcCaptionGreyColor,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        AppText.caption(model.description),
        AppText.caption(
          model.hastTag,
          color: colors.blue,
        ),
        verticalSpaceSmall,
        SwiperWidget(model: model),
        Row(
          children: [
            LikeBtn(initialState: model.isLiked, onTap: () {}),
            horizontalSpaceSmall,
            imageButton(false, () {}, assetsPath: sendOutlineImgPath),
            horizontalSpaceSmall,
            imageButton(false, () {}, assetsPath: bookmarkImgPath),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () => viewModel.showMoreOptions(),
                  icon: Icon(Icons.more_horiz),
                ),
              ),
            ),
          ],
        ),
        AppText.caption("Loved by ${model.lastLikedPersonName}"),
        verticalSpaceTiny,
        AppText.caption(
          "${model.noOfComments} comments",
          color: colors.primary,
        ),
        verticalSpaceTiny,
        GestureDetector(
          child: Row(
            children: [
              CustomCircularAvatar(
                radius: 17.0,
                imgPath: myProfileImgUrl,
              ),
              horizontalSpaceSmall,
              AppText.caption(
                "Add a comment",
                color: colors.kcCaptionGreyColor,
              ),
            ],
          ),
          onTap: () => viewModel.showComments(),
        )
      ],
    ),
  );
}

Widget roundedImage(BuildContext context, String url) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.network(
      url,
      fit: BoxFit.cover,
    ),
  );
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

class LikeBtn extends StatefulWidget {
  LikeBtn({Key? key, required bool initialState, required Function onTap})
      : super(key: key);

  bool initialState = false;

  Function onTap = () {};

  @override
  _LikeBtnState createState() => _LikeBtnState();
}

class _LikeBtnState extends State<LikeBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: widget.initialState
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
            widget.initialState = !widget.initialState;
          });
          widget.onTap;
        });
  }
}

class SwiperWidget extends StatefulWidget {
  SwiperWidget({Key? key, required this.model}) : super(key: key);

  final FeedPostModel model;

  @override
  _SwiperWidgetState createState() => _SwiperWidgetState();
}

class _SwiperWidgetState extends State<SwiperWidget> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenWidthPercentage(context, percentage: 0.90),
      width: screenWidthPercentage(context, percentage: 0.90),
      child: Stack(
        children: [
          Positioned(
            child: Swiper(
              autoplay: false,
              itemCount: widget.model.postImgsList.length,
              itemBuilder: (context, index) =>
                  roundedImage(context, widget.model.postImgsList[index]),
              onIndexChanged: (int i) {
                setState(() => _currentIndex = i + 1);
              },
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF87000000),
              ),
              child: AppText.caption(
                "$_currentIndex/${widget.model.postImgsList.length}",
                color: colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
