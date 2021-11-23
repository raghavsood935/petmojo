import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/widgets/custom_circle_avatar.dart';

class SelectAnimalTypeBottomSheet extends StatelessWidget {
  final SheetRequest sheetRequest;
  final Function(SheetResponse) onDialogTap;

  const SelectAnimalTypeBottomSheet(
      {Key? key, required this.sheetRequest, required this.onDialogTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bottomSheetService = locator<BottomSheetService>();

    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        color: colors.white,
      ),
      height: screenHeightPercentage(context, percentage: 0.80),
      child: Column(
        children: [
          AppText.headingThree(sheetRequest.title ?? ""),
          verticalSpaceSmall,
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            itemCount: sheetRequest.customData!.length,
            crossAxisSpacing: 20,
            mainAxisSpacing: 6,
            crossAxisCount: 2,
            itemBuilder: (context, index) => ListTile(
                contentPadding: EdgeInsets.zero,
                title: AppText.body(
                  sheetRequest.customData![index].type,
                ),
                leading: CircleAvatar(
                  backgroundColor: colors.primary,
                  radius: 25,
                  child: CircleAvatar(
                    backgroundColor: colors.white,
                    radius: (25 - 2.0),
                    child: ClipOval(
                      child: Image.asset(
                          sheetRequest.customData![index].imageAssetPath),
                    ),
                  ),
                ),
                onTap: () {
                  onDialogTap(
                    SheetResponse(
                        confirmed: true,
                        data: sheetRequest.customData![index].type),
                  );
                }),
            staggeredTileBuilder: (index) => StaggeredTile.fit(1),
          ),
          verticalSpaceSmall,
          ListTile(
              leading: CircleAvatar(
                backgroundColor: colors.mediumBackgroundColor,
                child: Image.asset(animalFootPrintImgPath),
              ),
              title: AppText.body2("Other (please specify animal)"),
              onTap: () async {
                var result = await _bottomSheetService.showCustomSheet(
                  variant: BottomSheetType.SelectOtherAnimalTypeBottomSheet,
                );
                if (result!.confirmed) {
                  onDialogTap(
                      SheetResponse(confirmed: true, data: result.data));
                }
              }),
        ],
      ),
    );
  }
}
