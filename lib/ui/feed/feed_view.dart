import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kubelite/models/feed_post_model.dart';
import 'package:kubelite/ui/feed/comment/feed_post_comment_view.dart';
import 'package:kubelite/ui/feed/feed_view_model.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_input_field.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    rowItem(
                      true,
                      "My tales",
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
            spacedDividerSmall,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: colors.primary,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(model.myProfileImg),
                    ),
                  ),
                  Expanded(
                    child: AppInputField(
                        controller: model.postTC,
                        hint: "Create a awesome post"),
                  ),
                  Icon(Icons.photo, color: colors.primary),
                  GestureDetector(
                    child: AppText.caption(
                      "Photo/Video",
                      color: colors.primary,
                    ),
                  ),
                ],
              ),
              // ListTile(
              //   contentPadding: EdgeInsets.zero,
              //   leading: CircleAvatar(
              //     radius: 28,
              //     backgroundColor: colors.primary,
              //     child: CircleAvatar(
              //       radius: 25,
              //       backgroundImage: NetworkImage(model.myProfileImg),
              //     ),
              //   ),
              //   title: AppInputField(
              //       controller: model.postTC, hint: "Create a pawsome post"),
              //   trailing: GestureDetector(
              //     child: AppText.caption(
              //       "Photo/Video",
              //       color: colors.primary,
              //     ),
              //     // Flexible(
              //     //   child: Row(
              //     //     children: [
              //     //       Icon(
              //     //         Icons.photo,
              //     //         color: colors.primary,
              //     //       ),
              //     //       AppText.caption(
              //     //         "Photo/Video",
              //     //         color: colors.primary,
              //     //       ),
              //     //     ],
              //     //   ),
              //     // ),
              //     onTap: () {},
              //   ),
              // ),
            ),
            spacedDividerSmall,
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: model.dummyListOfFeedPost.length,
              itemBuilder: (context, index) => postItem(
                context,
                model.dummyListOfFeedPost[index],
                model.myProfileImg,
              ),
              separatorBuilder: (BuildContext context, int index) => Divider(
                // height: 20,
                indent: 0,
                thickness: 5,
                color: colors.kcGreyBackground,
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
        height: 60,
        width: 60,
        child: Stack(
          children: [
            Positioned(
              child: CircleAvatar(
                backgroundColor: colors.primary,
                radius: 30,
                child: CircleAvatar(
                  backgroundColor: colors.white,
                  radius: 28,
                  child: CircleAvatar(
                    backgroundColor: colors.lightBackgroundColor,
                    radius: 26,
                    backgroundImage: NetworkImage(url),
                  ),
                ),
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
                  child: Image.asset(animalFootPrintImgPath),
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
                  child: Image.asset(animalFootPrintImgPath),
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

Widget postItem(
    BuildContext context, FeedPostModel model, String myProfileImgUrl) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: colors.primary,
            child: CircleAvatar(
              radius: 23,
              backgroundImage: NetworkImage(model.isAnimalPost
                  ? model.animalProfileImgUrl
                  : model.profileImgUrl),
            ),
          ),
          title: model.isAnimalPost
              ? Row(
                  children: [
                    AppText.body2(
                      "${model.animalProfileName} > ",
                    ),
                    AppText.caption(model.username),
                  ],
                )
              : AppText.body2(model.username),
          subtitle: Row(
            children: [
              AppText.caption(model.location),
              horizontalSpaceTiny,
              CircleAvatar(
                backgroundColor: colors.primary,
                radius: 2,
              ),
              horizontalSpaceTiny,
              AppText.caption(model.uploadTime),
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
                ),
              ),
              horizontalSpaceTiny,
              Visibility(
                visible: model.isAnimalPost,
                child: AppText.caption(model.isPrivate ? "Private" : "Public"),
              ),
            ],
          ),
        ),
        verticalSpaceTiny,
        AppText.caption(model.description),
        verticalSpaceTiny,
        SwiperWidget(model: model),
        verticalSpaceTiny,
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Row(
            children: [
              LikeBtn(initialState: model.isLiked, onTap: () {}),
              horizontalSpaceSmall,
              imageButton(false, () {}, assetsPath: sendImgPath),
              horizontalSpaceSmall,
              imageButton(false, () {}, assetsPath: bookmarkImgPath),
            ],
          ),
          trailing: IconButton(
            onPressed: () => showModalBottomSheet(
              enableDrag: true,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              context: context,
              builder: (context) => buildSheet(isMore: true),
            ),
            icon: Icon(Icons.more_horiz),
          ),
        ),
        AppText.body1(model.lastLikedPersonName),
        AppText.body1("${model.noOfComments} comments", color: colors.primary),
        GestureDetector(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: colors.primary,
              child: CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(myProfileImgUrl),
              ),
            ),
            title: AppText.caption("Add a comment"),
          ),
          onTap: () => showModalBottomSheet(
            enableDrag: false,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            context: context,
            builder: (context) =>
                buildSheet(profileImgUrl: myProfileImgUrl, isComment: true),
          ),
        )
      ],
    ),
  );
}

Widget roundedImage(BuildContext context, String url) {
  return ClipRRect(
    // height: screenWidth(context),
    // width: screenWidth(context),

    borderRadius: BorderRadius.circular(20),

    child: Image.network(
      url,
      fit: BoxFit.cover,
    ),
  );
}

Widget buildSheet(
    {bool isMore = false, bool isComment = false, String profileImgUrl = ""}) {
  return DraggableScrollableSheet(
      initialChildSize: isComment ? 0.85 : 0.50,
      maxChildSize: 0.85,
      expand: true,
      builder: (context, controller) {
        if (isComment) {
          return FeedPostCommentView(
            myUserProfileImgUrl: profileImgUrl,
          );
        } else if (isMore) {
          return Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              color: colors.white,
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: AppText.body2("Share post to"),
                ),
                ListTile(
                  title: AppText.body2("Hide this post"),
                ),
                ListTile(
                  title: AppText.body2("Unfollow"),
                ),
                ListTile(
                  title: AppText.body2("Report abuse"),
                ),
              ],
            ),
          );
        } else {
          return SizedBox();
        }
      });
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

  FeedPostModel model;
  int _currentIndex = 1;

  @override
  _SwiperWidgetState createState() => _SwiperWidgetState();
}

class _SwiperWidgetState extends State<SwiperWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenWidth(context),
      width: screenWidth(context),
      child: Stack(
        children: [
          Positioned(
            child: Swiper(
              autoplay: true,
              itemCount: widget.model.postImgsList.length,
              itemBuilder: (context, index) =>
                  roundedImage(context, widget.model.postImgsList[index]),
              onIndexChanged: (int i) {
                setState(() => widget._currentIndex = i + 1);
              },
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colors.kcMediumGreyColor,
              ),
              child: AppText.caption(
                "${widget._currentIndex}/${widget.model.postImgsList.length}",
                color: colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
