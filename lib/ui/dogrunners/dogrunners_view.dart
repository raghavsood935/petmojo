import 'package:flutter/material.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'dogrunners_viewmodel.dart';

class DogRunnersView extends StatelessWidget {
  const DogRunnersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DogRunnersViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceRegular,
              // Heading
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    left: 25,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: model.navigateBack,
                    ),
                  ),
                  Center(
                    child: AppText.headingThree(
                      godRunnersTitle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              spacedDividerSmall,
              // Division 1 - Pin code
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 25),
              //   child: Row(
              //     children: [
              //       Container(
              //         padding: EdgeInsets.symmetric(horizontal: 10),
              //         child: Align(
              //           alignment: Alignment.centerLeft,
              //           child: AppText.body1(
              //             shortBioLabel,
              //             textAlign: TextAlign.start,
              //             color: colors.black,
              //           ),
              //         ),
              //       ),
              //       AppInputField(
              //         hint: shortBioHint,
              //         controller: shortBioController,
              //         textInputType: TextInputType.multiline,
              //         textCapitalization: TextCapitalization.sentences,
              //       ),
              //     ],
              //   ),
              // ),

              // Location
              Container(
                width: screenWidth(context),
                color: colors.primaryLight,
                height: 45,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 20,
                        color: colors.black,
                      ),
                      horizontalSpaceSmall,
                      AppText.body1(
                        model.address,
                        color: colors.black,
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: model.changeAddress,
                        child: AppText.body2(
                          "Change",
                          color: colors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              spacedDividerSmall,

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: AppText.body1Bold(
                  chooseCompanyTitle,
                ),
              ),
              spacedDividerSmall,

              // Division 1 - Company
              Visibility(
                visible: model.companyAvailable,
                child: GestureDetector(
                  onTap: model.toTamelyDogRunning,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 40,
                                child: Image.asset("assets/images/mini.png"),
                              ),
                              horizontalSpaceSmall,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText.body2(
                                    tamelyDogRunningTitle,
                                  ),
                                  verticalSpaceSmall,
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 15,
                                        color: colors.kcCaptionGreyColor,
                                      ),
                                      AppText.caption(
                                        model.companyAddress,
                                        color: colors.kcCaptionGreyColor,
                                      ),
                                    ],
                                  ),
                                  verticalSpaceSmall,
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          AppText.caption(
                                            "${model.noOfJobs}",
                                          ),
                                          AppText.caption(
                                            "Jobs",
                                            color: colors.kcCaptionGreyColor,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 20.0,
                                        height: 25.0,
                                        child: VerticalDivider(
                                          width: 5.0,
                                          color: colors.kcCaptionGreyColor,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                size: 15,
                                                color: colors.grad1Color,
                                              ),
                                              AppText.caption(
                                                " ${model.noOfRating}",
                                              ),
                                            ],
                                          ),
                                          AppText.caption(
                                            "Rating",
                                            color: colors.kcCaptionGreyColor,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 20.0,
                                        height: 25.0,
                                        child: VerticalDivider(
                                          width: 5.0,
                                          color: colors.kcCaptionGreyColor,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          AppText.caption(
                                            "${model.noOfRepeatClients}",
                                          ),
                                          AppText.caption(
                                            "Repeat clients",
                                            color: colors.kcCaptionGreyColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  AppText.caption(
                                    "from",
                                    color: colors.kcCaptionGreyColor,
                                  ),
                                  Row(
                                    children: [
                                      AppText.caption(
                                        "₹ ",
                                        color: colors.kcCaptionGreyColor,
                                      ),
                                      AppText.subheading(
                                        "300",
                                        color: colors.primary,
                                      ),
                                    ],
                                  ),
                                  AppText.caption(
                                    "/walk",
                                    color: colors.kcCaptionGreyColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              model.companyAvailable ? spacedDivider : Container(),
              Visibility(
                visible: !model.companyAvailable,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Center(
                    child: Column(
                      children: [
                        verticalSpaceRegular,
                        AppText.body1(
                          noServiceAvailableLabel,
                          color: colors.kcCaptionGreyColor,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DogRunnersViewModel(),
    );
  }
}
