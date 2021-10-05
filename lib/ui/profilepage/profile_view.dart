import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kubelite/ui/profilepage/profile_viewmodel.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/styles.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

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
                        // for left bg image
                        Positioned(
                          top: 50,
                          left: 5,
                          child: Image.asset(model.leftHandImgPath),
                        ),
                        // for right bg image
                        Positioned(
                          top: 150,
                          right: 5,
                          child: Image.asset(model.rightHandImgPath),
                        ),
                        // for edit button at top right corner
                        Positioned(
                            top: 40,
                            right: 20,
                            child: Row(children: [
                              Icon(
                                EvaIcons.edit,
                                color: colors.primary,
                              ),
                              Text(
                                "Edit",
                                style:
                                    body2Style.copyWith(color: colors.primary),
                              )
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
                                            EvaIcons.cameraOutline,
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
                            Text(
                              model.profilename,
                              style: GoogleFonts.lato(
                                textStyle: subheadingStyle,
                              ),
                            ),
                            verticalSpaceSmall,
                            // username and animal count
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  model.username,
                                  style: GoogleFonts.lato(
                                    textStyle: bodyStyle.copyWith(
                                        color: Colors.grey[600]),
                                  ),
                                ),
                                horizontalSpaceTiny,
                                CircleAvatar(
                                  radius: 2,
                                  backgroundColor: colors.primary,
                                ),
                                horizontalSpaceTiny,
                                Text(
                                  "${model.noOfAnimals}",
                                  style: bodyStyle.copyWith(fontSize: 18),
                                ),
                                horizontalSpaceTiny,
                                Text(
                                  "animals",
                                  style: GoogleFonts.lato(
                                    textStyle: bodyStyle.copyWith(
                                        color: Colors.grey[600]),
                                  ),
                                ),
                              ],
                            ),
                            verticalSpaceRegular,
                            // action text
                            TextButton(
                              child: Text(
                                model.actionText,
                                style: GoogleFonts.lato(
                                  textStyle: body2Style.copyWith(
                                      color: colors.primary),
                                ),
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
                        Text(
                          model.actionText,
                          style: GoogleFonts.lato(textStyle: bodyStyle),
                        ),
                        Text(
                          "${model.completedProfileStepCount} out of ${model.completedProfileTotalCount}",
                          style: GoogleFonts.lato(color: Colors.blueAccent),
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
                          EvaIcons.personOutline,
                          "Add your short bio, profile picture",
                          "Add details",
                          model.goToaddDetialsProfileAction,
                        ),
                        completeProfileItem(
                            EvaIcons.peopleOutline,
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
                        Text(
                          "My Animals",
                          style: GoogleFonts.lato(textStyle: bodyStyle),
                        ),
                        Icon(EvaIcons.arrowDown)
                      ],
                    ),
                  ),
                  spacedDivider,
                  //my post section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "My Posts",
                        style: GoogleFonts.lato(textStyle: bodyStyle),
                      ),
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
                                EvaIcons.plus,
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
          Text("$count", style: heading3Style),
          Text(
            type,
            style: bodyStyle,
          )
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
                Text(
                  message,
                  style: GoogleFonts.lato(color: Colors.grey[600]),
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
                    child: Text(
                      actionText,
                      style: GoogleFonts.lato(color: colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: action,
                )
              ],
            ),
          ),
        ),
      );
}
