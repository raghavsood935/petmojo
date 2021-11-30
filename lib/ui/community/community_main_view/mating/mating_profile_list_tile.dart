import 'package:flutter/material.dart';
import 'package:tamely/ui/community/community_main_view/mating/mating_view_model.dart';
import 'package:tamely/ui/community/community_main_view/play_buddies/play_buddies_view_model.dart';
import 'package:tamely/ui/community/community_main_view/strays_near_you/strays_near_you_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/rounded_text.dart';

class MatingProfileTile extends StatelessWidget {
  const MatingProfileTile({Key? key, required this.profile}) : super(key: key);

  final MatingAnimalProfile profile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Expanded(
              flex: 1,
              child: SizedBox(
                height: 75,
                width: 75,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(profile.profileImgUrl),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: CircleAvatar(
                        backgroundColor: colors.primary,
                        child: Icon(
                          profile.gender == "Male"
                              ? Icons.male_outlined
                              : Icons.female_outlined,
                          color: colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          horizontalSpaceTiny,
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.body2(
                  profile.name,
                  color: colors.black,
                ),
                verticalSpaceTiny,
                Row(
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
                verticalSpaceTiny,
                AppText.caption(
                  "Registered with Indian kennel club",
                  color: colors.black,
                ),
                verticalSpaceTiny,
                Row(
                  children: [
                    Expanded(
                      child: Row(children: [
                        Icon(Icons.favorite_border),
                        AppText.caption(
                          "250 like",
                          color: colors.black,
                        )
                      ]),
                    ),
                    Expanded(
                      child: Row(children: [
                        Icon(Icons.visibility_outlined),
                        AppText.caption(
                          "250 views",
                          color: colors.black,
                        )
                      ]),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(flex: 1, child: RoundedDecoratedText(value: "7 km away"))
        ],
      ),
    );
  }
}
