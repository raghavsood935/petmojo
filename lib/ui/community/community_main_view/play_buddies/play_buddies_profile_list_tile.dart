import 'package:flutter/material.dart';
import 'package:tamely/ui/community/community_main_view/play_buddies/play_buddies_view_model.dart';
import 'package:tamely/ui/community/community_main_view/strays_near_you/strays_near_you_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/rounded_text.dart';

class PlayBuddiesProfileTile extends StatelessWidget {
  const PlayBuddiesProfileTile({Key? key, required this.profile})
      : super(key: key);

  final PlayBuddiesAnimalProfile profile;

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
          backgroundImage: NetworkImage(profile.profileImgUrl),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText.body2(
              profile.name,
              color: colors.black,
            ),
            verticalSpaceTiny,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  AppText.caption(
                      "${profile.animalType}(${profile.animalBreed})"),
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: colors.primary,
                  ),
                  AppText.caption(
                    "Age:",
                  ),
                  AppText.caption(
                    "${profile.age}years",
                    color: colors.black,
                  )
                ],
              ),
            ),
            verticalSpaceTiny,
            AppText.caption(
              profile.shortBio,
              color: colors.black,
            ),
            verticalSpaceTiny,
            AppText.caption(
              "Play time:${profile.fromTime}-${profile.fromTime}",
            ),
          ],
        ),
        trailing: RoundedDecoratedText(value: "7 km away"),
      ),
    );
  }
}
