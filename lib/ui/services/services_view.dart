import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/services/services_viewmodel.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class ServicesView extends StatelessWidget {
  final BuildContext menuScreenContext;
  final Function onScreenHideButtonPressed;
  final bool hideStatus;
  const ServicesView(
      {Key? key,
      required this.menuScreenContext,
      required this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ServicesViewModel>.reactive(
      viewModelBuilder: () => ServicesViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: ListView(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: double.maxFinite,
                color: Color(0xFFFFF9FB),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    AppText.caption("24/7 Tamely "),
                    AppText.captionBold(
                      "Trust & verification",
                      color: colors.primary,
                    ),
                    AppText.caption(" and "),
                    AppText.captionBold(
                      "Support team",
                      color: colors.primary,
                    ),
                  ],
                ),
              ),
              verticalSpaceSmall,
              Padding(
                padding: commonPaddding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    AppText.body1("India's most "),
                    AppText.body1Bold(
                      "empathetic",
                      color: colors.green70,
                    ),
                    AppText.body1(" and "),
                    AppText.body1Bold(
                      "advanced",
                      color: colors.green70,
                    ),
                    AppText.body1(" services"),
                  ],
                ),
              ),
              verticalSpaceRegular,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: StaggeredGridView.countBuilder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 8,
                  crossAxisCount: 2,
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () => model.onServiceTap(index),
                      child:
                          servicesItem(context, model.listOfServices[index])),
                  itemCount: model.listOfServices.length,
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                ),
              ),
              verticalSpaceTiny,
              GestureDetector(
                onTap: model.goToECommercePage,
                child: doorStepItem(context),
              ),
              verticalSpaceRegular,
              Padding(
                padding: commonPaddding,
                child: AppText.body1("Upcoming Services"),
              ),
              verticalSpaceRegular,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: StaggeredGridView.countBuilder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 8,
                  crossAxisCount: 2,
                  itemBuilder: (context, index) => servicesItem(
                      context, model.listOfUpcommingServices[index]),
                  itemCount: model.listOfUpcommingServices.length,
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                ),
              ),
              verticalSpaceTiny,
              vetItem(context),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: GestureDetector(
                  onTap: model.toMyBookings,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color(0xFFEF7A9B),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: AppText.titleBold(
                        "Check your ongoing bookings",
                        color: colors.white,
                      ),
                      subtitle: AppText.caption(
                        "All your bookings in one place!",
                        color: colors.white,
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: Color(0xFFF696B1),
                        child: IconButton(
                          onPressed: model.toMyBookings,
                          icon: Icon(Icons.arrow_forward, color: colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: colors.white,
      ),
    );
  }
}

Widget servicesItem(BuildContext context, ServicesModel model) {
  return Container(
    padding: EdgeInsets.all(10),
    // width: screenWidthPercentage(context, percentage: 0.35),
    height: screenWidthPercentage(context, percentage: 0.45),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: model.bgColor,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
          visible: model.isHigDemand ?? false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.flash_on_sharp,
                color: Colors.yellow,
                size: 11,
              ),
              AppText.tiny(
                "High Demand   ",
                color: colors.black,
              ),
            ],
          ),
        ),
        Image.asset(
          model.imgPath ?? "",
          colorBlendMode: BlendMode.darken,
          color: model.bgColor,
          height: screenWidthPercentage(context, percentage: 0.28),
        ),
        AppText.bodyBold(model.title ?? ""),
      ],
    ),
  );
}

Widget vetItem(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Color(0xFFFFE8D6),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            AppText.bodyBold("Vet Consultation"),
            AppText.caption(
              "(Online, Home or Clinic)",
              color: colors.black,
            ),
          ],
        ),
        Image.asset(
          vetConsultationImgPath,
          colorBlendMode: BlendMode.darken,
          color: Color(0xFFFFE8D6),
          width: screenWidthPercentage(context, percentage: 0.35),
        ),
      ],
    ),
  );
}

Widget doorStepItem(BuildContext context) => Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFFFEFD8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.body("45 mins"),
              AppText.bodyBigBold(
                "Doorstep\nDelivery",
                color: colors.black,
              ),
              verticalSpaceSmall,
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color: colors.black,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: AppText.overline(
                  "SHOP NOW",
                  color: colors.white,
                ),
              ),
            ],
          ),
          Image.asset(
            doorStepDeliveryImgPath,
            colorBlendMode: BlendMode.darken,
            color: Color(0xFFFFE8D6),
            width: screenWidthPercentage(context, percentage: 0.5),
          ),
        ],
      ),
    );
