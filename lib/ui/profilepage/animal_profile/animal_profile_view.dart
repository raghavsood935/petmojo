import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/profilepage/post_tabs/post_tabs.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/edit_button.dart';
import 'package:tamely/widgets/follow_static_btn.dart';
import 'package:tamely/widgets/shimmer_widgets.dart';

import 'animal_profile_view_model.dart';

class AnimalProfileView extends StatefulWidget {
  bool isFromDashboard;
  final id;
  final token;
  final bool isInspectView;
  final String? inspecterProfileId;
  final String? inspecterProfileType;

  AnimalProfileView(
      {Key? key,
      required this.isFromDashboard,
      this.id,
      this.token,
      required this.isInspectView,
      this.inspecterProfileId,
      this.inspecterProfileType})
      : super(key: key);

  @override
  State<AnimalProfileView> createState() => _AnimalProfileViewState();
}

class _AnimalProfileViewState extends State<AnimalProfileView> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AnimalProfileViewModel>.reactive(
      viewModelBuilder: () => AnimalProfileViewModel(),
      onModelReady: (model) => model.init(
          widget.isFromDashboard, widget.id ?? "", widget.token ?? ""),
      builder: (context, model, child) => RefreshIndicator(
        onRefresh: () async {
          await model.init(
              widget.isFromDashboard, widget.id ?? "", widget.token ?? "",
              fromRefresh: true);
        },
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //top about widget
                  Container(
                    // height: screenHeightPercentage(
                    //   context,
                    //   percentage: 0.40,
                    // ),
                    margin: EdgeInsets.only(bottom: 10),
                    width: screenWidth(context),
                    decoration:
                        BoxDecoration(color: colors.lightBackgroundColor),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 25,
                          left: 5,
                          child: Opacity(
                            opacity: 0.1,
                            child: Transform.rotate(
                              angle: -5,
                              child: Image.asset(
                                animalFootPrintImgPath,
                                height: 90,
                                width: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: 0,
                          child: Transform.rotate(
                            angle: 5,
                            child: Opacity(
                              opacity: 0.1,
                              child: Image.asset(
                                animalFootPrintImgPath,
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: !model.isBusy,
                          child: Visibility(
                            visible: !widget.isInspectView,
                            child: Positioned(
                              top: 30,
                              right: 20,
                              child: GestureDetector(
                                child: EditButton(),
                                onTap: model.goToAnimalEdit,
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          top: 30,
                          left: 20,
                          child: Visibility(
                            visible: !widget.isFromDashboard,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_outlined,
                              ),
                              onPressed: model.goBack,
                            ),
                          ),
                        ),
                        // for main contents at center
                        Positioned(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            verticalSpaceRegular,
                            SizedBox(
                              height: 120,
                              width: 150,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 20,
                                    right: 0,
                                    left: 0,
                                    child: model.isBusy
                                        ? ShimmerWidget.circular(
                                            height: 100,
                                            width: 100,
                                          )
                                        : GestureDetector(
                                            onTap: () {
                                              if (widget.isInspectView) {
                                                model.imageTapped(
                                                    context, model.avatar);
                                              } else {
                                                model.onImageButtonPressed(
                                                    ImageSource.gallery,
                                                    context);
                                              }
                                            },
                                            child: CustomCircularAvatar(
                                              imgPath: model.avatar,
                                              radius: 50,
                                              isHuman: false,
                                            )),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    right: 25,
                                    child: Visibility(
                                      visible: !widget.isInspectView,
                                      child: model.isBusy
                                          ? ShimmerWidget.circular(
                                              height: 20,
                                              width: 20,
                                            )
                                          : GestureDetector(
                                              onTap: () =>
                                                  model.onImageButtonPressed(
                                                      ImageSource.gallery,
                                                      context),
                                              child: CircleAvatar(
                                                radius: 12,
                                                backgroundColor: colors.primary,
                                                child: Icon(
                                                  Icons.camera_alt,
                                                  color: colors.white,
                                                  size: 12,
                                                ),
                                              ),
                                            ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 15,
                                    child: Visibility(
                                      visible: model.isBrandAmbassador,
                                      child: Transform.rotate(
                                          angle: .4,
                                          child: Image.asset(crownImgPath)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            verticalSpaceTiny,
                            // for profile image
                            // SizedBox(
                            //   height: 125,
                            //   child: Stack(
                            //     children: [
                            //       Positioned(
                            //         bottom: 0,
                            //         left: 0,
                            //         right: 0,
                            //         child: CircleAvatar(
                            //           radius: 50,
                            //           backgroundColor: colors.primary,
                            //           child: CircleAvatar(
                            //             radius: 47,
                            //             backgroundColor:
                            //                 colors.lightBackgroundColor,
                            //             child: CircleAvatar(
                            //               backgroundColor: colors.primary,
                            //               radius: 45,
                            //               child: Icon(
                            //                 Icons.photo_camera_outlined,
                            //                 color: colors.white,
                            //                 size: 35,
                            //               ),
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //       Positioned(
                            //         bottom: 0,
                            //         left: 80,
                            //         right: 0,
                            //         child: CircleAvatar(
                            //           backgroundColor: colors.blue,
                            //           radius: 15,
                            //           child: IconButton(
                            //             icon: Icon(
                            //               Icons.add,
                            //               color: colors.white,
                            //               size: 14,
                            //             ),
                            //             onPressed: () {},
                            //           ),
                            //         ),
                            //       )
                            //     ],
                            //   ),
                            // ),
                            verticalSpaceTiny,
                            // profile name
                            model.isBusy
                                ? ShimmerWidget.rectangular(
                                    height: 16,
                                    width: thirdScreenWidth(context),
                                  )
                                : AppText.body(model.profilename),

                            verticalSpaceTiny,
                            // username and animal count
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: model.isBusy
                                  ? ShimmerWidget.rectangular(
                                      height: 16,
                                      width: halfScreenWidth(context),
                                    )
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppText.body1(
                                          model.username,
                                          isSingleLined: true,
                                          color: colors.kcMediumGreyColor,
                                        ),
                                        horizontalSpaceTiny,
                                        Visibility(
                                          visible: model.animalBreed.isNotEmpty,
                                          child: CircleAvatar(
                                            radius: 2,
                                            backgroundColor: colors.primary,
                                          ),
                                        ),
                                        horizontalSpaceTiny,
                                        AppText.body1(
                                            model.animalBreed.split(",").first,
                                            isSingleLined: true,
                                            color: colors.kcMediumGreyColor),
                                      ],
                                    ),
                            ),
                            verticalSpaceSmall,
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: AppText.caption(
                                model.shortBio,
                                textAlign: TextAlign.center,
                                color: colors.black,
                              ),
                            ),
                            verticalSpaceSmall,
                            Visibility(
                              visible: widget.isInspectView,
                              child: GestureDetector(
                                onTap: () {
                                  if (!model.isFollowing) {
                                    model.followThisProfile(
                                      widget.inspecterProfileId!,
                                      widget.id!,
                                      widget.inspecterProfileType!,
                                    );
                                    setState(() {
                                      isFollowing = !isFollowing;
                                    });
                                  }
                                },
                                child: FollowingStaticBtn(
                                  trueValue: "Following",
                                  falseValue: "Follow",
                                  state: model.isFollowing,
                                ),
                              ),
                            ),
                            // action text
                            Visibility(
                              visible: widget.isInspectView
                                  ? model.isGuardian
                                  : true,
                              child: GestureDetector(
                                child: AppText.caption(
                                  addMyGuardian,
                                  color: colors.primary,
                                ),
                                onTap: model.goToAddGuardiansAndRelations,
                              ),
                            ),
                            spacedDividerSmall,
                            // post ,follower,following,hearts counts
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  countRowItem(
                                      model.listOfPosts.length, "Posts"),
                                  countRowItem(
                                      model.noOfFollowers, "Followers"),
                                  countRowItem(
                                      model.noOfFollowing, "Following"),
                                  // countRowItem(model.noOfHearts, "Hearts"),
                                  Column(
                                    children: [
                                      Image.asset(
                                        likesImgPath,
                                        height: 30,
                                        width: 30,
                                      ),
                                      AppText.subheading("${model.noOfHearts}")
                                    ],
                                  )
                                ],
                              ),
                            ),
                            verticalSpaceSmall,
                            Divider(
                                color: colors.kcLightGreyColor, height: 1.0),
                          ],
                        ))
                      ],
                    ),
                  ),
                  Visibility(
                    visible: !model.isBusy,
                    child: Visibility(
                      visible: model.isUpForAdoption ||
                          model.isUpForMating ||
                          model.isUpForPlayBuddies ||
                          model.isBrandAmbassador,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Visibility(
                                  visible: model.isBrandAmbassador,
                                  child: roundedText(
                                      "Tamely Official Brand Ambassdor"),
                                ),
                                Visibility(
                                  visible: model.isUpForAdoption,
                                  child: roundedText(upForAdoption),
                                ),
                                Visibility(
                                  visible: model.isUpForMating,
                                  child: roundedText(upForMating),
                                ),
                                Visibility(
                                  visible: model.isUpForPlayBuddies,
                                  child: roundedText(upForPlayBuddies),
                                ),
                              ],
                            ),
                          ),
                          verticalSpaceSmall,
                          Divider(color: colors.kcLightGreyColor, height: 1.0),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: AppText.body2("Basic Info"),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () =>
                        model.goToAnimalBasicInfo(widget.isInspectView),
                  ),
                  spacedDividerTiny,
                  //my post section
                  Visibility(
                    visible: !widget.isInspectView,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                        child: AppText.body("My Posts"),
                      ),
                    ),
                  ),
                  if (model.listOfPosts.length == 0)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: widget.isInspectView
                          ? AppText.body1Bold("Nothing to show")
                          : Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                child: CircleAvatar(
                                  backgroundColor: colors.black,
                                  radius: 30,
                                  child: CircleAvatar(
                                    radius: 29,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      backgroundColor:
                                          colors.lightBackgroundColor,
                                      radius: 26,
                                      child: Icon(
                                        Icons.add,
                                        color: colors.primary,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: model.createPost,
                              ),
                            ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: StaggeredGridView.countBuilder(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: model.listOfPosts.length,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6,
                        crossAxisCount: 3,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () => model.goToPostDetailsView(
                              model.listOfPosts[index], index),
                          child: postItem(
                            context,
                            index,
                            model.listOfPosts[index].thumbnail!,
                          ),
                        ),
                        staggeredTileBuilder: (index) => StaggeredTile.fit(1),
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

Widget postItem(BuildContext context, int index, String url) => Container(
      height: getPostItemHeight(context, index),
      margin: EdgeInsets.all(3),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ),
      ),
    );

