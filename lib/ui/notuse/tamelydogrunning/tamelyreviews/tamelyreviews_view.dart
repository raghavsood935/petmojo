import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tamely/ui/notuse/tamelydogrunning/tamelyoverview/tamelyoverview_view.dart';
import 'package:tamely/ui/notuse/tamelydogrunning/tamelyreviews/tamelyreviews_viewmodel.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';

class TamelyReviewsView extends StatelessWidget {
  const TamelyReviewsView({Key? key, required this.currentLocation})
      : super(key: key);
  final LatLng currentLocation;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TamelyReviewsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: Column(
            children: [
              verticalSpaceRegular,
              // reviews
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: model.myReviews.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: ReviewItem(
                        name: model.myReviews[index].name,
                        review: model.myReviews[index].review,
                        stars: model.myReviews[index].stars,
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      spacedDividerSmall,
                ),
              ),
              verticalSpaceMedium,
              const Divider(
                color: colors.kcLightGreyBackground,
                height: 5.0,
                thickness: 5.0,
              ),
              verticalSpaceMedium,
              verticalSpaceMedium,

              // booking button
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 25),
              //   child: GestureDetector(
              //     onTap: model.toBookRunning,
              //     child: Container(
              //       width: double.infinity,
              //       height: 50,
              //       alignment: Alignment.center,
              //       decoration: BoxDecoration(
              //         color: colors.primary,
              //         borderRadius: BorderRadius.circular(50),
              //       ),
              //       child: Text(
              //         bookButtonTitle,
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 14),
              //       ),
              //     ),
              //   ),
              // ),
              verticalSpaceRegular,
            ],
          ),
        ),
      ),
      viewModelBuilder: () => TamelyReviewsViewModel(currentLocation),
    );
  }
}
