import 'package:flutter/material.dart';
import 'package:tamely/dummy/dummy_product_item_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class ProductItemSmallView extends StatelessWidget {
  ProductItemSmallView({Key? key, required this.productModel})
      : super(key: key);

  DummyProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 150,
      decoration: BoxDecoration(
          color: colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow(color: colors.black)]),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  width: 130,
                  color: productModel.productBGColor,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 5,
                        bottom: 5,
                        right: 0,
                        left: 0,
                        child: CircleAvatar(
                          backgroundColor: productModel.productColor,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: CircleAvatar(
                          backgroundColor: (productModel.isFav ?? false)
                              ? Color(0xFFFA634D)
                              : Color(0xFFBDBDBD),
                          radius: 15,
                          child: Icon(
                            Icons.favorite,
                            color: colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpaceTiny,
                AppText.body1(productModel.productName ?? ""),
                verticalSpaceTiny,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 10,
                      color: Color(0xFFFFA501),
                    ),
                    AppText.caption(
                        "${productModel.rating ?? 0.0} | >${productModel.soldCount ?? 0} Sold"),
                  ],
                ),
                verticalSpaceTiny,
                AppText.caption("${productModel.brand ?? ""}"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                AppText.subheading("\$${productModel.currentPrice ?? 0}"),
                Spacer(),
                Container(
                  height: 35,
                  width: 45,
                  decoration: BoxDecoration(
                    color: colors.eCommercePrimary,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Icon(
                    Icons.add_shopping_cart_rounded,
                    color: colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
