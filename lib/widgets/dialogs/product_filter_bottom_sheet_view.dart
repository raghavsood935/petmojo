import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class ProductFilterBottomSheetView extends StatefulWidget {
  final SheetRequest sheetRequest;
  final Function(SheetResponse) onDialogTap;

  const ProductFilterBottomSheetView(
      {Key? key, required this.sheetRequest, required this.onDialogTap})
      : super(key: key);

  @override
  _ProductFilterBottomSheetViewState createState() =>
      _ProductFilterBottomSheetViewState();
}

class _ProductFilterBottomSheetViewState
    extends State<ProductFilterBottomSheetView> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
