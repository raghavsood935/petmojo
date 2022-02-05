import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/dummy/dummy_product_item_model.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/ui/e_commerce/cart/cart_view_model.dart';

class MyProductBookingTabViewModel extends BaseModel {
  final navigationService = locator<NavigationService>();

  List<BookingDummyModel> listOfBookingModel = [
    BookingDummyModel(),
    BookingDummyModel(),
    BookingDummyModel(),
    BookingDummyModel(),
    BookingDummyModel(),
  ];

  Future goToProductInfo(int index) async {
    navigationService.navigateTo(Routes.orderDetailPage);
  }
}

class BookingDummyModel {
  String userProfileImage = "";
  String userProfileName = "Dr.Joeyelene Rivera";
  String productFor = "Gracy";
  String date = "24 jan 2021 at 05:30 PM";
  List<CartItem> items = [
    // CartItem(
    //   DummyProductModel(
    //     productName: "Yellow Nike",
    //     rating: 4.9,
    //     soldCount: 500,
    //     brand: "Nike Product",
    //     currentPrice: 67,
    //     acutalPrice: 77,
    //     isFav: true,
    //     productColor: Color(0xFFFFED8A),
    //     productBGColor: Color(0xFFFFF6C3),
    //   ),
    //   1,
    // ),
    // CartItem(
    //   DummyProductModel(
    //     productName: "Nike Sport",
    //     rating: 4.5,
    //     soldCount: 112,
    //     brand: "Nike Product",
    //     currentPrice: 120,
    //     acutalPrice: 141,
    //     isFav: true,
    //     productColor: Color(0xFF85B9EF),
    //     productBGColor: Color(0xFFA3C7EE),
    //   ),
    //   5,
    // ),
    // CartItem(
    //   DummyProductModel(
    //     productName: "Red Nike",
    //     rating: 4.9,
    //     soldCount: 153,
    //     brand: "Nike Product",
    //     currentPrice: 81,
    //     acutalPrice: 121,
    //     isFav: true,
    //     productColor: Color(0xFFFFCBBD),
    //     productBGColor: Color(0xFFFFE1D9),
    //   ),
    //   1,
    // ),
    // CartItem(
    //   DummyProductModel(
    //     productName: "Green Training",
    //     rating: 4.3,
    //     soldCount: 512,
    //     brand: "Nike Product",
    //     currentPrice: 104,
    //     acutalPrice: 165,
    //     isFav: false,
    //     productColor: Color(0xFF94DCA8),
    //     productBGColor: Color(0xFFB4ECC3),
    //   ),
    //   2,
    // ),
  ];
}
