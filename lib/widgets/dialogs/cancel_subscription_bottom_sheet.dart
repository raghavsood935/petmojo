import 'package:flutter/material.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

class CancelSubscriptionBottomSheet extends StatelessWidget {
  const CancelSubscriptionBottomSheet(
      {Key? key, required this.sheetRequest, required this.onDialogTap})
      : super(key: key);

  final SheetRequest sheetRequest;
  final Function(SheetResponse) onDialogTap;

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
                  cancelSubscriptionTile,
                  textAlign: TextAlign.center,
                ),
                verticalSpaceSmall,
                AppText.body1(
                  cancelSubscriptionSubtitle,
                  color: colors.kcCaptionGreyColor,
                  textAlign: TextAlign.center,
                ),
                verticalSpaceSmall,
                AppText.body1(
                  cancellationPolicyLabel,
                  color: colors.primary,
                  textAlign: TextAlign.center,
                ),
                verticalSpaceRegular,
              ],
            ),
          ),
          Container(
            color: colors.primaryLight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  verticalSpaceSmall,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText.body1(
                        cancellationFeesLabel,
                        color: colors.kcMediumGreyColor,
                      ),
                      AppText.body1(
                        fiftyPercentLabel,
                        color: colors.kcMediumGreyColor,
                      ),
                    ],
                  ),
                  verticalSpaceRegular,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText.body1(
                        cancellationChargeLabel,
                        color: colors.kcMediumGreyColor,
                      ),
                      AppText.body1(
                        "Rs ${sheetRequest.description!}",
                        color: colors.kcMediumGreyColor,
                      ),
                    ],
                  ),
                  verticalSpaceSmall,
                ],
              ),
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
                      onDialogTap(SheetResponse(confirmed: true, data: false)),
                  child: Container(
                    width: 140,
                    height: 50,
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
                      cancelButtonOne,
                      style: TextStyle(
                          color: colors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () =>
                      onDialogTap(SheetResponse(confirmed: true, data: true)),
                  child: Container(
                    width: 140,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: colors.primary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      cancelButtonTwo,
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
