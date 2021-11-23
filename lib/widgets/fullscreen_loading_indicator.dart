import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class FullScreenLoadingDialog extends StatelessWidget {
  const FullScreenLoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        children: [
          CircularProgressIndicator(
            color: colors.primary,
          ),
          horizontalSpaceMedium,
          AppText.body2("Loading..."),
        ],
      ),
    );
  }
}
