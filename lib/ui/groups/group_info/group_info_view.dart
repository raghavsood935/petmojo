import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/groups/group_info/group_info_view_model.dart';
import 'package:tamely/ui/profilepage/animal_profile/animal_profile_view.dart';
import 'package:tamely/ui/profilepage/profile_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/util/utils.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/post_item_view.dart';

class GroupInfoView extends StatelessWidget {
  GroupInfoView({Key? key, required this.groupId}) : super(key: key);

  String groupId;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GroupInfoViewModel>.reactive(
      viewModelBuilder: () => GroupInfoViewModel(),
      onModelReady: (model) => model.init(groupId, false),
      builder: (context, model, child) => RefreshIndicator(
        onRefresh: () async {
          await model.init(groupId, true);
        },
        child: Scaffold(
          body: model.isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: colors.primary,
                  ),
                )
              : SafeArea(
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppBar(
                          backgroundColor: colors.white,
                          leading: IconButton(
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: colors.black,
                            ),
                            onPressed: model.back,
                          ),
                          title: AppText.titleBold(tamelyGrp),
                          actions: [
                            Visibility(
                              visible: model.isAdmin,
                              child: GestureDetector(
                                child: Container(
                                  height: 50,
                                  margin: EdgeInsets.only(
                                    right: 20,
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: colors.primary,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: AppText.body1(
                                    "Manage",
                                    color: colors.white,
                                  ),
                                ),
                                onTap: model.onManageTapped,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: double.maxFinite,
                          height: 225,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                right: 0,
                                left: 0,
                                child: GestureDetector(
                                  onTap: () => model.imageTapped(
                                      context, model.coverImgurl),
                                  child: Image.network(
                                    model.coverImgurl,
                                    fit: BoxFit.cover,
                                    height: 180,
                                    errorBuilder: errorBuilder,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                bottom: 0,
                                child: GestureDetector(
                                  onTap: () => model.imageTapped(
                                      context, model.groupAvatar),
                                  child: CustomCircularAvatar(
                                    radius: 45,
                                    imgPath: model.groupAvatar,
                                    isHuman: true,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 20,
                                child: Visibility(
                                  visible: model.isMember,
                                  child: GestureDetector(
                                    onTap: model.onInviteTapped,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 15),
                                      decoration: BoxDecoration(
                                        color: colors.mediumBackgroundColor,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: AppText.caption(
                                        "+ Invite",
                                        color: colors.primary,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: model.isAdmin,
                                child: Positioned(
                                  top: 10,
                                  right: 20,
                                  child: GestureDetector(
                                    onTap: () => model.onImageButtonPressed(
                                        ImageSource.gallery, context),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: colors.black.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      padding: EdgeInsets.all(5),
                                      child: AppText.body1Bold(
                                        "Change",
                                        color: colors.primary,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Visibility(
                              //   visible: !model.isAdmin,
                              //   child: Positioned(
                              //     top: 10,
                              //     left: 10,
                              //     child: IconButton(
                              //       icon: Icon(
                              //         Icons.arrow_back_rounded,
                              //         color: colors.black,
                              //       ),
                              //       onPressed: model.back,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: commonPadding,
                          child: SingleChildScrollView(
                            physics: ScrollPhysics(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText.subheading(model.groupName),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    GestureDetector(
                                      onTap: model.gotToMember,
                                      child: AppText.body1Bold(
                                          "${model.membersCount} members  ",
                                          color: colors.primary),
                                    ),
                                    CircleAvatar(
                                      radius: 2,
                                      backgroundColor: colors.primary,
                                    ),
                                    AppText.caption(
                                        "  ${model.isPrivate ? "Private" : "Public"} group"),
                                  ],
                                ),
                                Visibility(
                                  visible: model.groupDescription.isNotEmpty,
                                  child: AppText.caption(
                                    model.groupDescription,
                                    color: colors.black,
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Visibility(
                                  visible: !model.isMember,
                                  child: GestureDetector(
                                    child: Container(
                                      width: double.maxFinite,
                                      // height: 40,
                                      padding: EdgeInsets.all(15),
                                      margin:
                                          EdgeInsets.symmetric(vertical: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: colors.primary,
                                        // color: colors.primary,
                                      ),
                                      child: model.isJoinLoading
                                          ? Center(
                                              child: CircularProgressIndicator(
                                                color: colors.white,
                                              ),
                                            )
                                          : AppText.subheading(
                                              "Join Group",
                                              textAlign: TextAlign.center,
                                              color: Colors.white,
                                            ),
                                    ),
                                    onTap: model.joinGroup,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                          visible: model.isMember,
                          child: SingleChildScrollView(
                            physics: ScrollPhysics(),
                            child: Column(
                              children: [
                                spacedDividerBigTiny,
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  child: GestureDetector(
                                    onTap: model.onCreatePostTapped,
                                    child: Row(
                                      children: [
                                        CustomCircularAvatar(
                                          radius: 20.0,
                                          imgPath: model.profileImg,
                                          isHuman: model.isHuman,
                                        ),
                                        horizontalSpaceRegular,
                                        AppText.caption(
                                          model.listOfPosts.isEmpty
                                              ? createFirstPost
                                              : createPost,
                                          textAlign: TextAlign.center,
                                          color: colors.kcCaptionGreyColor,
                                        ),
                                        Spacer(),
                                        Row(
                                          children: [
                                            Util.getImageChild(
                                                imageIcon, 16, 16),
                                            horizontalSpaceTiny,
                                            AppText.caption(
                                              photoVideo,
                                              color: colors.primary,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        spacedDividerBigTiny,
                        Visibility(
                          visible: model.isAdmin,
                          child: Visibility(
                            visible: model.completedProfileStepCount <
                                model.completedProfileTotalCount,
                            child: SingleChildScrollView(
                              physics: ScrollPhysics(),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        AppText.body("Complete setting up"),
                                        AppText.body(
                                          "${model.completedProfileStepCount} out of ${model.completedProfileTotalCount}",
                                          color: Colors.blueAccent,
                                        )
                                      ],
                                    ),
                                  ),
                                  //action to complete profile
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Row(
                                      children: [
                                        Visibility(
                                          visible:
                                              model.groupDescription.isEmpty,
                                          child: completeProfileItem(
                                            Icons.person_outline_rounded,
                                            "Add short description & hashtags",
                                            "Add details",
                                            model.onAddDetailsTapped,
                                            height: 115,
                                          ),
                                        ),
                                        Visibility(
                                          visible: model.membersCount < 2,
                                          child: completeProfileItem(
                                            Icons.people_outline_rounded,
                                            "Invite people to this group",
                                            "Invite people",
                                            model.onInviteTapped,
                                            height: 115,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  spacedDividerBigTiny,
                                ],
                              ),
                            ),
                          ),
                        ),

                        // DefaultTabController(
                        //   length: 2,
                        //   child: Flexible(
                        //     child: Scaffold(
                        //       backgroundColor: colors.white,
                        //       appBar: TabBar(
                        //         labelColor: colors.primary,
                        //         unselectedLabelColor: colors.kcCaptionGreyColor,
                        //         tabs: [
                        //           Tab(
                        //             text: "Group Feed",
                        //           ),
                        //           Tab(
                        //             text: "Photos/Videos",
                        //           )
                        //         ],
                        //       ),
                        //       body: TabBarView(
                        //         children: [
                        //           SingleChildScrollView(
                        //             physics: ScrollPhysics(),
                        //             child: Column(
                        //               children: [
                        //                 model.listOfPosts.isEmpty
                        //                     ? Align(
                        //                         alignment: Alignment.topCenter,
                        //                         child: AppText.body1Bold(
                        //                           "\n\nNo Feed found!",
                        //                           color: colors.primary,
                        //                         ),
                        //                       )
                        //                     : ListView.separated(
                        //                         shrinkWrap: true,
                        //                         physics: ScrollPhysics(),
                        //                         itemCount:
                        //                             model.listOfPosts.length,
                        //                         itemBuilder: (context, index) =>
                        //                             PostItemView(
                        //                           postResponse:
                        //                               model.listOfPosts[index],
                        //                           needToShowComments: true,
                        //                         ),
                        //                         separatorBuilder:
                        //                             (context, index) => Divider(
                        //                           color: Colors.transparent,
                        //                         ),
                        //                       ),
                        //                 verticalSpaceRegular,
                        //                 Visibility(
                        //                   visible: model.isPostLoading,
                        //                   child: Align(
                        //                     alignment: Alignment.center,
                        //                     child: CircularProgressIndicator(
                        //                       color: colors.primary,
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 Visibility(
                        //                   visible: !model.isEndOfList,
                        //                   child: Visibility(
                        //                     visible: !model.isPostLoading,
                        //                     child: GestureDetector(
                        //                       onTap: model.getGroupPosts,
                        //                       child: AppText.body1Bold(
                        //                         "See more Posts",
                        //                         textAlign: TextAlign.center,
                        //                         color: colors.primary,
                        //                       ),
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 verticalSpaceRegular,
                        //               ],
                        //             ),
                        //           ),
                        //           SingleChildScrollView(
                        //             physics: ScrollPhysics(),
                        //             child: Column(
                        //               children: [
                        //                 model.listOfPosts.isEmpty
                        //                     ? Align(
                        //                         alignment: Alignment.topCenter,
                        //                         child: AppText.body1Bold(
                        //                           "\n\nNo post found!",
                        //                           color: colors.primary,
                        //                         ),
                        //                       )
                        //                     : StaggeredGridView.countBuilder(
                        //                         physics: ScrollPhysics(),
                        //                         shrinkWrap: true,
                        //                         itemCount:
                        //                             model.listOfPosts.length,
                        //                         crossAxisSpacing: 6,
                        //                         mainAxisSpacing: 6,
                        //                         crossAxisCount: 3,
                        //                         itemBuilder: (context, index) =>
                        //                             GestureDetector(
                        //                           onTap: () =>
                        //                               model.goToPostDetailsView(
                        //                             model.listOfPosts[index],
                        //                             index,
                        //                           ),
                        //                           child: postItem(
                        //                             context,
                        //                             index,
                        //                             model.listOfPosts[index]
                        //                                 .thumbnail!,
                        //                           ),
                        //                         ),
                        //                         staggeredTileBuilder: (index) =>
                        //                             StaggeredTile.fit(1),
                        //                       ),
                        //                 verticalSpaceRegular,
                        //                 Visibility(
                        //                   visible: model.isPostLoading,
                        //                   child: Align(
                        //                     alignment: Alignment.center,
                        //                     child: CircularProgressIndicator(
                        //                       color: colors.primary,
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 Visibility(
                        //                   visible: !model.isEndOfList,
                        //                   child: Visibility(
                        //                     visible: !model.isPostLoading,
                        //                     child: GestureDetector(
                        //                       onTap: model.getGroupPosts,
                        //                       child: AppText.body1Bold(
                        //                         "See more Posts",
                        //                         textAlign: TextAlign.center,
                        //                         color: colors.primary,
                        //                       ),
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 verticalSpaceRegular,
                        //               ],
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),

                        SingleChildScrollView(
                          physics: ScrollPhysics(),
                          child: DefaultTabController(
                            length: 2,
                            child: SingleChildScrollView(
                              physics: ScrollPhysics(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    child: TabBar(tabs: [
                                      Tab(
                                        text: "Group Feed",
                                      ),
                                      Tab(
                                        text: "Photos/Videos",
                                      )
                                    ]),
                                  ),
                                  SingleChildScrollView(
                                    physics: ScrollPhysics(),
                                    child: Container(
                                      // height: double.maxFinite,
                                      height: screenHeight(context),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 15),
                                        child: TabBarView(
                                          children: [
                                            SingleChildScrollView(
                                              physics: ScrollPhysics(),
                                              child: Column(
                                                children: [
                                                  model.listOfPosts.isEmpty
                                                      ? Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child:
                                                              AppText.body1Bold(
                                                            "\n\nNo Feed found!",
                                                            color:
                                                                colors.primary,
                                                          ),
                                                        )
                                                      : ListView.separated(
                                                          shrinkWrap: true,
                                                          physics:
                                                              ScrollPhysics(),
                                                          itemCount: model
                                                              .listOfPosts
                                                              .length,
                                                          itemBuilder: (context,
                                                                  index) =>
                                                              PostItemView(
                                                            postResponse: model
                                                                    .listOfPosts[
                                                                index],
                                                            needToShowComments:
                                                                true,
                                                          ),
                                                          separatorBuilder:
                                                              (context,
                                                                      index) =>
                                                                  Divider(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                        ),
                                                  verticalSpaceRegular,
                                                  Visibility(
                                                    visible:
                                                        model.isPostLoading,
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child:
                                                          CircularProgressIndicator(
                                                        color: colors.primary,
                                                      ),
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: !model.isEndOfList,
                                                    child: Visibility(
                                                      visible:
                                                          !model.isPostLoading,
                                                      child: GestureDetector(
                                                        onTap:
                                                            model.getGroupPosts,
                                                        child:
                                                            AppText.body1Bold(
                                                          "See more Posts",
                                                          textAlign:
                                                              TextAlign.center,
                                                          color: colors.primary,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  verticalSpaceRegular,
                                                ],
                                              ),
                                            ),
                                            SingleChildScrollView(
                                              physics: ScrollPhysics(),
                                              child: Column(
                                                children: [
                                                  model.listOfPosts.isEmpty
                                                      ? Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child:
                                                              AppText.body1Bold(
                                                            "\n\nNo post found!",
                                                            color:
                                                                colors.primary,
                                                          ),
                                                        )
                                                      : StaggeredGridView
                                                          .countBuilder(
                                                          physics:
                                                              ScrollPhysics(),
                                                          shrinkWrap: true,
                                                          itemCount: model
                                                              .listOfPosts
                                                              .length,
                                                          crossAxisSpacing: 6,
                                                          mainAxisSpacing: 6,
                                                          crossAxisCount: 3,
                                                          itemBuilder: (context,
                                                                  index) =>
                                                              GestureDetector(
                                                            onTap: () => model
                                                                .goToPostDetailsView(
                                                              model.listOfPosts[
                                                                  index],
                                                              index,
                                                            ),
                                                            child: postItem(
                                                              context,
                                                              index,
                                                              model
                                                                  .listOfPosts[
                                                                      index]
                                                                  .thumbnail!,
                                                            ),
                                                          ),
                                                          staggeredTileBuilder:
                                                              (index) =>
                                                                  StaggeredTile
                                                                      .fit(1),
                                                        ),
                                                  verticalSpaceRegular,
                                                  Visibility(
                                                    visible:
                                                        model.isPostLoading,
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child:
                                                          CircularProgressIndicator(
                                                        color: colors.primary,
                                                      ),
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: !model.isEndOfList,
                                                    child: Visibility(
                                                      visible:
                                                          !model.isPostLoading,
                                                      child: GestureDetector(
                                                        onTap:
                                                            model.getGroupPosts,
                                                        child:
                                                            AppText.body1Bold(
                                                          "See more Posts",
                                                          textAlign:
                                                              TextAlign.center,
                                                          color: colors.primary,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  verticalSpaceRegular,
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
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
      ),
    );
  }
}

Widget errorBuilder(BuildContext ct, Object o, StackTrace? s) {
  return Container(
    height: 180,
    color: colors.primary,
    child: SvgPicture.asset(
      cameraIcon,
      color: colors.white,
    ),
  );
}
