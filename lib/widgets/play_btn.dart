import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class VideoItem extends StatelessWidget {
  VideoItem({Key? key, this.bgImg, this.text}) : super(key: key);

  String? bgImg;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: commonPadding,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFFCEE3E6),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: AppText.bodyBold(
              text ?? "Want to watch us in action?",
              textAlign: TextAlign.start,
            ),
          ),
          Positioned(
            top: 10,
            bottom: 10,
            right: 0,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xFFEFEFEF),
                child: Icon(
                  Icons.play_arrow_sharp,
                  size: 20,
                  color: colors.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
