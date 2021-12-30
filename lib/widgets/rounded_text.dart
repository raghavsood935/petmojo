import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';

import 'app_text.dart';

class RoundedDecoratedText extends StatelessWidget {
  const RoundedDecoratedText({Key? key, required this.value}) : super(key: key);
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
      decoration: BoxDecoration(
        color: colors.lightBlueBackgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: AppText.caption(
        value,
        textAlign: TextAlign.center,
        color: colors.blueColor,
      ),
    );
  }
}
