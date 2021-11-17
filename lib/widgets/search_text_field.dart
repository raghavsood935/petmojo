import 'package:flutter/material.dart';
import 'package:tamely/util/Color.dart';

class SearchTextField extends StatefulWidget {
  SearchTextField(
      {Key? key,
      required this.controller,
      required this.onChange,
      required this.hint})
      : super(key: key);

  TextEditingController controller;
  String hint;
  Function(String value) onChange;

  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final roundedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: "Search for guardians",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.only(
            top: 0,
            bottom: 0,
            right: 20,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: colors.primary,
          ),
          suffix: GestureDetector(
            onTap: () {
              widget.controller.clear();
              widget.onChange("");
            },
            child: Icon(
              Icons.cancel_outlined,
              size: 20,
            ),
          ),
          border: roundedBorder.copyWith(
            borderSide: BorderSide(color: colors.kcLightGreyColor),
          ),
          focusedBorder: roundedBorder.copyWith(
            borderSide: BorderSide(color: colors.primary),
          ),
          enabledBorder: roundedBorder.copyWith(
            borderSide: BorderSide(color: colors.kcLightGreyColor),
          ),
          labelStyle: TextStyle(fontSize: 16, color: colors.kcPrimaryTextColor),
          hintStyle: TextStyle(fontSize: 14, color: colors.kcLightGreyColor),
        ),
        onChanged: widget.onChange,
      ),
    );
  }
}
