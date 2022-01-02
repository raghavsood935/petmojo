import 'package:flutter/material.dart';
import 'package:tamely/models/get_animals_by_location_response.dart';
import 'package:tamely/ui/community/community_main_view/strays_near_you/strays_near_you_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class StrayAnimalProfileTile extends StatelessWidget {
  const StrayAnimalProfileTile({Key? key, required this.profile})
      : super(key: key);

  final GetAnimalsByLocationDetailsResponse profile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      // child: Row(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisSize: MainAxisSize.max,
      //   children: [
      //     Expanded(
      //       flex: 1,
      //       child: CircleAvatar(
      //         radius: 30,
      //         backgroundImage: NetworkImage(profile.profileImgUrl),
      //       ),
      //     ),
      //     Expanded(
      //       flex: 3,
      //       child: Padding(
      //         padding: const EdgeInsets.only(left: 10),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             AppText.body2(
      //               profile.name,
      //               color: colors.black,
      //             ),
      //             verticalSpaceTiny,
      //             AppText.caption(
      //                 "${profile.animalType}(${profile.animalBreed})"),
      //             verticalSpaceTiny,
      //             AppText.caption(profile.location),
      //             verticalSpaceTiny,
      //             AppText.body1("Guardians : ${profile.guardians}"),
      //           ],
      //         ),
      //       ),
      //     ),
      //     Expanded(
      //       flex: 1,
      //       child: Container(
      //         padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
      //         decoration: BoxDecoration(
      //           color: colors.lightBlueBackgroundColor,
      //           borderRadius: BorderRadius.circular(5),
      //         ),
      //         child: AppText.caption(
      //           "7 km away",
      //           textAlign: TextAlign.center,
      //           color: colors.blueColor,
      //         ),
      //       ),
      //     )
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
            AppText.body2(
              profile.name ?? "-",
              color: colors.black,
            ),
            verticalSpaceTiny,
            // AppText.caption("${profile.animalType}(${profile.animalBreed})"),
            verticalSpaceTiny,
            // AppText.caption(profile.),
            verticalSpaceTiny,
            AppText.body1(
                "Guardians : ${profile.guardians!.first.guardianDetailsResponse!.fullName ?? "-"}"),
          ],
        ),
        trailing: Container(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
          decoration: BoxDecoration(
            color: colors.lightBlueBackgroundColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: AppText.caption(
            "7 km away",
            textAlign: TextAlign.center,
            color: colors.blueColor,
          ),
        ),
      ),
    );
  }
}
