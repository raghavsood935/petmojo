import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';

class CustomCircularAvatar extends StatelessWidget {
  CustomCircularAvatar({
    Key? key,
    required this.radius,
    required this.imgPath,
  }) : super(key: key);

  final double radius;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: colors.primary,
      radius: radius,
      child: CircleAvatar(
        backgroundColor: colors.white,
        radius: (radius - 2.0),
        child: CircleAvatar(
          backgroundColor: colors.lightBackgroundColor,
          radius: (radius - 4.0),
          backgroundImage: NetworkImage(imgPath),
        ),
      ),
    );
  }
}
