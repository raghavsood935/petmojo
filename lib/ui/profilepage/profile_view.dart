import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kubelite/ui/profilepage/profile_viewmodel.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  final BuildContext menuScreenContext;
  final Function onScreenHideButtonPressed;
  final bool hideStatus;
  const ProfileView(
      {Key? key,
      required this.menuScreenContext,
      required this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
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
                decoration: BoxDecoration(color: colors.lightBackgroundColor),
                child: Stack(
                  children: [
                    Positioned(
                      right: 20,
                      child: GestureDetector(
                        child: Row(children: [
                          Icon(
                            Icons.edit,
                            color: colors.primary,
                          ),
                          AppText.body2(
                            "Edit",
                            color: colors.primary,
                          ),
                        ]),
                        onTap: model.goToProfileEditView,
                      ),
                    ),
                    // for main contents at center
                    Positioned(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // for profile image
                        SizedBox(
                          height: 125,
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundColor: colors.primary,
                                  child: CircleAvatar(
                                    radius: 57,
                                    backgroundColor:
                                        colors.lightBackgroundColor,
                                    child: CircleAvatar(
                                      backgroundColor: colors.primary,
                                      radius: 55,
                                      child: Icon(
                                        Icons.photo_camera_outlined,
                                        color: colors.white,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 80,
                                right: 0,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 20,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        // verticalSpaceSmall,
                        // profile name
                        AppText.subheading(model.profilename),

                        // verticalSpaceSmall,
                        // username and animal count
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText.body(
                              model.username,
                              color: colors.kcMediumGreyColor,
                            ),
                            horizontalSpaceTiny,
                            CircleAvatar(
                              radius: 2,
                              backgroundColor: colors.primary,
                            ),
                            horizontalSpaceTiny,
                            AppText.body2("${model.noOfAnimals}"),
                            horizontalSpaceTiny,
                            AppText.body("animal",
                                color: colors.kcMediumGreyColor),
                          ],
                        ),
                        verticalSpaceSmall,
                        // action text
                        AppText.body2(
                          model.actionText,
                          color: colors.primary,
                        ),
                        spacedDividerSmall,
                        // post ,follower,following,hearts counts
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
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
                                  AppText.body("${model.noOfHearts}")
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
                visible: model.profileCompleted,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          completeProfileItem(
                            Icons.person_outline_rounded,
                            "Add your short bio, profile picture",
                            "Add details",
                            model.goToAddDetailsProfileAction,
                          ),
                          completeProfileItem(
                              Icons.people_outline_rounded,
                              "Follow at least 5 people to improve feed suggestions",
                              "Follow people",
                              model.goToFollowPeopleProfileAction),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // spacedDividerSmall,

              //my animals
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  padding: EdgeInsets.symmetric(horizontal: 10),
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
                              onPressed: model.goToCreateAnimalProfileView,
                            ),
                          ),
                        ),
                        horizontalSpaceRegular,
                        SizedBox(
                          height: 100,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: model.dummyListOfMyAnimals.length,
                            itemBuilder: (context, index) => roundedImageWidget(
                              true,
                              model.dummyListOfMyAnimals[index].name,
                              bgImg: NetworkImage(
                                  model.dummyListOfMyAnimals[index].url),
                            ),
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    horizontalSpaceSmall,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              spacedDividerSmall,
              //my post section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AppText.body("My Posts"),
                ),
              ),
              //my posts grid view
              Container(
                padding: EdgeInsets.all(10),
                color: colors.lightBackgroundColor,
                child: StaggeredGridView.countBuilder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: model.dummyListOfPosts.length,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  crossAxisCount: 3,
                  itemBuilder: (context, index) =>
                      postItem(model.dummyListOfPosts[index], () {}),
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget postItem(String url, void onTapFun()) => GestureDetector(
        child: Container(
          margin: EdgeInsets.all(3),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              url,
              fit: BoxFit.cover,
            ),
          ),
        ),
        onTap: onTapFun,
      );

  Widget roundedImageWidget(bool isImage, String name,
          {NetworkImage? bgImg, Widget? child}) =>
      Column(
        children: [
          CircleAvatar(
            backgroundColor: colors.primary,
            radius: 30,
            child: isImage
                ? CircleAvatar(
                    backgroundColor: colors.lightBackgroundColor,
                    radius: 28,
                    backgroundImage: bgImg,
                  )
                : CircleAvatar(
                    backgroundColor: colors.lightBackgroundColor,
                    radius: 28,
                    child: child,
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
          AppText.body("$count"),
          AppText.caption(type),
        ],
      );

  Widget completeProfileItem(
          IconData icon, String message, String actionText, void action()) =>
      Card(
        elevation: 5.0,
        child: SizedBox(
          width: 150,
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icon,
                    color: colors.primary,
                    size: 30,
                  ),
                  verticalSpaceTiny,
                  AppText.body(
                    message,
                    color: colors.kcLightGreyColor,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpaceSmall,
                  GestureDetector(
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
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
