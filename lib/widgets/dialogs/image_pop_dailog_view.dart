import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';

class ImagePopUpView extends StatelessWidget {
  ImagePopUpView({Key? key, required this.url}) : super(key: key);

  String url;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "image",
      child: Scaffold(
        body: Center(
          child: Image.network(
            url,
            errorBuilder: errorBuilder,
          ),
        ),
        backgroundColor: colors.black,
      ),
    );
  }
}

Widget errorBuilder(BuildContext ct, Object o, StackTrace? s) {
  return Image.network(
    emptyProfileImgUrl,
    width: screenWidth(ct),
    height: screenWidth(ct),
    fit: BoxFit.cover,
  );
}
