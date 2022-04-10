import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'Activeappointments/activeappointments_view.dart';
import 'Pastappointments/pastappointments_view.dart';
import 'appointments_viewmodel.dart';

class AppointmentsView extends StatelessWidget {
  const AppointmentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppointmentsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                verticalSpaceRegular,
                //Heading
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      left: 0,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerLeft,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        onPressed: model.navigateBack,
                      ),
                    ),
                    Center(
                      child: AppText.headingThree(
                        myAppointmentsTitle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                verticalSpaceSmall,

                // No appointments
                Visibility(
                  visible: !model.hasAppointments,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        verticalSpaceLarge,
                        verticalSpaceLarge,
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
                      ],
                    ),
                  ),
                ),

                // Has appointments
                Visibility(
                  visible: model.hasAppointments,
                  child: DefaultTabController(
                    length: 2,
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
                            Tab(
                              text: pastAppointmentsTitle,
                            ),
                          ],
                        ),
                        body: TabBarView(
                          children: [
                            ActiveAppointmentsView(),
                            PastAppointmentsView(),
                          ],
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
      viewModelBuilder: () => AppointmentsViewModel(),
    );
  }
}
