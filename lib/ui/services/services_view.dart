import 'package:flutter/material.dart';
import 'package:kubelite/model/services_model.dart';
import 'package:kubelite/ui/services/services_viewmodel.dart';
import 'package:kubelite/util/Color.dart';
import 'package:kubelite/util/ui_helpers.dart';
import 'package:kubelite/widgets/app_text.dart';
import 'package:stacked/stacked.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ServicesViewModel>.reactive(
      viewModelBuilder: () => ServicesViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(10),
            shrinkWrap: true,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  AppText.caption(
                    model.location,
                  ),
                ],
              ),
              SingleChildScrollView(
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
              AppText.subheading("Select services you need"),
              verticalSpaceSmall,
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) =>
                    servicesItem(context, model.listOfServices[index]),
                itemCount: model.listOfServices.length,
              ),
              spacedDivider,
              AppText.subheading("Vet Services "),
              verticalSpaceSmall,
              SizedBox(
                height: 125,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    vetItem(context, "home"),
                    vetItem(context, "clininc"),
                    vetItem(context, "video"),
                  ],
                ),
              ),
              spacedDivider,
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: colors.mediumBackgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  title: AppText.body("Check your booking appointments"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpaceTiny,
                      AppText.caption("${model.noOfAppointments} appointments"),
                      verticalSpaceTiny,
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Upcoming : ",
                            style: TextStyle(color: colors.green30),
                          ),
                          TextSpan(
                              text:
                                  "${model.appointmentType} ${model.appointmentDate}",
                              style:
                                  TextStyle(color: colors.kcPrimaryTextColor))
                        ]),
                      ),
                    ],
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: colors.primary,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward, color: colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget servicesItem(BuildContext context, ServicesModel model) {
  return Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.all(10),
    width: screenWidthPercentage(context, percentage: 0.40),
    decoration: BoxDecoration(
      border: Border.all(color: colors.kcLightGreyBackground, width: 2),
      borderRadius: BorderRadius.circular(20),
    ),
    child: ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundColor: colors.mediumBackgroundColor,
            child: Icon(
              Icons.luggage_rounded,
              color: colors.primary,
            ),
          ),
          title: AppText.body1(model.title),
          subtitle: AppText.caption("${model.noOfProviders} Providers"),
        ),
        verticalSpaceSmall,
        AppText.body(
          model.description,
          color: colors.kcMediumGreyColor,
        )
      ],
    ),
  );
}

Widget vetItem(BuildContext context, String type) {
  return Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(color: colors.kcLightGreyBackground, width: 2),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: colors.mediumBackgroundColor,
          child: Icon(
            Icons.luggage_rounded,
            color: colors.primary,
          ),
        ),
        verticalSpaceSmall,
        AppText.body(
          "Vet @ $type",
        )
      ],
    ),
  );
}
