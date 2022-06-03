import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/services/services_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/services_preview_sliding.dart';
import 'Activeappointments/activeappointments_view.dart';
import 'appointments_viewmodel.dart';

class AppointmentsView extends StatelessWidget {
  const AppointmentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppointmentsViewModel>.reactive(
      onModelReady: (model) => model.getActiveAppointments(),
      builder: (context, model, child) => Scaffold(
        appBar: commonAppBar(context, myAppointmentsTitle),
        backgroundColor: colors.white,
        body: SafeArea(
          child: Padding(
              padding: model.hasAppointments
                  ? EdgeInsets.symmetric(horizontal: 25)
                  : EdgeInsets.zero,
              child: model.hasAppointments
                  ? Column(
                      children: [
                        DefaultTabController(
                          length: 1,
                          child: Flexible(
                            child: Scaffold(
                              backgroundColor: colors.white,
                              appBar: TabBar(
                                labelColor: colors.primary,
                                unselectedLabelColor: colors.kcCaptionGreyColor,
                                tabs: [
                                  Tab(
                                    text: activeAppointmentsTitle,
                                  ),
                                ],
                              ),
                              body: TabBarView(
                                children: [
                                  ActiveAppointmentsView(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : SingleChildScrollView(
                      physics: ScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ServicesPreviewSliding(model: model),
                          verticalSpaceRegular,
                          SvgPicture.asset(
                            "assets/images/service_page_images/empty bag.svg",
                          ),
                          verticalSpaceSmall,
                          AppText.title("You haven't booked in a while."),
                          verticalSpaceSmall,
                          AppText.body(
                            "We are missing you!",
                            color: colors.primary,
                          ),
                          verticalSpaceRegular,
                          StaggeredGridView.countBuilder(
                            physics: ScrollPhysics(),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            shrinkWrap: true,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 8,
                            crossAxisCount: 2,
                            itemBuilder: (context, index) => GestureDetector(
                                onTap: () => model.onServiceTap(index),
                                child: servicesItem(
                                    context, model.listOfServices[index])),
                            itemCount: model.listOfServices.length - 1,
                            staggeredTileBuilder: (index) =>
                                StaggeredTile.fit(1),
                          ),
                          verticalSpaceMedium,
                          // CarouselSlider of Testimonials
                          SizedBox(
                            height: 200,
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
                                enlargeStrategy:
                                    CenterPageEnlargeStrategy.scale,
                                enlargeCenterPage: true,
                              ),
                            ),
                          ),
                          verticalSpaceRegular,
                        ],
                      ),
                    )),
        ),
      ),
      viewModelBuilder: () => AppointmentsViewModel(),
    );
  }
}
