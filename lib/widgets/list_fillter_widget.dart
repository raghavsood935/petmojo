import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tamely/util/Color.dart';

import 'app_text.dart';

class FilterListWidget extends StatefulWidget {
  FilterListWidget(
      {Key? key,
      required this.value,
      required this.listOfItems,
      required this.onChange})
      : super(key: key);

  String value;
  List<String> listOfItems;
  Function(String? value) onChange;

  @override
  _FilterListWidgetState createState() => _FilterListWidgetState();
}

class _FilterListWidgetState extends State<FilterListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      padding: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: colors.black),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          icon: Icon(Icons.arrow_drop_down),
          value: widget.value,
          items: widget.listOfItems
              .map((item) => DropdownMenuItem<String>(
                    child: AppText.caption(item, color: colors.black),
                    value: item,
                  ))
              .toList(),
          onChanged: widget.onChange,
        ),
      ),
    );
  }
}
