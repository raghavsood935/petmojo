import 'package:flutter/material.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/widgets/app_text.dart';

class FollowBtn extends StatefulWidget {
  bool initialState = false;

  FollowBtn({Key? key, required this.initialState}) : super(key: key);

  @override
  _FollowBtnState createState() => _FollowBtnState();
}

class _FollowBtnState extends State<FollowBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          height: 30,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: colors.primary),
            color: widget.initialState ? Colors.white : colors.primary,
          ),
          child: widget.initialState
              ? AppText.body("Following", color: colors.primary)
              : AppText.body("Follow", color: Colors.white)),
      onTap: () {
        setState(() {
          widget.initialState = !widget.initialState;
        });
      },
    );
  }
}
