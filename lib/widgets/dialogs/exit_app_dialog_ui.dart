import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class ExitAppDialogUi extends StatelessWidget {
  final DialogRequest dialogRequest;
  final Function(DialogResponse) onDialogTap;

  const ExitAppDialogUi(
      {Key? key, required this.dialogRequest, required this.onDialogTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppText.titleBold("Alert!"),
          verticalSpaceRegular,
          AppText.body1("Are you sure do you want to exit the app?"),
          verticalSpaceRegular,
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () =>
                      onDialogTap(DialogResponse(confirmed: false)),
                  child: AppText.bodyBold("CANCEL"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () => onDialogTap(DialogResponse(confirmed: true)),
                  child: AppText.bodyBold("EXIT"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
