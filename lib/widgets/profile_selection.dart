import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/Constant.dart';

class ProfileSelectionAppBar extends StatelessWidget {
  const ProfileSelectionAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(appName);
  }
}

class NutesLogoRoundedBorder extends StatelessWidget {
  const NutesLogoRoundedBorder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colors.primary, borderRadius: BorderRadius.circular(100)),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
      child: Text(
        'nutes',
      ),
    );
  }
}
