import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/group_response/group_basic_info_response.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/blogs_item.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/follow_btn.dart';
import 'package:tamely/widgets/follow_static_btn.dart';

import 'community_main_view_model.dart';

class CommunityMainView extends StatelessWidget {
  const CommunityMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CommunityMainViewModel>.reactive(
      viewModelBuilder: () => CommunityMainViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => WillPopScope(
        onWillPop: ()=>model.onBackPressed(),
        child: Scaffold(
          body: RefreshIndicator(
            onRefresh: () async {
              await model.init();
            },
            child: ListView(
              children: [
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
                //   child: Row(
                //     children: [
                //       Icon(Icons.location_on_outlined),
                //       AppText.caption(model.location),
                //     ],
                //   ),
                // ),
                // spacedDividerTiny,
                verticalSpaceSmall,
                GestureDetector(
                  child: joinTamelyGroupWidget(),
                  onTap: model.goToGroupsView,
                ),
                verticalSpaceSmall,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: AppText.body1("Social center"),
                ),
                verticalSpaceTiny,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => GestureDetector(
                            child: socialCenterItem(
                                context, model.listOfSocialCenterModel[index]),
                            onTap: () => model.onTapMethodForSocialCenter(index),
                          ),
                      itemCount: model.listOfSocialCenterModel.length),
                ),

                // Blogs tile
                // spacedDividerBigTiny,
                // ListTile(
                //   leading: Image.asset(blogImgPath),
                //   title: AppText.body1(
                //     blogTitle,
                //     color: colors.black,
                //   ),
                //   subtitle: AppText.caption(blogDescription),
                //   trailing: Icon(Icons.arrow_forward_ios_rounded),
                //   onTap: model.goToBlogs,
                // ),
                // spacedDividerBigTiny,
                GestureDetector(
                  onTap: model.goToTrendingGroups,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                    child: AppText.body1("Trending Groups"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: SizedBox(
                    height: 140,
                    child: model.isAllGroupLoading
                        ? Center(
                            child: CircularProgressIndicator(
                              color: colors.primary,
                            ),
                          )
                        : SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: ScrollPhysics(),
                            child: Row(
                              children: [
                                ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: model.listOfAllGroups.length,
                                  itemBuilder: (context, index) =>
                                      TrendingGroupTile(
                                    model: model.listOfAllGroups[index],
                                    viewModel: model,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: model.goToTrendingGroups,
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: AppText.body1Bold(
                                      "See More\nGroups",
                                      textAlign: TextAlign.center,
                                      color: colors.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                //   child: AppText.body1("Play buddies near me"),
                // ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 15.0),
                //   child: SizedBox(
                //     height: 140,
                //     child: ListView.builder(
                //       shrinkWrap: true,
                //       scrollDirection: Axis.horizontal,
                //       itemCount: model.listOfPlayBuddiesNearMeModel.length,
                //       itemBuilder: (context, index) => playBuddiesNearMeItem(
                //           model.listOfPlayBuddiesNearMeModel[index]),
                //     ),
                //   ),
                // ),
                spacedDividerBigTiny,
                GestureDetector(
                  onTap: model.goToBlogs,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                    child: AppText.body1("Newly Published Blogs"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: SizedBox(
                    height: 250,
                    child: model.isBlogsLoading
                        ? Center(
                            child: CircularProgressIndicator(
                              color: colors.primary,
                            ),
                          )
                        : SingleChildScrollView(
                            physics: ScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: model.listOfBlogs.length,
                                  separatorBuilder: (context, index) =>
                                      horizontalSpaceSmall,
                                  itemBuilder: (context, index) => BlogItem(
                                    blog: model.listOfBlogs[index],
                                    isDetailView: false,
                                    isFromCommunity: true,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: model.goToBlogs,
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: AppText.body1Bold(
                                      "See More\nBlogs",
                                      textAlign: TextAlign.center,
                                      color: colors.primary,
                                    ),
                                  ),
                                ),
                              ],
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

Widget socialCenterItem(
    BuildContext context, SocialCenterModel socialCenterModel) {
  return Container(
    margin: EdgeInsets.all(6.0),
    width: screenWidthPercentage(context, percentage: 0.30),
    padding: EdgeInsets.all(6.0),
    decoration: borderBoxOutline,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset(socialCenterModel.imgPath),
        verticalSpaceSmall,
        AppText.caption(
          socialCenterModel.title,
          color: colors.black,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

class TrendingGroupTile extends StatefulWidget {
  TrendingGroupTile({
    Key? key,
    required this.model,
    required this.viewModel,
  }) : super(key: key);

  GroupBasicInfoResponse model;
  CommunityMainViewModel viewModel;

  @override
  _TrendingGroupTileState createState() => _TrendingGroupTileState(model);
}

class _TrendingGroupTileState extends State<TrendingGroupTile> {
  bool isJoined = false;
  int members = 0;

  _TrendingGroupTileState(GroupBasicInfoResponse model) {
    isJoined = model.isMember ?? false;
    members = model.members ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.viewModel.inspectGroup(widget.model.Id ?? ""),
      child: Container(
        width: 125,
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(6),
        decoration: borderBoxOutline,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  widget.model.avatar ?? emptyProfileImgUrl,
                  height: 45,
                  width: 45,
                  fit: BoxFit.cover,
                  errorBuilder: errorBuilder,
                ),
              ),
              verticalSpaceTiny,
              AppText.caption(
                widget.model.name ?? "-",
                color: colors.black,
              ),
              verticalSpaceTiny,
              AppText.caption("$members members"),
              verticalSpaceTiny,
              GestureDetector(
                onTap: () {
                  if (!isJoined) {
                    setState(() {
                      isJoined = !isJoined;
                      members++;
                    });
                    widget.viewModel.joinGroup(widget.model.Id ?? "");
                  }
                },
                child: isJoined
                    ? FollowingStaticBtn(
                        trueValue: "Joined",
                        falseValue: "  Join    ",
                        state: true)
                    : FollowingStaticBtn(
                        trueValue: "Joined",
                        falseValue: "  Join    ",
                        state: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget playBuddiesNearMeItem(PlayBuddiesNearMeModel model) {
  return Container(
    width: 125,
    margin: EdgeInsets.only(right: 10),
    padding: EdgeInsets.all(6),
    decoration: borderBoxOutline,
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomCircularAvatar(
            radius: 25,
            imgPath: model.profileImgUrl,
            isHuman: true,
          ),
          verticalSpaceTiny,
          AppText.caption(
            model.name,
            color: colors.black,
          ),
          verticalSpaceTiny,
          AppText.caption(model.description),
          verticalSpaceTiny,
          GestureDetector(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: colors.primary),
                color: colors.primary,
              ),
              child: AppText.caption(
                "Message",
                color: colors.white,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}

Widget blogItem(BlogsModel blogsModel) {
  return Container(
    width: 280,
    margin: EdgeInsets.only(right: 10),
    padding: EdgeInsets.all(6),
    child: Column(
      children: [
        ClipRRect(
          child: Image.network(
            blogsModel.coverImgUrl,
            fit: BoxFit.cover,
            height: 150,
            width: 260,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        verticalSpaceTiny,
        AppText.body1(blogsModel.title),
        verticalSpaceTiny,
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText.body1("by ${blogsModel.author}"),
            AppText.caption(
              blogsModel.uploadedDate,
              color: colors.kcLightGreyColor,
            ),
          ],
        )
      ],
    ),
  );
}

Widget joinTamelyGroupWidget() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    decoration: BoxDecoration(
      color: colors.mediumBackgroundColor,
      borderRadius: BorderRadius.circular(25),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.body(tamelyGrp),
              AppText.caption(
                tamelyGrpDescription,
                // isSingleLined: true,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Image.asset(
            groupOfPeoplesImgPath,
            height: 75,
            width: 75,
          ),
        ),
        Expanded(
          flex: 1,
          child: CircleAvatar(
            child: Icon(
              Icons.arrow_forward_rounded,
              color: colors.white,
            ),
            backgroundColor: colors.primary,
          ),
        ),
      ],
    ),
  );
}

Widget errorBuilder(BuildContext ct, Object o, StackTrace? s) {
  return Image.network(
    emptyProfileImgUrl,
    height: 45,
    width: 45,
    fit: BoxFit.cover,
  );
}
