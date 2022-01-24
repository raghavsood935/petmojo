import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/get_animals_by_location_response.dart';
import 'package:tamely/models/list_of_guardians.dart';
import 'package:tamely/ui/community/community_main_view/strays_near_you/stray_profile_list_model.dart';
import 'package:tamely/ui/community/community_main_view/strays_near_you/strays_near_you_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/location_helper.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class StrayAnimalProfileTile extends StatefulWidget {
  const StrayAnimalProfileTile({Key? key, required this.profile})
      : super(key: key);

  final GetAnimalsByLocationDetailsResponse profile;

  @override
  State<StrayAnimalProfileTile> createState() => _StrayAnimalProfileTileState();
}

class _StrayAnimalProfileTileState extends State<StrayAnimalProfileTile> {
  @override
  Widget build(BuildContext context) {
    // setState(() {
    //
    // });
    return ViewModelBuilder<StrayProfileListTileModel>.reactive(
      viewModelBuilder: () => StrayProfileListTileModel(),
      onModelReady: (model) => model.getAddress(widget.profile),
      builder: (context, model, child) => Padding(
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
            backgroundImage:
                NetworkImage(widget.profile.avatar ?? emptyProfileImgUrl),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  AppText.body2(
                    widget.profile.name ?? "-",
                    color: colors.black,
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                      color: colors.lightBlueBackgroundColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: AppText.caption(
                      "${widget.profile.distance} km away",
                      textAlign: TextAlign.center,
                      color: colors.blueColor,
                    ),
                  ),
                ],
              ),
              verticalSpaceTiny,
              AppText.caption(
                  ("${widget.profile.animalType}${(widget.profile.breed ?? "").isEmpty ? "" : "(${widget.profile.breed})"}")
                      .replaceAll(",", "")),
              verticalSpaceTiny,
              AppText.caption(model.address),
              verticalSpaceTiny,
              AppText.body1(guardianText(widget.profile.guardians ?? [])),
            ],
          ),
        ),
      ),
    );
  }
}

String guardianText(List<GuardianResponse> list) {
  String result = "";
  if (list.length == 0) {
    result = "";
  } else if (list.length == 1) {
    result =
        "Guardians : ${list.first.guardianDetailsResponse!.fullName ?? "-"}";
  } else if (list.length == 2) {
    result =
        "Guardians : ${list.first.guardianDetailsResponse!.fullName ?? "-"} and ${list.length - 1} other";
  } else {
    result =
        "Guardians : ${list.first.guardianDetailsResponse!.fullName ?? "-"} and ${list.length - 1} others";
  }
  return result;
}
