import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamely/ui/tamelydogrunning/tamelyoverview/tamelyoverview_viewmodel.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/util/Color.dart';

class TamelyOverviewView extends StatelessWidget {
  const TamelyOverviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TamelyOverviewViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // top review
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpaceRegular,
                      AppText.body2(topReviewTitle),
                      verticalSpaceSmall,
                      ReviewItem(
                        name: model.topReviewerName,
                        review: model.topReview,
                        stars: model.starts,
                      ),
                      verticalSpaceSmall,
                    ],
                  ),
                ),
                spacedDividerSmall,
                verticalSpaceSmall,

                // description
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.body2(descriptionTitle),
                      verticalSpaceSmall,
                      AppText.body1(
                        descriptionLabel,
                        color: colors.kcCaptionGreyColor,
                      ),
                      verticalSpaceSmall,
                    ],
                  ),
                ),
                spacedDividerSmall,
                verticalSpaceSmall,

                // Service area
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.body2(serviceAreaTitle),
                      verticalSpaceSmall,
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 15,
                            color: colors.kcCaptionGreyColor,
                          ),
                          horizontalSpaceSmall,
                          AppText.body1(
                            serviceAreaSubtitle,
                            color: colors.kcCaptionGreyColor,
                          ),
                        ],
                      ),
                      verticalSpaceSmall,
                    ],
                  ),
                ),
                spacedDividerSmall,
                verticalSpaceSmall,

                // photos
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.body2(photosTitle),
                      verticalSpaceRegular,
                      Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: [
                          ImageDisplay(
                            imageUrl: "assets/images/pet_foot_print.png",
                          ),
                          ImageDisplay(
                            imageUrl: "assets/images/pet_foot_print.png",
                          ),
                          ImageDisplay(
                            imageUrl: "assets/images/pet_foot_print.png",
                          ),
                        ],
                      ),
                      verticalSpaceSmall,
                    ],
                  ),
                ),
                spacedDividerSmall,
                verticalSpaceSmall,

                // Time and Area
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.body2(daysAndTimingsLabel),
                          AppText.body1(
                            daysAndTimingsSubtext,
                            color: colors.kcCaptionGreyColor,
                          ),
                        ],
                      ),
                      verticalSpaceRegular,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.body2(acceptedAnimalsTitle),
                          AppText.body1(
                            acceptedAnimalsSubtext,
                            color: colors.kcCaptionGreyColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                verticalSpaceMedium,
                const Divider(
                  color: colors.kcLightGreyBackground,
                  height: 5.0,
                  thickness: 5.0,
                ),
                verticalSpaceMedium,

                // booking button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: model.toBookRunning,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: colors.primary,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        bookButtonTitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
                verticalSpaceRegular,
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => TamelyOverviewViewModel(),
    );
  }
}

class ImageDisplay extends StatelessWidget {
  const ImageDisplay({Key? key, this.imageUrl}) : super(key: key);
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        color: colors.primaryLight,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(imageUrl!),
    );
  }
}

class ReviewItem extends StatelessWidget {
  const ReviewItem({Key? key, this.name, this.review, this.stars})
      : super(key: key);
  final String? name;
  final String? review;
  final int? stars;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText.body2(name!),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: stars! >= 1
                      ? colors.grad1Color
                      : colors.kcCaptionGreyColor,
                ),
                Icon(
                  Icons.star,
                  color: stars! >= 2
                      ? colors.grad1Color
                      : colors.kcCaptionGreyColor,
                ),
                Icon(
                  Icons.star,
                  color: stars! >= 3
                      ? colors.grad1Color
                      : colors.kcCaptionGreyColor,
                ),
                Icon(
                  Icons.star,
                  color: stars! >= 4
                      ? colors.grad1Color
                      : colors.kcCaptionGreyColor,
                ),
                Icon(
                  Icons.star,
                  color: stars! >= 5
                      ? colors.grad1Color
                      : colors.kcCaptionGreyColor,
                ),
              ],
            ),
          ],
        ),
        verticalSpaceSmall,
        AppText.body1(
          review!,
          color: colors.kcCaptionGreyColor,
        ),
      ],
    );
  }
}
