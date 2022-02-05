import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';

class CustomCircularAvatar extends StatelessWidget {
  CustomCircularAvatar({
    Key? key,
    required this.radius,
    required this.imgPath,
    required this.isHuman,
  }) : super(key: key);

  final double radius;
  final String imgPath;
  final bool isHuman;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: colors.primary,
      radius: radius,
      child: CircleAvatar(
        backgroundColor: colors.white,
        radius: (radius - 2.0),
        child: imgPath != ""
            ? CircleAvatar(
                backgroundColor: colors.lightBackgroundColor,
                radius: (radius - 4.0),
                backgroundImage: NetworkImage(imgPath),
              )
            : CircleAvatar(
                backgroundColor: colors.lightBackgroundColor,
                radius: (radius - 4.0),
                backgroundImage: NetworkImage(
                    isHuman ? emptyProfileImgUrl : emptyAnimalProfileImgUrl),
              ),
      ),
    );
  }
}
