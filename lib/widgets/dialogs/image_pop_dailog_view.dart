import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/ui/community/community_main_view/community_main_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';

class ImagePopUpDialogView extends StatelessWidget {
  const ImagePopUpDialogView(
      {Key? key, required this.dialogRequest, required this.onDialogTap})
      : super(key: key);

  final DialogRequest dialogRequest;
  final Function(DialogResponse) onDialogTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: screenWidthPercentage(context, percentage: 0.75),
      // height: screenWidthPercentage(context, percentage: 0.75),
      decoration: BoxDecoration(
        border: Border.all(color: colors.primary, width: 2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          dialogRequest.data,
          width: screenWidthPercentage(context, percentage: 0.75),
          height: screenWidthPercentage(context, percentage: 0.75),
          errorBuilder: errorBuilder,
        ),
      ),
    );
  }
}

Widget errorBuilder(BuildContext ct, Object o, StackTrace? s) {
  return Image.network(
    emptyProfileImgUrl,
    width: screenWidthPercentage(ct, percentage: 0.75),
    height: screenWidthPercentage(ct, percentage: 0.75),
    fit: BoxFit.cover,
  );
}
