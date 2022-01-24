import 'package:flutter/material.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

class LocationDialog extends StatelessWidget {
  const LocationDialog(
      {Key? key, required this.dialogRequest, required this.onDialogTap})
      : super(key: key);

  final DialogRequest dialogRequest;
  final Function(DialogResponse) onDialogTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                verticalSpaceMedium,
                AppText.subheading(
                  "Why we collect location?",
                  textAlign: TextAlign.center,
                ),
                verticalSpaceSmall,
                AppText.body1(
                  "Tamely collects location data to enable the service listing and animal profile listing even when the app is closed or not in use.",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          verticalSpaceRegular,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () =>
                      onDialogTap(DialogResponse(confirmed: true, data: false)),
                  child: Container(
                    width: 90,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: colors.primary,
                        width: 1,
                      ),
                    ),
                    child: Text(
                      "Deny",
                      style: TextStyle(
                          color: colors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () =>
                      onDialogTap(DialogResponse(confirmed: true, data: true)),
                  child: Container(
                    width: 90,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: colors.primary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Accept",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
          verticalSpaceRegular,
        ],
      ),
    );
  }
}
