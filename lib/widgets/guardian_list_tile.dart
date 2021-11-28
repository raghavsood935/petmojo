import 'package:flutter/material.dart';
import 'package:tamely/models/GuardiansProfile.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class GuardiansListTile extends StatelessWidget {
  const GuardiansListTile({Key? key, required this.guardiansProfile})
      : super(key: key);

  final GuardiansProfile guardiansProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      width: 150,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: colors.kcGreyBackground,
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(guardiansProfile.profileImgUrl),
          ),
          verticalSpaceTiny,
          AppText.body1(guardiansProfile.name),
          verticalSpaceTiny,
          AppText.caption(
            guardiansProfile.location,
            isSingleLined: true,
          ),
        ],
      ),
    );
  }
}
