import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubelite/ui/profilepage/profile_viewmodel.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/String.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

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
                    height: screenHeightPercentage(
                      context,
                      percentage: 0.65,
                    ),
                    width: screenWidth(context),
                    decoration:
                        BoxDecoration(color: colors.lightBackgroundColor),
                    child: Stack(
                      children: [
                        // // for left bg image
                        // Positioned(
                        //   top: 50,
                        //   left: 5,
                        //   child: Image.asset(leftHandImgPath),
                        // ),
                        // // for right bg image
                        // Positioned(
                        //   top: 150,
                        //   right: 5,
                        //   child: Image.asset(rightHandImgPath),
                        // ),
                        // for edit button at top right corner
                        Positioned(
                            top: 40,
                            right: 20,
                            child: Row(children: [
                              Icon(
                                Icons.edit,
                                color: colors.primary,
                              ),
                              AppText.body2(
                                "Edit",
                                color: colors.primary,
                              ),
                            ])),
                        // for main contents at center
                        Positioned(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // for profile image
                            SizedBox(
                              height: 200,
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: CircleAvatar(
                                      radius: 70,
                                      backgroundColor: colors.primary,
                                      child: CircleAvatar(
                                        radius: 67,
                                        backgroundColor:
                                            colors.lightBackgroundColor,
                                        child: CircleAvatar(
                                          backgroundColor: colors.primary,
                                          radius: 65,
                                          child: Icon(
                                            Icons.photo_camera_outlined,
                                            color: colors.white,
                                            size: 50,
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
                            verticalSpaceSmall,
                            // profile name
                            AppText.subheading(model.profilename),

                            verticalSpaceSmall,
                            // username and animal count
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText.body(
                                  model.username,
                                  color: colors.kcLightGreyColor,
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
                                    color: colors.kcLightGreyColor),
                              ],
                            ),
                            verticalSpaceRegular,
                            // action text
                            TextButton(
                              child: AppText.body2(
                                model.actionText,
                                color: colors.primary,
                              ),
                              onPressed: () {},
                            ),
                            spacedDivider,
                            // post ,follower,following,hearts counts
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  countRowItem(model.noOfPosts, "Posts"),
                                  countRowItem(
                                      model.noOfFollowers, "Followers"),
                                  countRowItem(
                                      model.noOfFollowing, "Following"),
                                  countRowItem(model.noOfHearts, "Hearts"),
                                ],
                              ),
                            )
                          ],
                        ))
                      ],
                    ),
                  ),
                  verticalSpaceRegular,
                  //complete your profile info
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
                      children: [
                        completeProfileItem(
                          Icons.person_outline_rounded,
                          "Add your short bio, profile picture",
                          "Add details",
                          model.goToaddDetialsProfileAction,
                        ),
                        completeProfileItem(
                            Icons.people_outline_rounded,
                            "Followat least 5 people to improve feed suggestions",
                            "Follow people",
                            model.followProfileAction),
                      ],
                    ),
                  ),
                  spacedDivider,
                  //my animals
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        AppText.body("My Animals"),
                        Icon(
                          Icons.arrow_back_rounded,
                        )
                      ],
                    ),
                  ),
                  spacedDivider,
                  //my post section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AppText.body("My Posts"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: colors.black,
                          radius: 42,
                          child: CircleAvatar(
                            backgroundColor: colors.lightBackgroundColor,
                            radius: 40,
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                                size: 30,
                                color: colors.primary,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }

  Widget countRowItem(int count, String type) => Column(
        children: [
          AppText.headingThree("$count"),
          AppText.body(type),
        ],
      );

  Widget completeProfileItem(
          IconData icon, String message, String actionText, void action()) =>
      Card(
        elevation: 8.0,
        child: SizedBox(
          width: 150,
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colors.primary,
                      ),
                      child: AppText.body(
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
      );
}
