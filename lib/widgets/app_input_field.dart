import 'package:flutter/material.dart';
import 'package:kubelite/util/Color.dart';

class AppInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String hint;
  final String errorText;
  final Widget? leading;
  final Widget? trailing;
  final bool password;
  final bool readOnly;
  final TextInputType? textInputType;
  final TextCapitalization? textCapitalization;
  final bool isSearchField;
  final void Function()? trailingTapped;

  final circularBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  final roundedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
  );

  AppInputField(
      {Key? key,
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
      this.isSearchField = false,
      this.textCapitalization = TextCapitalization.sentences})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      /// Overriding the default blue color.
      ///
      /// We can also avoid this by changing the [primarySwatch] in MaterialApp
      data: ThemeData(primaryColor: colors.primary),
      child: TextField(
        textCapitalization: textCapitalization!,
        controller: controller ?? TextEditingController(),
        keyboardType: textInputType,
        style: TextStyle(height: 1),
        obscureText: password,
        readOnly: readOnly,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          errorText: errorText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          prefixIcon: isSearchField
              ? Icon(
                  Icons.search,
                  color: colors.primary,
                )
              : leading,
          suffixIcon: trailing != null
              ? GestureDetector(
                  onTap: trailingTapped,
                  child: trailing,
                )
              : null,
          border: isSearchField
              ? roundedBorder.copyWith(
                  borderSide: BorderSide(color: colors.kcLightGreyColor),
                )
              : circularBorder.copyWith(
                  borderSide: BorderSide(color: colors.kcLightGreyColor),
                ),
          errorBorder: isSearchField
              ? roundedBorder.copyWith(
                  borderSide: BorderSide(color: Colors.red),
                )
              : circularBorder.copyWith(
                  borderSide: BorderSide(color: Colors.red),
                ),
          focusedBorder: isSearchField
              ? roundedBorder.copyWith(
                  borderSide: BorderSide(color: colors.primary),
                )
              : circularBorder.copyWith(
                  borderSide: BorderSide(color: colors.primary),
                ),
          enabledBorder: isSearchField
              ? roundedBorder.copyWith(
                  borderSide: BorderSide(color: colors.kcLightGreyColor),
                )
              : circularBorder.copyWith(
                  borderSide: BorderSide(color: colors.kcLightGreyColor),
                ),
          labelStyle: TextStyle(fontSize: 16, color: colors.kcPrimaryTextColor),
          hintStyle: TextStyle(fontSize: 14, color: colors.kcLightGreyColor),
        ),
      ),
    );
  }
}
