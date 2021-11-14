import 'package:flutter/cupertino.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';

import 'app_text.dart';

class WithTitleItem extends StatelessWidget {
  WithTitleItem(
      {Key? key,
      required this.title,
      required this.child,
      required this.isManitory})
      : super(key: key);
  Widget child;
  String title;
  bool isManitory;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppText.caption(
              title,
              color: colors.black,
            ),
            isManitory
                ? AppText.caption(
                    "*",
                    color: colors.primary,
                  )
                : SizedBox(),
          ],
        ),
        child,
      ],
    );
  }
}
