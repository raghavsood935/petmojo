import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';

import 'app_text.dart';

class FollowingStaticBtn extends StatelessWidget {
  const FollowingStaticBtn(
      {Key? key,
      required this.trueValue,
      required this.falseValue,
      required this.state})
      : super(key: key);

  final String trueValue;
  final String falseValue;
  final bool state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: colors.primary),
        color: state ? Colors.white : colors.primary,
      ),
      child: state
          ? AppText.caption(
              trueValue,
              color: colors.primary,
              textAlign: TextAlign.center,
            )
          : AppText.caption(
              falseValue,
              color: Colors.white,
              textAlign: TextAlign.center,
            ),
    );
  }
}
