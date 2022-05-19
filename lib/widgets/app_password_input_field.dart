import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';

class AppPasswordInputField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final Widget? leading;
  final Widget? trailing;
  final bool? noNeedBorder;

  AppPasswordInputField(
      {Key? key,
      required this.controller,
      this.label = '',
      this.hint = '',
      this.leading,
      this.trailing,
      this.noNeedBorder})
      : super(key: key);

  @override
  _AppPasswordInputFieldState createState() => _AppPasswordInputFieldState();
}

class _AppPasswordInputFieldState extends State<AppPasswordInputField> {
  bool _passwordVisible = false;
  final circularBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      /// Overriding the default blue color.
      ///
      /// We can also avoid this by changing the [primarySwatch] in MaterialApp
      data: ThemeData(primaryColor: colors.primary),
      child: Container(
        margin: EdgeInsets.only(left: 0),
        child: TextField(
          controller: widget.controller,
          style: TextStyle(height: 1),
          obscureText: !_passwordVisible,
          decoration: InputDecoration(
            hintText: widget.hint,
            labelText: widget.label,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            prefixIcon: widget.leading,
            suffixIcon: IconButton(
              icon: Icon(
                // Based on passwordVisible state choose the icon
                _passwordVisible ? Icons.visibility : Icons.visibility_off,
                color: colors.kcMediumGreyColor,
              ),
              onPressed: () {
                // Updating the state i.e. toggle the state of passwordVisible variable
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            ),
            border: (widget.noNeedBorder ?? false)
                ? InputBorder.none
                : circularBorder.copyWith(
                    borderSide: BorderSide(color: colors.kcLightGreyColor),
                  ),
            errorBorder: (widget.noNeedBorder ?? false)
                ? InputBorder.none
                : circularBorder.copyWith(
                    borderSide: BorderSide(color: Colors.red),
                  ),
            focusedBorder: (widget.noNeedBorder ?? false)
                ? InputBorder.none
                : circularBorder.copyWith(
                    borderSide: BorderSide(color: colors.primary),
                  ),
            enabledBorder: (widget.noNeedBorder ?? false)
                ? InputBorder.none
                : circularBorder.copyWith(
                    borderSide: BorderSide(color: colors.kcLightGreyColor),
                  ),
            labelStyle: TextStyle(fontSize: 16, color: colors.kcPrimaryTextColor),
            hintStyle: TextStyle(
                fontSize:16,
                color: (widget.noNeedBorder ?? false)
                    ? Color(0xFFABB3BB)
                    : colors.kcLightGreyColor),
          ),
        ),
      ),
    );
  }
}
