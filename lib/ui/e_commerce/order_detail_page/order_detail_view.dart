import 'package:flutter/material.dart';
import 'package:tamely/ui/e_commerce/cart/cart_view_model.dart';
import 'package:tamely/ui/e_commerce/product_bookings/tabs/my_product_booking_tab_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  BookingDummyModel bookingDummyModel = BookingDummyModel();

  double subTotal = 0.0;

  _OrderDetailPageState() {
    for (CartItem item in bookingDummyModel.items) {
      subTotal =
          subTotal + ((item.product!.discountPrice ?? 0.0) * (item.count));
      subTotal = subTotal + 20.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(context, "My Bookings"),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceSmall,
            Padding(
              padding: commonPaddding,
              child: Row(
                children: [
                  AppText.bodyBold(bookingDummyModel.userProfileName),
                  Spacer(),
                  AppText.bodyBold("\$$subTotal")
                ],
              ),
            ),
            verticalSpaceSmall,
            Padding(
              padding: commonPaddding,
              child: Row(
                children: [
                  AppText.body1("for "),
                  AppText.body1Bold("${bookingDummyModel.productFor}"),
                ],
              ),
            ),
            verticalSpaceSmall,
            Padding(
              padding: commonPaddding,
              child: AppText.body1(
                "We will deliver at your doorstep within 45 mins",
                color: Color(0xFF999999),
              ),
            ),
            verticalSpaceSmall,
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFF9FB),
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Color(0xFF585858),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.check_box_rounded,
                    color: colors.green70,
                    size: 18,
                  ),
                  AppText.overline("Payment done..."),
                  Icon(
                    Icons.check_box_rounded,
                    color: Color(0xFF999999),
                    size: 18,
                  ),
                  AppText.overline("Order delivered"),
                ],
              ),
            ),
            verticalSpaceRegular,
            Padding(
              padding: commonPaddding,
              child: Row(
                children: [
                  Expanded(
                    child: AppText.body1Bold(
                      "Date",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: AppText.body1(
                      "${bookingDummyModel.date}",
                      color: Color(0xFF616161),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpaceRegular,
            Padding(
              padding: commonPaddding,
              child: Row(
                children: [
                  Expanded(
                    child: AppText.body1Bold(
                      "Date",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: AppText.body1(
                      "24 Jan 2021",
                      color: Color(0xFF616161),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpaceRegular,
            Padding(
              padding: commonPaddding,
              child: Row(
                children: [
                  Expanded(
                    child: AppText.body1Bold(
                      "Time",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: AppText.body1(
                      "10:30 AM",
                      color: Color(0xFF616161),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpaceRegular,
            Padding(
              padding: commonPaddding,
              child: Row(
                children: [
                  Expanded(
                    child: AppText.body1Bold(
                      "Name",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: AppText.body1(
                      "Jiten",
                      color: Color(0xFF616161),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpaceRegular,
            Padding(
              padding: commonPaddding,
              child: Row(
                children: [
                  Expanded(
                    child: AppText.body1Bold(
                      "Phone",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: AppText.body1(
                      "80000000045",
                      color: Color(0xFF616161),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpaceRegular,
            Padding(
              padding: commonPaddding,
              child: Row(
                children: [
                  Expanded(
                    child: AppText.body1Bold(
                      "Email",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: AppText.body1(
                      "Jithen@gmail.com",
                      color: Color(0xFF616161),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpaceRegular,
            Padding(
              padding: commonPaddding,
              child: Row(
                children: [
                  Expanded(
                    child: AppText.body1Bold(
                      "Amount Paid",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: AppText.body1(
                      "INR 2000",
                      color: Color(0xFF616161),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpaceSmall,
            spacedDividerSmall,
            verticalSpaceSmall,
            Padding(
              padding: commonPaddding,
              child: AppText.caption("Order Summary"),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xFF0F0D23),
                ),
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: bookingDummyModel.items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: colors.listOfProductColors[index],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    title: AppText.body(
                        bookingDummyModel.items[index].product!.name ?? ""),
                    subtitle: AppText.body1(
                        "${bookingDummyModel.items[index].count} Units"),
                    trailing: AppText.body1Bold(
                        "\$${(bookingDummyModel.items[index].product!.discountPrice ?? 0.0) * (bookingDummyModel.items[index].count)}"),
                  );
                },
                separatorBuilder: (context, index) => spacedDividerSmall,
              ),
            ),
            spacedDividerSmall,
            Padding(
              padding: commonPaddding,
              child: AppText.captionBold("Booking Address"),
            ),
            Padding(
              padding: commonPaddding,
              child: AppText.caption("T-129 Emaeral Hills, Gurgaon 122018"),
            ),
            spacedDividerSmall,
            Align(
              alignment: Alignment.center,
              child: AppText.caption(
                "For any assitance. Please call us at 90090004473",
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpaceSmall,
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: colors.eCommercePrimary,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(20),
              margin: commonPaddding,
              child: Center(
                child: AppText.body1Bold(
                  "REORDER",
                  color: colors.white,
                ),
              ),
            ),
            verticalSpaceRegular,
          ],
        ),
      ),
    );
  }
}
