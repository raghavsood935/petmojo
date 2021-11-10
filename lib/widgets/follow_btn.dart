import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

class FollowBtn extends StatefulWidget {
  bool initialState = false;
  String trueValue;
  String falseValue;

  FollowBtn(
      {Key? key,
      required this.initialState,
      required this.trueValue,
      required this.falseValue})
      : super(key: key);

  @override
  _FollowBtnState createState() => _FollowBtnState();
}

class _FollowBtnState extends State<FollowBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: colors.primary),
            color: widget.initialState ? Colors.white : colors.primary,
          ),
          child: widget.initialState
              ? AppText.caption(widget.trueValue, color: colors.primary)
              : AppText.caption(widget.falseValue, color: Colors.white)),
      onTap: () {
        setState(() {
          widget.initialState = !widget.initialState;
        });
      },
    );
  }
}
