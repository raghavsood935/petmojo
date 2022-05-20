import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';

class AppInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String hint;
  final String errorText;
  final Widget? leading;
  final Widget? trailing;
  final Widget? suffix;
  final bool password;
  final bool isPaddingNeeded;
  final bool readOnly;
  final bool autoFocus;
  final bool isDDM;
  final TextInputType? textInputType;
  final TextCapitalization? textCapitalization;
  final void Function()? trailingTapped;
  final void Function(String?)? onChanged;
  final int? maxLength;
  final bool isBoxBorder;
  final Color? fillColor;

  final boxBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
  );

  final lineBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  AppInputField({
    Key? key,
    required this.controller,
    this.label = '',
    this.hint = '',
    this.errorText = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.password = false,
    this.textInputType = TextInputType.name,
    this.readOnly = false,
    this.isDDM = false,
    this.isPaddingNeeded = true,
    this.autoFocus = false,
    this.textCapitalization = TextCapitalization.sentences,
    this.onChanged,
    this.maxLength,
    this.isBoxBorder = false,
    this.suffix,
    this.fillColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryColor: colors.primary),
      child: TextField(
        maxLength: maxLength,
        textCapitalization: textCapitalization!,
        onChanged: onChanged,
        controller: controller ?? TextEditingController(),
        keyboardType: textInputType,
        style: TextStyle(height: 1),
        obscureText: password,
        readOnly: readOnly,
        maxLines: null,
        autofocus: autoFocus,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          suffix: suffix,
          hintText: hint,
          labelText: label,
          errorText: errorText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: isDDM
              ? EdgeInsets.zero
              : isPaddingNeeded
                  ? const EdgeInsets.symmetric(horizontal: 10)
                  : EdgeInsets.zero,
          prefixIcon: leading,
          suffixIcon: trailing != null
              ? GestureDetector(
                  onTap: trailingTapped,
                  child: trailing,
                )
              : null,
          border: isBoxBorder
              ? boxBorder.copyWith(
                  borderSide: BorderSide(color: colors.kcLightGreyColor),
                )
              : lineBorder.copyWith(
                  borderSide: BorderSide(color: colors.kcLightGreyColor),
                ),
          focusedBorder: isBoxBorder
              ? boxBorder.copyWith(
                  borderSide: BorderSide(color: colors.primary),
                )
              : lineBorder.copyWith(
                  borderSide: BorderSide(color: colors.primary),
                ),
          errorBorder: isBoxBorder
              ? boxBorder.copyWith(
                  borderSide: BorderSide(color: colors.kcLightGreyColor),
                )
              : lineBorder.copyWith(
                  borderSide: BorderSide(color: colors.kcLightGreyColor),
                ),
          enabledBorder: isBoxBorder
              ? boxBorder.copyWith(
                  borderSide: BorderSide(color: colors.kcLightGreyColor),
                )
              : lineBorder.copyWith(
                  borderSide: BorderSide(color: colors.kcLightGreyColor),
                ),
          labelStyle: TextStyle(fontSize: 16, color: colors.kcPrimaryTextColor),
          hintStyle: TextStyle(fontSize: 14, color: colors.kcLightGreyColor),
        ),
      ),
    );
  }
}