double getPostItemHeight(BuildContext context, int index) {
  if (index == 0) {
    return (thirdScreenWidth(context) - 24.0);
  } else if ((index - 1) % 4 == 0) {
    return ((thirdScreenWidth(context) * 1.5) - 30.0);
  } else {
    return (thirdScreenWidth(context) - 24.0);
  }
}

Widget roundedText(String text) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    decoration: BoxDecoration(
      border: Border.all(
        color: colors.primary,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(25),
    ),
    child: AppText.body1(
      text,
      color: colors.black,
    ),
  );
}

Widget roundedImageWidget(bool isImage, String name,
        {NetworkImage? bgImg, Widget? child}) =>
    Column(
      children: [
        CircleAvatar(
          backgroundColor: colors.black,
          radius: 30,
          child: CircleAvatar(
            radius: 29,
            backgroundColor: Colors.white,
            child: isImage
                ? CircleAvatar(
                    backgroundColor: colors.lightBackgroundColor,
                    radius: 26,
                    backgroundImage: bgImg,
                  )
                : CircleAvatar(
                    backgroundColor: colors.lightBackgroundColor,
                    radius: 26,
                    child: child,
                  ),
          ),
        ),
        verticalSpaceTiny,
        AppText.caption(
          name,
          isSingleLined: true,
        )
      ],
    );

Widget countRowItem(int count, String type) => Column(
      children: [
        AppText.subheading("$count"),
        AppText.body1(type),
      ],
    );
