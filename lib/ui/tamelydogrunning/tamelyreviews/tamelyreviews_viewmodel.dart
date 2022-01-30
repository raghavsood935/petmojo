import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.router.dart';

class TamelyReviewsViewModel extends FutureViewModel<void>
    implements Initialisable {
  final log = getLogger('TamelyReviewsViewModel');
  final _navigationService = locator<NavigationService>();

  LatLng currentLocation;
  TamelyReviewsViewModel(this.currentLocation);

  List<ReviewItemClass> _myReviews = [
    ReviewItemClass(
      name: 'Namita Sakore',
      review:
          "I am able to relax knowing that Bella is in very good hands; she enjoyed her walks with you--- she told me so! I can work guilt free now!",
      stars: 5,
    ),
    ReviewItemClass(
      name: 'Sameer Bansal',
      review:
          "They have trusted and friendly dog walkers. Thanks for such convenience and comfort.",
      stars: 5,
    ),
    ReviewItemClass(
      name: 'Amrutha',
      review:
          "There are hardly any services for dog walking in Delhi. I am glad I and Casper found Tamely. They treat Casper like their own family.",
      stars: 4,
    ),
    ReviewItemClass(
      name: 'Shravan Rajan',
      review:
          "I took a monthly package for Milo. They are always on time and I would give Tamely a thumbs up for their prompt communication too. ",
      stars: 5,
    ),
    ReviewItemClass(
      name: 'Geetika Taman',
      review: "Live tracking feature is good and provides peace of mind.",
      stars: 5,
    ),
    ReviewItemClass(
      name: 'Aparna Tyagi',
      review:
          "I am happy with my dog walker. Although, my dog is really big and difficult to manage, my dog walker - Amit, manager it well.",
      stars: 4,
    ),
    ReviewItemClass(
      name: 'Sudhir Manocha',
      review:
          "I took a monthly package for Milo. They are always on time and I would give Tamely a thumbs up for their prompt communication too.",
      stars: 5,
    ),
    ReviewItemClass(
      name: 'Sunita',
      review:
          "Got a german shepherd who is highly energetic, so need this service.",
      stars: 5,
    ),
  ];

  List<ReviewItemClass> get myReviews => _myReviews;

  toBookRunning() {
    _navigationService.navigateTo(
      Routes.dogRunningBookingView,
    );
  }

  @override
  Future<void> futureToRun() async {
    log.d("futureToRun");
  }
}

class ReviewItemClass {
  String? name;
  String? review;
  int? stars;

  ReviewItemClass({this.name, this.review, this.stars});
}
