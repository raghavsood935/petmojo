import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class BasicBottomSheet extends StatefulWidget {
  final SheetRequest sheetRequest;
  final Function(SheetResponse) onDialogTap;

  const BasicBottomSheet(
      {Key? key, required this.sheetRequest, required this.onDialogTap})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _SpecsState();
}

class _SpecsState extends State<BasicBottomSheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return new Container(
      height: 500,
      //so you don't have to change MaterialApp canvasColor
      child: new Container(
          decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0))),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                widget.sheetRequest.title ?? "",
                style: theme.textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Select Specification",
                style: theme.textTheme.subtitle1
                    ?.copyWith(fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          )),
    );
  }
}
