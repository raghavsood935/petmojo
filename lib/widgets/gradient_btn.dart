import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';

import 'app_text.dart';

class GradiantBtn extends StatelessWidget {
  const GradiantBtn({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF3AD4E0), Color(0xFF2EB5BF)],
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: AppText.body1(
        title,
        color: colors.white,
      ),
    );
  }
}
