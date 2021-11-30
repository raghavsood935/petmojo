import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

class FollowRequestBtn extends StatefulWidget {
  bool initialState = false;
  FollowRequestBtn({
    Key? key,
    required this.initialState,
  }) : super(key: key);

  @override
  _FollowRequestBtnState createState() => _FollowRequestBtnState();
}

class _FollowRequestBtnState extends State<FollowRequestBtn> {
  var isVisible1 = true;
  var isVisible2 = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            child: Visibility(
              visible: isVisible1,
              child: Container(
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: colors.primary),
                    color: widget.initialState ? colors.white : colors.primary,
                  ),
                  child: widget.initialState
                      ? AppText.body('Decline', color: colors.primary)
                      : AppText.body('Declined', color: colors.white)),
            ),
            onTap: () {
              setState(() {
                widget.initialState = !widget.initialState;
                isVisible2 = !isVisible2;
              });
            }),
        SizedBox(width: 5),
        GestureDetector(
            child: Visibility(
              visible: isVisible2,
              child: Container(
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: colors.primary),
                    color: widget.initialState ? colors.primary : colors.white,
                  ),
                  child: widget.initialState
                      ? AppText.body('Confirm', color: colors.white)
                      : AppText.body('Confirmed', color: colors.primary)),
            ),
            onTap: () {
              setState(() {
                widget.initialState = !widget.initialState;
                isVisible1 = !isVisible1;
              });
            }),
      ],
    );
  }
}
