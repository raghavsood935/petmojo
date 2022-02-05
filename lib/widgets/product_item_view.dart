import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/models/e-commerce/product_response.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/bottom_sheet_view_models/product_item_view_model.dart';

class ProductItemView extends StatefulWidget {
  ProductItemView({Key? key, required this.productModel, required this.index})
      : super(key: key);

  ProductResponse productModel;
  int index;

  @override
  State<ProductItemView> createState() => _ProductItemViewState(productModel);
}

class _ProductItemViewState extends State<ProductItemView> {
  bool isFav = false;
  bool isCarted = false;

  _ProductItemViewState(ProductResponse productModel) {
    isFav = productModel.isFav ?? false;
    isCarted = productModel.isCarted ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductItemViewModel>.reactive(
      viewModelBuilder: () => ProductItemViewModel(),
      onModelReady: (model) => model.init(widget.productModel),
      builder: (context, model, child) => Container(
        height: 280,
        decoration: BoxDecoration(
          color: colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow(color: colors.black)],
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 130,
                    width: double.maxFinite,
                    color: colors.listOfProductBgColors[widget.index],
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          bottom: 10,
                          right: 10,
                          left: 10,
                          child: CircleAvatar(
                            backgroundColor:
                                colors.listOfProductColors[widget.index],
                            backgroundImage:
                                NetworkImage(widget.productModel.avatar ?? ""),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                model.favAction();
                                isFav = !isFav;
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor:
                                  isFav ? Color(0xFFFA634D) : Color(0xFFBDBDBD),
                              radius: 15,
                              child: Icon(
                                Icons.favorite,
                                color: colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceTiny,
                  AppText.body(widget.productModel.name ?? ""),
                  verticalSpaceTiny,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Color(0xFFFFA501),
                      ),
                      AppText.caption("${widget.productModel.rating ?? 0.0}"),
                      // AppText.caption(
                      //     "${productModel.rating ?? 0.0} | >${productModel.soldCount ?? 0} Sold"),
                    ],
                  ),
                  verticalSpaceTiny,
                  AppText.caption("${widget.productModel.brand ?? ""}"),
                  verticalSpaceTiny,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AppText.subheading(
                          "\$${widget.productModel.discountPrice ?? 0}"),
                      horizontalSpaceSmall,
                      AppText.body1(
                        "\$${widget.productModel.originalPrice ?? 0}",
                        color: Color(0xFFF75243),
                      )
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 35,
                width: 45,
                decoration: BoxDecoration(
                  color: colors.eCommercePrimary,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(5),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      model.cartAction();
                      isCarted = !isCarted;
                    });
                  },
                  child: Icon(
                    isCarted
                        ? Icons.shopping_cart_outlined
                        : Icons.add_shopping_cart_rounded,
                    color: colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
