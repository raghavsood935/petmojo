import 'package:flutter/material.dart';
import 'package:tamely/ui/e_commerce/product_bookings/tabs/my_product_booking_tab_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/widgets/app_text.dart';

class ProductBookingsMainView extends StatelessWidget {
  const ProductBookingsMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: AppText.titleBold("My Bookings"),
          backgroundColor: colors.white,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: colors.black,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: "Active"),
              Tab(text: "Past"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MyProductBookingTabView(),
            MyProductBookingTabView(),
          ],
        ),
      ),
    );
  }
}
