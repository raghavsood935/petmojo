import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

class FollowBtn extends StatefulWidget {
  bool initialState = false;
  String trueValue;
  String falseValue;

  bool? isStatic;

  FollowBtn(
      {Key? key,
      required this.initialState,
      required this.trueValue,
      required this.falseValue,
      this.isStatic})
      : super(key: key);

  @override
  _FollowBtnState createState() => _FollowBtnState();
}

class _FollowBtnState extends State<FollowBtn> {
  @override
  Widget build(BuildContext context) {
    return widget.isStatic ?? false
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: colors.primary),
              color: widget.initialState ? Colors.white : colors.primary,
            ),
            child: widget.initialState
                ? AppText.caption(
                    widget.trueValue,
                    color: colors.primary,
                    textAlign: TextAlign.center,
                  )
                : AppText.caption(
                    widget.falseValue,
                    color: Colors.white,
                    textAlign: TextAlign.center,
                  ))
        : GestureDetector(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: colors.primary),
                  color: widget.initialState ? Colors.white : colors.primary,
                ),
                child: widget.initialState
                    ? AppText.caption(
                        widget.trueValue,
                        color: colors.primary,
                        textAlign: TextAlign.center,
                      )
                    : AppText.caption(
                        widget.falseValue,
                        color: Colors.white,
                        textAlign: TextAlign.center,
                      )),
            onTap: () {
              if (!(widget.isStatic ?? false)) {
                setState(() {
                  widget.initialState = !widget.initialState;
                });
              }
            },
          );
  }
}
