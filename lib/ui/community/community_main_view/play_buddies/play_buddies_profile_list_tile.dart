import 'package:flutter/material.dart';
import 'package:tamely/models/get_animals_by_location_response.dart';
import 'package:tamely/ui/community/community_main_view/play_buddies/play_buddies_view_model.dart';
import 'package:tamely/ui/community/community_main_view/strays_near_you/strays_near_you_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/list_constant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/rounded_text.dart';

class PlayBuddiesProfileTile extends StatelessWidget {
  const PlayBuddiesProfileTile({Key? key, required this.profile})
      : super(key: key);

  final GetAnimalsByLocationDetailsResponse profile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      // child: Row(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Align(
      //       alignment: Alignment.center,
      //       child: Expanded(
      //         flex: 1,
      //         child: CircleAvatar(
      //           radius: 30,
      //           backgroundImage: NetworkImage(profile.profileImgUrl),
      //         ),
      //       ),
      //     ),
      //     horizontalSpaceTiny,
      //     Expanded(
      //       flex: 3,
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           AppText.body2(
      //             profile.name,
      //             color: colors.black,
      //           ),
      //           verticalSpaceTiny,
      //           Row(
      //             mainAxisSize: MainAxisSize.max,
      //             children: [
      //               AppText.caption(
      //                   "${profile.animalType}(${profile.animalBreed})"),
      //               CircleAvatar(
      //                 radius: 2,
      //                 backgroundColor: colors.primary,
      //               ),
      //               AppText.caption(
      //                 "Age:",
      //               ),
      //               AppText.caption(
      //                 "${profile.age}years",
      //                 color: colors.black,
      //               )
      //             ],
      //           ),
      //           verticalSpaceTiny,
      //           AppText.caption(
      //             profile.shortBio,
      //             color: colors.black,
      //           ),
      //           verticalSpaceTiny,
      //           AppText.caption(
      //             "Play time:${profile.fromTime}-${profile.fromTime}",
      //           ),
      //         ],
      //       ),
      //     ),
      //     Expanded(flex: 1, child: RoundedDecoratedText(value: "7 km away"))
      //   ],
      // ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(profile.avatar ?? emptyProfileImgUrl),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AppText.body2(
                  profile.name ?? "-",
                  color: colors.black,
                ),
                Spacer(),
                RoundedDecoratedText(value: "${profile.distance ?? 0} km away"),
              ],
            ),
            verticalSpaceSmall,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  AppText.caption(
                      ("${profile.animalType}${(profile.breed ?? "").isEmpty ? "" : "(${profile.breed} )"}")
                          .replaceAll(",", "")),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                      radius: 2,
                      backgroundColor: colors.primary,
                    ),
                  ),
                  AppText.caption(
                    "${(profile.age ?? "").contains("-") ? "DOB : " : ""}",
                  ),
                  AppText.caption(
                    "${profile.age}${(profile.age ?? "").contains("-") ? "" : ageTypeValues.contains(profile.age ?? "") ? "" : "years"}",
                    color: colors.black,
                  ),
                ],
              ),
            ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       AppText.caption(
            //           "${profile.animalType}(${profile.animalBreed})"),
            //       CircleAvatar(
            //         radius: 2,
            //         backgroundColor: colors.primary,
            //       ),
            //       AppText.caption(
            //         "Age:",
            //       ),
            //       AppText.caption(
            //         "${profile.age}years",
            //         color: colors.black,
            //       )
            //     ],
            //   ),
            // ),
            Visibility(
              visible: (profile.bio ?? "").isNotEmpty,
              child: Column(
                children: [
                  verticalSpaceSmall,
                  AppText.caption(
                    (profile.bio ?? "---").trimRight(),
                    color: colors.black,
                  ),
                ],
              ),
            ),
            verticalSpaceSmall,
            AppText.caption(
              "Play time : ${profile.playFrom ?? ""} - ${profile.playTo ?? ""}",
            ),
          ],
        ),
      ),
    );
  }
}
