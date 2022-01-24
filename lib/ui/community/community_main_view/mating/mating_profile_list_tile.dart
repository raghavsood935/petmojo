import 'package:flutter/material.dart';
import 'package:tamely/models/get_animals_by_location_response.dart';
import 'package:tamely/ui/community/community_main_view/mating/mating_view_model.dart';
import 'package:tamely/ui/community/community_main_view/play_buddies/play_buddies_view_model.dart';
import 'package:tamely/ui/community/community_main_view/strays_near_you/strays_near_you_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/util/list_constant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/rounded_text.dart';

class MatingProfileTile extends StatelessWidget {
  const MatingProfileTile({Key? key, required this.profile}) : super(key: key);

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
      //         child: SizedBox(
      //           height: 75,
      //           width: 75,
      //           child: Stack(
      //             children: [
      //               Positioned(
      //                 top: 0,
      //                 bottom: 0,
      //                 left: 0,
      //                 right: 0,
      //                 child: CircleAvatar(
      //                   radius: 30,
      //                   backgroundImage:
      //                       NetworkImage(profile.avatar ?? emptyProfileImgUrl),
      //                 ),
      //               ),
      //               // Positioned(
      //               //   bottom: 5,
      //               //   right: 5,
      //               //   child: CircleAvatar(
      //               //     backgroundColor: colors.primary,
      //               //     child: Icon(
      //               //       profile.gender == "Male"
      //               //           ? Icons.male_outlined
      //               //           : Icons.female_outlined,
      //               //       color: colors.white,
      //               //     ),
      //               //   ),
      //               // ),
      //             ],
      //           ),
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
      //             profile.name ?? "-",
      //             color: colors.black,
      //           ),
      //           verticalSpaceTiny,
      //           // Row(
      //           //   mainAxisSize: MainAxisSize.max,
      //           //   children: [
      //           //     AppText.caption(
      //           //         "${profile.animalType}(${profile.animalBreed})"),
      //           //     CircleAvatar(
      //           //       radius: 2,
      //           //       backgroundColor: colors.primary,
      //           //     ),
      //           //     AppText.caption(
      //           //       "Age:",
      //           //     ),
      //           //     AppText.caption(
      //           //       "${profile.age}years",
      //           //       color: colors.black,
      //           //     )
      //           //   ],
      //           // ),
      //           verticalSpaceTiny,
      //           AppText.caption(
      //             "Registered with Indian kennel club",
      //             color: colors.black,
      //           ),
      //           verticalSpaceTiny,
      //           Row(
      //             children: [
      //               Expanded(
      //                 child: Row(children: [
      //                   Icon(Icons.favorite_border),
      //                   AppText.caption(
      //                     "250 like",
      //                     color: colors.black,
      //                   )
      //                 ]),
      //               ),
      //               Expanded(
      //                 child: Row(children: [
      //                   Icon(Icons.visibility_outlined),
      //                   AppText.caption(
      //                     "250 views",
      //                     color: colors.black,
      //                   )
      //                 ]),
      //               )
      //             ],
      //           )
      //         ],
      //       ),
      //     ),
      //     Expanded(flex: 1, child: RoundedDecoratedText(value: "7 km away"))
      //   ],
      // ),

      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: SizedBox(
          width: 60,
          height: 60,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage(profile.avatar ?? emptyProfileImgUrl),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Visibility(
                  visible: profile.gender != "Select",
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: GlobalMethods.isMale(profile.gender)
                        ? Color(0xFF6097B2)
                        : colors.primary,
                    child: Icon(
                      GlobalMethods.isMale(profile.gender)
                          ? Icons.male
                          : Icons.female,
                      color: colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
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
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: colors.lightBlueBackgroundColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: AppText.caption(
                    "${profile.distance ?? 0} km away",
                    textAlign: TextAlign.center,
                    color: colors.blueColor,
                  ),
                ),
              ],
            ),
            verticalSpaceTiny,
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
            verticalSpaceTiny,
            AppText.caption(
              "${(profile.registeredWithIndianKennelClub ?? false) ? "R" : "Not r"}egistered with Indian kennel club",
              color: colors.black,
            ),
            // verticalSpaceSmall,
            // Row(
            //   children: [
            //     GestureDetector(
            //       onTap: () {},
            //       child: Icon(
            //         Icons.favorite_border,
            //         size: 18,
            //       ),
            //     ),
            //     AppText.body1(
            //       " 250",
            //       color: colors.black,
            //     ),
            //     AppText.caption(" likes"),
            //     horizontalSpaceRegular,
            //     Icon(
            //       Icons.visibility_outlined,
            //       size: 20,
            //     ),
            //     AppText.body1(
            //       " 250",
            //       color: colors.black,
            //     ),
            //     AppText.caption(" views"),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
