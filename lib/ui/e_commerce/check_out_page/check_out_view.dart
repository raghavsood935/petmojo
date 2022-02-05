import 'package:flutter/material.dart';
import 'package:tamely/ui/e_commerce/cart/cart_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class CheckOutView extends StatefulWidget {
  CheckOutView({Key? key, required this.listOfItems}) : super(key: key);

  List<CartItem> listOfItems;

  @override
  _CheckOutViewState createState() => _CheckOutViewState(listOfItems);
}

class _CheckOutViewState extends State<CheckOutView> {
  double subTotal = 0.0;

  _CheckOutViewState(List<CartItem> listOfItems) {
    for (CartItem item in listOfItems) {
      subTotal =
          subTotal + ((item.product!.discountPrice ?? 0.0) * (item.count));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(context, "Order Summary"),
      body: Padding(
        padding: commonPaddding,
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceRegular,
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xFF0F0D23),
                  ),
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: widget.listOfItems.length,
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
                          widget.listOfItems[index].product!.name ?? ""),
                      subtitle: AppText.body1(
                          "${widget.listOfItems[index].count} Units"),
                      trailing: AppText.body1Bold(
                          "\$${(widget.listOfItems[index].product!.discountPrice ?? 0.0) * (widget.listOfItems[index].count)}"),
                    );
                  },
                  separatorBuilder: (context, index) => spacedDividerSmall,
                ),
              ),
              verticalSpaceRegular,
              AppText.subheading("Personal Details"),
              verticalSpaceRegular,
              AppText.body(
                "Full Name",
                color: Color(0xFFAAAAAA),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: colors.white,
                  border: Border.all(color: colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    hintText: "Enter a full name",
                  ),
                ),
              ),
              verticalSpaceTiny,
              AppText.body(
                "Email Address",
                color: Color(0xFFAAAAAA),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: colors.white,
                  border: Border.all(color: colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    hintText: "Enter a email address",
                  ),
                ),
              ),
              verticalSpaceTiny,
              AppText.body(
                "Phone number",
                color: Color(0xFFAAAAAA),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: colors.white,
                  border: Border.all(color: colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    hintText: "Enter a phone number",
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              verticalSpaceRegular,
              AppText.subheading("Shipping Details"),
              verticalSpaceRegular,
              AppText.body(
                "Your location",
                color: Color(0xFFAAAAAA),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: colors.white,
                  border: Border.all(color: colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    hintText: "Pick location",
                    suffix: AppText.body1Bold(
                      "Change",
                      color: colors.eCommercePrimary,
                    ),
                  ),
                ),
              ),
              verticalSpaceTiny,
              AppText.body(
                "Complete Address",
                color: Color(0xFFAAAAAA),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: colors.white,
                  border: Border.all(color: colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    hintText: "Enter a complete Address",
                  ),
                ),
              ),
              verticalSpaceTiny,
              AppText.body(
                "How to reach?",
                color: Color(0xFFAAAAAA),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: colors.white,
                  border: Border.all(color: colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    hintText: "Nearby Landmark",
                  ),
                ),
              ),
              verticalSpaceTiny,
              AppText.body(
                "Apply Promocode",
                color: colors.black,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: colors.white,
                  border: Border.all(color: colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    hintText: "Discount code",
                    suffix: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: colors.eCommercePrimary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: AppText.body1Bold(
                        "Apply Code",
                        color: colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              verticalSpaceRegular,
              Row(
                children: [
                  AppText.subheading("Sub total"),
                  Spacer(),
                  AppText.subheading("\$$subTotal"),
                ],
              ),
              spacedDividerSmall,
              verticalSpaceRegular,
              Row(
                children: [
                  AppText.subheading("Delivery Fee"),
                  Spacer(),
                  AppText.subheading("\$20"),
                ],
              ),
              spacedDividerSmall,
              verticalSpaceRegular,
              Row(
                children: [
                  AppText.subheading("Total"),
                  Spacer(),
                  AppText.subheading("\$${subTotal + 20.0}"),
                ],
              ),
              verticalSpaceRegular,
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
                    "Checkout",
                    color: colors.white,
                  ),
                ),
              ),
              verticalSpaceRegular,
            ],
          ),
        ),
      ),
    );
  }
}
