import 'package:flutter/material.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/widgets/app_text.dart';

class LoadingView extends StatelessWidget {
  final String? text;
  final Color? backColor;
  final Color? progressColor;
  const LoadingView({Key? key, this.text, this.backColor, this.progressColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backColor ?? Colors.black.withOpacity(0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Center(
              child: CircularProgressIndicator(
            backgroundColor: colors.kcGreyBackground,
            color: progressColor ?? Colors.black,
          )),
          SizedBox(
            height: 10,
          ),
          AppText.body(
            text ?? "Awaiting data...",
            color: colors.kcPrimaryTextColor,
          )
        ],
      ),
    );
  }
}
