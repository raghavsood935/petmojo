import 'package:flutter/material.dart';
import 'package:kubelite/util/Color.dart';

class AppInputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final Widget? leading;
  final Widget? trailing;
  final bool password;
  final void Function()? trailingTapped;

  final circularBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  AppInputField({
    Key? key,
    required this.controller,
    this.label = '',
    this.hint = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.password = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      /// Overriding the default blue color.
      ///
      /// We can also avoid this by changing the [primarySwatch] in MaterialApp
      data: ThemeData(primaryColor: colors.primary),
      child: TextField(
        controller: controller,
        style: TextStyle(height: 1),
        obscureText: password,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          prefixIcon: leading,
          suffixIcon: trailing != null
              ? GestureDetector(
                  onTap: trailingTapped,
                  child: trailing,
                )
              : null,
          border: circularBorder.copyWith(
            borderSide: BorderSide(color: colors.kcLightGreyColor),
          ),
          errorBorder: circularBorder.copyWith(
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedBorder: circularBorder.copyWith(
            borderSide: BorderSide(color: colors.primary),
          ),
          enabledBorder: circularBorder.copyWith(
            borderSide: BorderSide(color: colors.kcLightGreyColor),
          ),
          labelStyle: TextStyle(fontSize: 16, color: colors.kcPrimaryTextColor),
          hintStyle: TextStyle(fontSize: 14, color: colors.kcLightGreyColor),
        ),
      ),
    );
  }
}
