import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/follow_btn.dart';
import 'package:tamely/widgets/main_btn.dart';

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
        appBar: commonAppBar(context, "Service"),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceRegular,
              Container(
                padding: EdgeInsets.all(10),
                margin: commonPaddding,
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
              verticalSpaceSmall,
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  margin: commonPaddding,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: colors.primary),
                    color: colors.primaryLight,
                  ),
                  child: AppText.caption("Coming Soon", color: colors.red)),
              verticalSpaceSmall,
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
              verticalSpaceTiny,
              Padding(
                padding: commonPaddding,
                child: AppText.body("About this product"),
              ),
              verticalSpaceTiny,
              Padding(
                padding: commonPaddding,
                child: AppText.body1(
                  model.productAbout,
                  color: colors.kcMediumGreyColor,
                ),
              ),
              Padding(
                padding: commonPaddding,
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
              verticalSpaceTiny,
              Visibility(
                visible: seeMore,
                child: ListView.builder(
                  padding: commonPaddding,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: model.seeMoreDetails.length,
                  itemBuilder: (context, index) => AppText.body1(
                    "● ${model.seeMoreDetails[index]}",
                    color: colors.kcMediumGreyColor,
                  ),
                ),
              ),
              SizedBox(height: 125),
            ],
          ),
        ),
        bottomSheet: ConstrainedBox(
          constraints: BoxConstraints(minHeight: 100),
          // color: colors.white,

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: commonPaddding,
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
                          color: colors.kcMediumGreyColor, size: 20),
                    ),
                    Column(
                        children:[
                      AppText.bodyBold("Delivery Time"),
                      AppText.caption("2-3 Days Maximum"),
                    ]
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 15),
                margin:EdgeInsets.all(20),
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
            ],
          ),
        ),
      ),
    );
  }
}
