import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/services_model.dart';
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
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      AppText.caption(
                        model.location,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        AppText.caption("24/7 Tamely"),
                        TextButton(
                          onPressed: () {},
                          child: AppText.caption(
                            "Trust and verification",
                            color: colors.primary,
                          ),
                        ),
                        AppText.caption(" team, 24/7"),
                        TextButton(
                          onPressed: () {},
                          child: AppText.caption(
                            "Support team",
                            color: colors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: AppText.body1Bold("Select services you need"),
                ),
                verticalSpaceTiny,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: StaggeredGridView.countBuilder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    crossAxisCount: 2,
                    itemBuilder: (context, index) => GestureDetector(
                        onTap: () => model.onServiceTap(index),
                        child:
                            servicesItem(context, model.listOfServices[index])),
                    itemCount: model.listOfServices.length,
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  ),
                ),
                spacedDividerTiny,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: AppText.body1Bold("Vet Services"),
                ),
                verticalSpaceSmall,
                vetItem(),
                // SizedBox(
                //   height: 125,
                //   child: ListView(
                //     physics: ScrollPhysics(),
                //     shrinkWrap: true,
                //     scrollDirection: Axis.horizontal,
                //     children: [
                //       vetItem(context, "home"),
                //       vetItem(context, "clininc"),
                //       vetItem(context, "video"),
                //     ],
                //   ),
                // ),
                spacedDivider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GestureDetector(
                    onTap: model.toMyBookings,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: colors.mediumBackgroundColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        title: AppText.subheading(
                            "Check your booking appointments"),
                        // subtitle: Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     verticalSpaceTiny,
                        //     AppText.caption(
                        //         "${model.noOfAppointments} appointments"),
                        //     verticalSpaceTiny,
                        //     RichText(
                        //       text: TextSpan(children: [
                        //         TextSpan(
                        //           text: "Upcoming : ",
                        //           style: TextStyle(color: colors.green30),
                        //         ),
                        //         TextSpan(
                        //           text:
                        //               "${model.appointmentType} ${model.appointmentDate}",
                        //           style:
                        //               TextStyle(color: colors.kcPrimaryTextColor),
                        //         )
                        //       ]),
                        //     ),
                        //   ],
                        // ),
                        trailing: CircleAvatar(
                          backgroundColor: colors.primary,
                          child: IconButton(
                            onPressed: model.toMyBookings,
                            icon:
                                Icon(Icons.arrow_forward, color: colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget servicesItem(BuildContext context, ServicesModel model) {
  return Container(
    padding: EdgeInsets.all(10),
    width: screenWidthPercentage(context, percentage: 0.40),
    height: screenWidthPercentage(context, percentage: 0.30),
    decoration: BoxDecoration(
      border: Border.all(color: colors.kcLightGreyBackground, width: 2),
      borderRadius: BorderRadius.circular(20),
    ),
    child: ListView(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      children: [
        Visibility(
          visible: model.isHigDemand ?? false,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(highDemandImgPath),
              horizontalSpaceTiny,
              AppText.tiny(
                "High Demand",
                color: colors.primary,
              ),
            ],
          ),
        ),
        Row(children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(
              backgroundColor: colors.mediumBackgroundColor,
              child: Image.asset(model.imgPath),
            ),
          ),
          horizontalSpaceTiny,
          Expanded(
            flex: 3,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              AppText.body1(model.title),
              Visibility(
                visible: model.title != "Daily Dog Running",
                child: AppText.overline("${model.noOfProviders} Providers"),
              ),
            ]),
          )
        ]),
        model.descripitons != null
            ? ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: model.descripitons!.length,
                itemBuilder: (ct, i) => Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.check_rounded, size: 14),
                    Expanded(
                      child: AppText.overline(
                        model.descripitons![i],
                        isSingleLined: false,
                      ),
                    )
                  ],
                ),
              )
            : AppText.overline(
                model.description ?? "",
                color: colors.kcMediumGreyColor,
              )
      ],
    ),
  );
}

Widget vetItem() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(color: colors.kcLightGreyBackground, width: 2),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Image.asset(vetConsultation),
          title: AppText.body1("Vet Consultation"),
          subtitle: AppText.caption("128 providers"),
        ),
        AppText.caption(
          "Get advice, diagnosis and treatment sessions.Choose our caring and best-in-field licensed veterinarians for your pets 360-degree healthcare. Book appointments for 'online' , 'at-home' or 'clinic'.",
        )
      ],
    ),
  );
}
