import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/profilepage/post_tabs/post_tabs.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';
import 'package:tamely/widgets/edit_button.dart';

import 'animal_profile_view_model.dart';

class AnimalProfileView extends StatelessWidget {
  AnimalProfileView({Key? key, required this.petId}) : super(key: key);

  String petId;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AnimalProfileViewModel>.reactive(
      viewModelBuilder: () => AnimalProfileViewModel(),
      onModelReady: (model) => model.getAnimalDetails(petId),
      builder: (context, model, child) => Scaffold(
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
                  decoration: BoxDecoration(color: colors.lightBackgroundColor),
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

                      Positioned(
                        top: 30,
                        right: 20,
                        child: GestureDetector(
                          child: EditButton(),
                          onTap: () {},
                        ),
                      ),

                      Positioned(
                          top: 30,
                          left: 20,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                            ),
                            onPressed: model.goBack,
                          )),
                      // for main contents at center
                      Positioned(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          verticalSpaceRegular,
                          CustomCircularAvatar(
                              radius: 50, imgPath: model.avatar),
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
                          AppText.body(model.profilename),

                          verticalSpaceTiny,
                          // username and animal count
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText.body1(
                                  model.username,
                                  isSingleLined: true,
                                  color: colors.kcMediumGreyColor,
                                ),
                                horizontalSpaceTiny,
                                CircleAvatar(
                                  radius: 2,
                                  backgroundColor: colors.primary,
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
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: AppText.caption(
                              model.shortBio,
                              textAlign: TextAlign.center,
                              color: colors.black,
                            ),
                          ),
                          verticalSpaceSmall,
                          // action text
                          AppText.caption(
                            addMyGuardian,
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
                                    AppText.subheading("${model.noOfHearts}")
                                  ],
                                )
                              ],
                            ),
                          ),
                          verticalSpaceSmall,
                        ],
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
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
                spacedDividerTiny,
                ListTile(
                  title: AppText.body2("Basic Info"),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                  onTap: model.goToAnimalBasicInfo,
                ),
                spacedDividerTiny,
                //my post section

                PostTab(),
              ],
            ),
          ),
        ),
      ),
    );
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
