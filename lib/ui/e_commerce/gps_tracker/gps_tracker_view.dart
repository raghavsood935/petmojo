import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import '../../../widgets/app_input_field.dart';
import 'gps_tracker_view_model.dart';

class GPSTrackerPageView extends StatefulWidget {
  const GPSTrackerPageView({Key? key}) : super(key: key);

  @override
  _GPSTrackerPageViewState createState() => _GPSTrackerPageViewState();
}

class _GPSTrackerPageViewState extends State<GPSTrackerPageView> {
  bool seeMore = false;
  final CarouselController _controller = CarouselController();
  List<Widget> images = [
    Image.asset("assets/images/e-commerce/GPS Cat&Dog.png"),
    Image.asset("assets/images/e-commerce/dog_with_tag.png"),
    Image.asset("assets/images/e-commerce/gps_petmojo_tag.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GPSTrackerViewModel>.reactive(
      viewModelBuilder: () => GPSTrackerViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: commonAppBar(context, "Services"),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: double.maxFinite,
                color: colors.primaryLight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    AppText.captionBold("24/7 Petmojo"),
                    AppText.captionBold(
                      "Trust & verification",
                      color: colors.primary,
                    ),
                    AppText.captionBold(" and "),
                    AppText.captionBold(
                      "Support team",
                      color: colors.primary,
                    ),
                  ],
                ),
              ),
              verticalSpaceSmall,
              Padding(
                padding: commonPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    AppText.body1Bold("India's most "),
                    AppText.body1Bold(
                      "empathetic",
                      color: colors.green70,
                    ),
                    AppText.body1Bold(" and "),
                    AppText.body1Bold(
                      "advanced",
                      color: colors.green70,
                    ),
                    AppText.body1(" services"),
                  ],
                ),
              ),
              verticalSpaceRegular,
              //
              Container(
                padding: EdgeInsets.all(10),
                margin: commonPadding,
                decoration: BoxDecoration(
                  border: Border.all(color: colors.kcMediumGreyColor, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    autoPlayInterval: Duration(seconds: 5),
                    height: 200,
                    autoPlay: true,
                    // onPageChanged: (index, reason) {
                    //   setState(() {
                    //     _current = index;
                    //   });
                    // },
                  ),
                  items: images,
                ),
              ),
              verticalSpaceRegular,
              //
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  margin: commonPadding,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //border: Border.all(color: colors.primary),
                    color: colors.mediumBackgroundColor,
                  ),
                  child: AppText.caption("Coming Soon", color: colors.red)),
              verticalSpaceTiny,
              //
              Row(
                children: [
                  SizedBox(width: 20),
                  Expanded(
                    flex: 4,
                    child: AppText.headingTwo(model.productName),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: colors.primary,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(25),
                      ),
                    ),
                    child: AppText.headingThree(
                      model.productPrice,
                      color: colors.white,
                    ),
                  ),
                ],
              ),
              verticalSpaceSmall,
              Padding(
                padding: commonPadding,
                child: AppText.body("About this product"),
              ),
              verticalSpaceTiny,
              Padding(
                padding: commonPadding,
                child: AppText.body1(
                  model.productAbout,
                  color: colors.kcMediumGreyColor,
                ),
              ),
              Padding(
                padding: commonPadding,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () => setState(() {
                      seeMore = !seeMore;
                    }),
                    child: Text(
                      seeMore ? "See less" : "See more",
                      style: TextStyle(
                        color: colors.primary,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ),
              verticalSpaceSmall,
              Visibility(
                visible: seeMore,
                child: ListView.builder(
                  padding: commonPadding,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: model.seeMoreDetails.length,
                  itemBuilder: (context, index) => AppText.body1(
                    "● ${model.seeMoreDetails[index]}",
                    color: colors.kcMediumGreyColor,
                  ),
                ),
              ),
              verticalSpaceSmall,
              //
              Padding(
                padding: commonPadding,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: colors.kcMediumGreyColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.access_time_filled_rounded,
                          color: colors.kcMediumGreyColor, size: 30),
                    ),
                    horizontalSpaceSmall,
                    Column(
                      children: [
                        AppText.bodyBold("Delivery Time"),
                        AppText.caption(
                          "2-3 Days Maximum",
                          color: colors.kcMediumGreyColor,
                        ),
                      ],
                    ),
                    Spacer(),
                    Incrementer(
                      count: model.chosenNo,
                      onMinusTapped: model.minusChosenNo,
                      onAddTapped: model.addChosenNo,
                    )
                  ],
                ),
              ),
              SizedBox(height: 80),
            ],
          ),
        ),

        //
        bottomSheet: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(
                    model.nameController,
                    model.emailController,
                    model.phoneController,
                    model.saveGpsTrackingWaitList,
                    context,
                  ),
                );
              },
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 15),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: AppText.subheading(
                    "Pre-Book for FREE",
                    color: colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPopupDialog(
      TextEditingController name,
      TextEditingController email,
      TextEditingController phone,
      void Function()? onDone,
      BuildContext context) {
    var theme = Theme.of(context);
    return AlertDialog(
      content: WillPopScope(
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 450),
              child: Stack(
                children: [
                  //
                  Align(
                    alignment: Alignment.topCenter,
                    child: Transform.translate(
                      offset: Offset(0, -52),
                      child: Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                          color: Color(0xFFFD799A),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Image.asset("assets/images/PixelCat.png"),
                      ),
                    ),
                  ),
                  //
                  // GestureDetector(
                  //   onTap: () {
                  //
                  //   },
                  //   child: Container(
                  //     margin: EdgeInsets.fromLTRB(0, 5, 5, 0),
                  //     child: Align(
                  //       alignment: Alignment.topRight,
                  //       child: Icon(
                  //         Icons.close,
                  //         size: 20,
                  //         color: Color(0xFFC3C3C3),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  //
                  //
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xffffff),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "PetMojo GPS Tracker",
                            style: theme.textTheme.subtitle2?.copyWith(
                                fontSize: 14,
                                color: colors.lightBlack,
                                fontWeight: FontWeight.bold),
                          ),
                          verticalSpaceTiny,
                          Text(
                            "Join the waitlist now!",
                            style: theme.textTheme.subtitle2?.copyWith(
                                fontSize: 20,
                                color: Color(0xFF00031D),
                                fontWeight: FontWeight.bold),
                          ),
                          verticalSpaceSmall,
                          AppText.body1(
                            "We will notify you once we release the new batch of Petmojo GPS tracker.",
                            textAlign: TextAlign.center,
                          ),
                          verticalSpaceMedium,
                          //
                          AppInputField(
                            fillColor: Colors.white,
                            hint: "Full Name",
                            controller: name,
                            isBoxBorder: true,
                            textInputType: TextInputType.name,
                            textCapitalization: TextCapitalization.none,
                          ),
                          //
                          AppInputField(
                            fillColor: Colors.white,
                            hint: "Email Address",
                            controller: email,
                            isBoxBorder: true,
                            textInputType: TextInputType.name,
                            textCapitalization: TextCapitalization.none,
                          ),
                          //
                          AppInputField(
                            fillColor: Colors.white,
                            hint: "Phone Number",
                            controller: phone,
                            isBoxBorder: true,
                            textInputType: TextInputType.name,
                            textCapitalization: TextCapitalization.none,
                            maxLength: 10,
                          ),
                          verticalSpaceTiny,
                          GestureDetector(
                            onTap: () async {
                              onDone!();
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: AppText.titleBold(
                                  "Done",
                                  color: colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          onWillPop: () async => true),
    );
  }
}

class Incrementer extends StatelessWidget {
  const Incrementer({
    Key? key,
    this.count,
    this.onMinusTapped,
    this.onAddTapped,
  }) : super(key: key);
  final int? count;
  final void Function()? onMinusTapped;
  final void Function()? onAddTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors.kcVeryLightGreyColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: onMinusTapped,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: colors.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: AppText.headline(
                "−",
                color: colors.white,
              )),
            ),
          ),
          Container(
            width: 45,
            height: 35,
            decoration: BoxDecoration(
              color: colors.kcVeryLightGreyColor,
              border: Border.all(
                color: colors.kcVeryLightGreyColor,
                width: 1,
              ),
            ),
            child: Center(child: AppText.body2('$count')),
          ),
          GestureDetector(
            onTap: onAddTapped,
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: colors.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Icon(
                Icons.add,
                color: colors.white,
                size: 30,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
