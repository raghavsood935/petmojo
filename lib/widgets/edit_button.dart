import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';

import 'app_text.dart';

class EditButton extends StatelessWidget {
  EditButton({Key? key}) : super(key: key);

  EditButton.small({this.isSmall = true});

  bool isSmall = false;

  @override
  Widget build(BuildContext context) {
    // return isSmall
    //     ? SvgPicture.asset(
    //         editIcon,
    //         color: colors.primary,
    //         height: 14,
    //         width: 14,
    //       )
    //     : SvgPicture.asset(
    //         editIcon,
    //         color: colors.primary,
    //       );

    return Row(mainAxisSize: MainAxisSize.min, children: [
      Icon(
        Icons.edit,
        color: colors.primary,
        size: isSmall ? 14 : 20,
      ),
      isSmall
          ? AppText.caption(
              "Edit",
              color: colors.primary,
            )
          : AppText.body2(
              "Edit",
              color: colors.primary,
            ),
    ]);
  }
}
