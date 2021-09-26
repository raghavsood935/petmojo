import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/widgets/app_text.dart';

class MainButtonWidget extends StatelessWidget {
  const MainButtonWidget(
      {Key? key,
      required this.onMainButtonTapped,
      required this.mainButtonTitle})
      : super(key: key);

  final VoidCallback onMainButtonTapped;
  final String mainButtonTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: onMainButtonTapped,
        child: AppText.subheading(mainButtonTitle, color: Colors.white),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colors.primary),
          padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
    );
  }
}
