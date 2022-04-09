import 'package:carousel_slider/carousel_slider.dart';
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
                    AppText.caption("24/7 Petmojo "),
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
              CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    height: 200,
                    autoPlay: true,
                  ),
                  items: [FreeTraining(model: model), FreeWalk(model: model)]),
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
                  itemCount: model.listOfServices.length - 1,
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                ),
              ),
              verticalSpaceTiny,
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => model.goToECommercePage(),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 20),
                        width: double.infinity,
                        height:
                            screenWidthPercentage(context, percentage: 0.45),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.black38)
                            // color: Color(0XFFFEDFDD),
                            ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(width: 40),
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
                            Row(
                              children: [
                                Column(
                                  children: [
                                    AppText.body("45 mins"),
                                    AppText.bodyBold("Doorstep"),
                                    AppText.bodyBold("Delivery"),
                                  ],
                                ),
                                Expanded(
                                    child: Image(
                                  image: AssetImage(
                                      "assets/images/delivery_truck.png"),
                                ))
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: colors.primary),
                              child: AppText.caption(
                                "Shop Now",
                                color: colors.white,
                              ),
                              padding: EdgeInsets.all(5),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => model.onServiceTap(3),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(right: 20),
                        width: double.infinity,
                        height:
                            screenWidthPercentage(context, percentage: 0.45),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0XFFFEDFDD),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Visibility(
                              visible:
                                  model.listOfServices[2].isHigDemand ?? true,
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
                              model.listOfServices[2].imgPath ?? "",
                              colorBlendMode: BlendMode.darken,
                              color: model.listOfServices[2].bgColor,
                              height: screenWidthPercentage(context,
                                  percentage: 0.28),
                            ),
                            AppText.bodyBold(
                                model.listOfServices[2].title ?? ""),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpaceMedium,
              // CarouselSlider of Testimonials
              SizedBox(
                height: 180,
                child: CarouselSlider(
                  items: [
                    Testimonial(
                      imgPath: "assets/images/testimony_1.png",
                      customerName: "Raghu Panigrahi",
                      customerDesignation: "HR Manager",
                      customerReview:
                          "We were thinking of giving up on our German Shepherd and put him for adoption. I'm really overwhelmed with their training as our dog follows not only my instructions, but even my wife's.",
                      customerRating: 5.0,
                    ),
                    Testimonial(
                      imgPath: "assets/images/testimony_2.png",
                      customerName: "Aradhya Shetty",
                      customerDesignation: "Analyst",
                      customerReview:
                          "The training and discipline PetMojo provided us with gave us good communication between me and my pet and build a bridge for the lost connection.",
                      customerRating: 5.0,
                    ),
                    Testimonial(
                      imgPath: "assets/images/testimony_3.png",
                      customerName: "Raj Desai",
                      customerDesignation: "Student",
                      customerReview:
                          "Such a wonderful training package at low cost gave us the knowledge of training to make them learn with positive games and teaching makes the pet to be more than like a family.",
                      customerRating: 5.0,
                    ),
                  ],
                  options: CarouselOptions(
                    viewportFraction: 0.7,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    enlargeCenterPage: true,
                  ),
                ),
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
              CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    height: 200,
                    autoPlay: true,
                  ),
                  items: [FreeTraining(model: model), FreeWalk(model: model)]),
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              //   child: GestureDetector(
              //     onTap: model.toMyBookings,
              //     child: Container(
              //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              //       decoration: BoxDecoration(
              //         color: Color(0xFFEF7A9B),
              //         borderRadius: BorderRadius.circular(16),
              //       ),
              //       child: ListTile(
              //         contentPadding: EdgeInsets.zero,
              //         title: AppText.titleBold(
              //           "Check your ongoing bookings",
              //           color: colors.white,
              //         ),
              //         subtitle: AppText.caption(
              //           "All your bookings in one place!",
              //           color: colors.white,
              //         ),
              //         trailing: CircleAvatar(
              //           backgroundColor: Color(0xFFF696B1),
              //           child: IconButton(
              //             onPressed: model.toMyBookings,
              //             icon: Icon(Icons.arrow_forward, color: colors.white),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              verticalSpaceMedium
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
      color: Color(0XFFFEDFDD),
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
      height: screenWidthPercentage(context, percentage: 0.45),
      width: screenWidthPercentage(context, percentage: 0.45),
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
                  color: colors.primary,
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
            "assets/images/delivery_truck.png",
            width: screenWidthPercentage(context, percentage: 0.3),
          ),
        ],
      ),
    );

class Testimonial extends StatefulWidget {
  final String imgPath;
  final String customerName;
  final String customerReview;
  final double customerRating;
  final String customerDesignation;
  const Testimonial({
    required this.imgPath,
    required this.customerName,
    required this.customerReview,
    required this.customerRating,
    required this.customerDesignation,
  });

  @override
  State<Testimonial> createState() => _TestimonialState();
}

class _TestimonialState extends State<Testimonial> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        // height:300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // blue border
          border: Border.all(
            color: Color.fromARGB(255, 3, 64, 156),
            width: 2,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  widget.imgPath,
                  width: 70,
                ),
                horizontalSpaceRegular,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.bodyBold(widget.customerName),
                    Row(
                      children: [
                        for (int i = 0; i < widget.customerRating; i++)
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        for (int i = 0; i < 5 - widget.customerRating; i++)
                          Icon(
                            Icons.star_border,
                            color: Colors.yellow,
                          ),
                      ],
                    ),
                    AppText.caption(
                      widget.customerDesignation,
                      color: colors.black,
                    ),
                  ],
                )
              ],
            ),
            verticalSpaceSmall,
            AppText.caption(widget.customerReview),
          ],
        ));
  }
}

class FreeTraining extends StatelessWidget {
  final ServicesViewModel model;
  const FreeTraining({
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => model.onServiceTap(1),
      child: Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black38,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.bodyBig("Click here to get your"),
                  AppText.bodyBig(
                    "Free Dog Training",
                    color: colors.primary,
                  ),
                  AppText.bodyBig("Trial today!"),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                      onPressed: () => model.onServiceTap(1),
                      child: AppText.bodyBold(
                        "Book FREE Trial",
                        color: colors.white,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: colors.primary,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                      )),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Image(
                  image: AssetImage("assets/images/free-training-image.png"),
                ),
              )
            ],
          )),
    );
  }
}

class FreeWalk extends StatelessWidget {
  final ServicesViewModel model;
  const FreeWalk({
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => model.onServiceTap(0),
      child: Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black38,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.bodyBig("Click here to get your"),
                  AppText.bodyBig(
                    "Free Dog Walking",
                    color: colors.primary,
                  ),
                  AppText.bodyBig("Trial today!"),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                      onPressed: () => model.onServiceTap(0),
                      child: AppText.bodyBold(
                        "Book FREE Trial",
                        color: colors.white,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: colors.primary,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                      )),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Image(
                  image: AssetImage("assets/images/dog_walking_free.png"),
                ),
              )
            ],
          )),
    );
  }
}