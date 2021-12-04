import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/profilepage/post_tabs/post_tabs.dart';
import 'package:tamely/ui/profilepage/profile_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/edit_button.dart';
import 'package:tamely/widgets/follow_static_btn.dart';

class ProfileView extends StatefulWidget {
  final BuildContext menuScreenContext;
  final Function onScreenHideButtonPressed;
  final bool hideStatus;
  final bool isInspectView;
  final String? inspectProfileId;
  final String? inspecterProfileId;
  const ProfileView(
      {Key? key,
      required this.menuScreenContext,
      required this.onScreenHideButtonPressed,
      this.hideStatus = false,
      required this.isInspectView,
      this.inspectProfileId,
      this.inspecterProfileId})
      : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      onModelReady: (model) =>
          model.init(widget.isInspectView, widget.inspectProfileId ?? ""),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: widget.isInspectView
                ? EdgeInsets.only(bottom: 20, top: 20)
                : EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                //top about widget
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: screenWidth(context),
                  decoration: BoxDecoration(color: colors.lightBackgroundColor),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 5,
                        child: Image.asset(humanHandImgPath),
                      ),
                      Positioned(
                        top: 100,
                        right: 0,
                        child: Transform.rotate(
                          angle: 5,
                          child: Image.asset(
                            humanHandImgPath,
                            height: 75,
                            width: 75,
                          ),
                        ),
                      ),

                      Visibility(
                        visible: !widget.isInspectView,
                        child: Positioned(
                          top: 30,
                          right: 20,
                          child: GestureDetector(
                            child: EditButton(),
                            onTap: model.goToProfileEditView,
                          ),
                        ),
                      ),

                      Visibility(
                        visible: widget.isInspectView,
                        child: Positioned(
                          top: 30,
                          left: 20,
                          child: GestureDetector(
                            child: Icon(Icons.arrow_back),
                            onTap: model.goBack,
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
                          GestureDetector(
                              onTap: () {
                                if (!widget.isInspectView)
                                  model.onImageButtonPressed(
                                      ImageSource.gallery, context);
                              },
                              child: CustomCircularAvatar(
                                imgPath: model.profileImgUrl,
                                radius: 40,
                              )),
                          verticalSpaceTiny,
                          // profile name
                          AppText.body(model.profilename),
                          verticalSpaceTiny,
                          // username and animal count
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppText.body1(
                                model.username,
                                color: colors.kcMediumGreyColor,
                              ),
                              horizontalSpaceTiny,
                              CircleAvatar(
                                radius: 2,
                                backgroundColor: colors.primary,
                              ),
                              horizontalSpaceTiny,
                              AppText.body1("${model.listOfMyAnimals.length}"),
                              horizontalSpaceTiny,
                              AppText.body1("animal",
                                  color: colors.kcMediumGreyColor),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 40,
                              left: 40,
                              top: 5,
                            ),
                            child: Visibility(
                              visible: model.shortBio.isNotEmpty,
                              child: AppText.body1(
                                model.shortBio,
                                textAlign: TextAlign.center,
                                color: colors.black,
                              ),
                            ),
                          ),
                          verticalSpaceTiny,
                          // action text
                          Visibility(
                            visible: model.completedProfileStepCount <
                                    model.completedProfileTotalCount &&
                                !widget.isInspectView,
                            child: GestureDetector(
                              child: AppText.caption(
                                model.actionText,
                                color: colors.primary,
                              ),
                              onTap: model.goToCompleteProfile,
                            ),
                          ),

                          Visibility(
                            visible: widget.isInspectView,
                            child: GestureDetector(
                              onTap: () {
                                if (!model.isFollowing) {
                                  model.followThisProfile(
                                      widget.inspecterProfileId!,
                                      widget.inspectProfileId!);
                                }
                              },
                              child: FollowingStaticBtn(
                                trueValue: "Following",
                                falseValue: "Follow",
                                state: model.isFollowing,
                              ),
                            ),
                          ),
                          spacedDividerSmall,
                          // post ,follower,following,hearts counts
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                countRowItem(model.noOfPosts, "Posts"),
                                countRowItem(model.noOfFollowers, "Followers"),
                                countRowItem(model.noOfFollowing, "Following"),
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
                          Divider(color: Colors.blueGrey, height: 5.0),
                        ],
                      ))
                    ],
                  ),
                ),

                //complete your profile info

                Visibility(
                  visible: model.completedProfileStepCount <
                          model.completedProfileTotalCount &&
                      !widget.isInspectView,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            AppText.body(model.actionText),
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
                              visible: model.shortBio.isEmpty,
                              child: completeProfileItem(
                                Icons.person_outline_rounded,
                                "Add your short bio, profile picture",
                                "Add details",
                                model.goToAddDetailsProfileAction,
                              ),
                            ),
                            Visibility(
                              visible: model.noOfFollowing < 1,
                              child: completeProfileItem(
                                  Icons.people_outline_rounded,
                                  "Follow at least 5 people to improve feed suggestions",
                                  "Follow people",
                                  model.goToFollowPeopleProfileAction),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // spacedDividerSmall,

                //my animals

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      AppText.body("My Animals"),
                      IconButton(
                        icon: Icon(model.isMyAnimalsVisibile
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down),
                        onPressed: model.myAnimalVisible,
                      )
                    ],
                  ),
                ),

                //my animals list

                Visibility(
                  visible: model.isMyAnimalsVisibile,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: roundedImageWidget(
                                false,
                                "Add",
                                child: IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    size: 25,
                                    color: colors.primary,
                                  ),
                                  onPressed: () => widget.isInspectView
                                      ? {}
                                      : model.goToCreateAnimalProfileView(),
                                ),
                              ),
                            ),
                            horizontalSpaceRegular,
                            SizedBox(
                              height: 100,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: model.listOfMyAnimals.length,
                                itemBuilder: (context, index) => Visibility(
                                  visible:
                                      model.listOfMyAnimals[index].confirmed ??
                                          false,
                                  child: GestureDetector(
                                    child: roundedImageWidget(
                                      true,
                                      model.listOfMyAnimals[index]
                                              .detailsResponse!.name ??
                                          "",
                                      bgImg: NetworkImage(
                                        model.listOfMyAnimals[index]
                                                .detailsResponse!.avatar ??
                                            emptyProfileImgUrl,
                                      ),
                                    ),
                                    onTap: () => widget.isInspectView
                                        ? {}
                                        : model.goToAnimalProfileView(model
                                            .listOfMyAnimals[index]
                                            .detailsResponse!
                                            .Id!),
                                  ),
                                ),
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                        Visibility(
                                            visible: model
                                                    .listOfMyAnimals[index]
                                                    .confirmed ??
                                                false,
                                            child: horizontalSpaceSmall),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                spacedDividerSmall,
                //my post section
                // PostTab(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                    child: AppText.body("My Posts"),
                  ),
                ),
                if (model.listOfPosts.length == 0)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: widget.isInspectView
                        ? AppText.body1Bold("Nothing to show")
                        : Align(
                            alignment: Alignment.centerLeft,
                            child: CircleAvatar(
                              backgroundColor: colors.black,
                              radius: 30,
                              child: CircleAvatar(
                                radius: 29,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundColor: colors.lightBackgroundColor,
                                  radius: 26,
                                  child: Icon(
                                    Icons.add,
                                    color: colors.primary,
                                  ),
                                ),
                              ),
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
                        onTap: () =>
                            model.goToPostDetailsView(model.listOfPosts[index]),
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
    );
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
}

double getPostItemHeight(BuildContext context, int index) {
  if (index == 0) {
    return (thirdScreenWidth(context) - 24.0);
  } else if ((index - 1) % 4 == 0) {
    return ((thirdScreenWidth(context) * 1.5) - 30.0);
  } else {
    return (thirdScreenWidth(context) - 24.0);
  }
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

Widget completeProfileItem(
        IconData icon, String message, String actionText, void action()) =>
    Card(
      elevation: 5.0,
      child: SizedBox(
        width: 125,
        height: 135,
        child: Stack(
          children: [
            Positioned(
              top: 5,
              right: 0,
              left: 0,
              child: Icon(
                icon,
                color: colors.primary,
                size: 30,
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: 15,
              left: 15,
              child: Center(
                child: AppText.caption(
                  message,
                  color: colors.kcLightGreyColor,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 15,
              left: 15,
              child: GestureDetector(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colors.primary,
                    ),
                    child: AppText.caption(
                      actionText,
                      color: colors.white,
                      textAlign: TextAlign.center,
                    )),
                onTap: action,
              ),
            )
          ],
        ),
      ),
    );
