import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/dummy/dummy_product_item_model.dart';
import 'package:tamely/models/e-commerce/product_response.dart';
import 'package:tamely/ui/e_commerce/main_page/tabs/e-commerce_main_tab_view.dart';
import 'package:tamely/ui/e_commerce/product_detail/product_detail_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/gradient_btn.dart';
import 'package:tamely/widgets/product_item_small_view.dart';

class ProductDetailView extends StatefulWidget {
  ProductDetailView(
      {Key? key, required this.dummyProductModel, required this.index})
      : super(key: key);

  ProductResponse dummyProductModel;
  int index;

  @override
  _ProductDetailViewState createState() =>
      _ProductDetailViewState(dummyProductModel);
}

class _ProductDetailViewState extends State<ProductDetailView> {
  bool isFav = false;
  bool isCarted = false;
  bool isReadMoreOpened = false;

  _ProductDetailViewState(ProductResponse productModel) {
    isFav = productModel.isFav ?? false;
    isCarted = productModel.isCarted ?? false;
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: widget.dummyProductModel.productBGColor));

    return ViewModelBuilder<ProductDetailViewModel>.reactive(
      viewModelBuilder: () => ProductDetailViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceRegular,
              Container(
                height: 320,
                width: screenWidth(context),
                color: colors.listOfProductBgColors[widget.index],
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 10,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 0,
                      right: 0,
                      child: AppText.titleBold(
                        "Details",
                        textAlign: TextAlign.center,
                        color: colors.black,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: GestureDetector(
                        onTap: model.goToCart,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 50,
                          height: 50,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                bottom: 0,
                                right: 0,
                                left: 0,
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  color: colors.black,
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Visibility(
                                  visible: true,
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: colors.red,
                                    child: AppText.tiny(
                                      "10",
                                      color: colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 30,
                      left: 30,
                      top: 55,
                      child: CircleAvatar(
                        backgroundColor:
                            colors.listOfProductColors[widget.index],
                        backgroundImage:
                            NetworkImage(widget.dummyProductModel.avatar ?? ""),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 10,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                        decoration: BoxDecoration(
                          color: colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: AppText.caption(
                          "1/8",
                          color: colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpaceRegular,
              Padding(
                padding: commonPadding,
                child: Row(
                  children: [
                    AppText.titleBold(
                      "\$${widget.dummyProductModel.discountPrice ?? 0}    ",
                      color: colors.black,
                    ),
                    Text(
                      "\$${widget.dummyProductModel.originalPrice ?? 0}",
                      style: TextStyle(
                        color: Color(0xFFF75243),
                        fontSize: 16,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    // AppText.caption(
                    //     "    >${widget.dummyProductModel.soldCount} Sold"),
                    Spacer(),
                    CircleAvatar(
                      radius: 23,
                      backgroundColor:
                          (isFav) ? Color(0xFFFA634D) : Color(0xFFBDBDBD),
                      child: Icon(
                        Icons.favorite,
                        color: colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpaceSmall,
              Padding(
                padding: commonPadding,
                child: AppText.titleBold(
                  widget.dummyProductModel.name ?? "",
                  textAlign: TextAlign.start,
                  color: colors.black,
                ),
              ),
              verticalSpaceRegular,
              Padding(
                padding: commonPadding,
                child: Row(
                  children: [
                    staticStarWidget(
                        widget.dummyProductModel.rating ?? 0.0, false),
                    horizontalSpaceSmall,
                    AppText.body1(
                      "${widget.dummyProductModel.rating ?? 0.0}",
                      color: Color(0xFF1E3354),
                    ),
                    horizontalSpaceSmall,
                    AppText.body1(
                      "(${48})",
                      color: Color(0xFF7F8E9D),
                    ),
                  ],
                ),
              ),
              verticalSpaceTiny,
              GradiantBtn(title: "Cashback 10%"),
              spacedDividerSmall,
              verticalSpaceSmall,
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: colors.kcMediumGreyColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                title: AppText.titleBold("Us Fashion"),
                subtitle: AppText.caption("California, USA"),
              ),
              verticalSpaceSmall,
              Row(
                children: [
                  Spacer(),
                  Column(
                    children: [
                      AppText.titleBold(
                        "120",
                        color: colors.black,
                      ),
                      verticalSpaceTiny,
                      AppText.caption("Products"),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 2,
                    color: Color(0xFFE9ECF4),
                    height: 50,
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Color(0xFFFFA501)),
                          AppText.titleBold(
                            "${widget.dummyProductModel.rating ?? 0.0}",
                            color: colors.black,
                          ),
                        ],
                      ),
                      verticalSpaceTiny,
                      AppText.caption("Reviews"),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 2,
                    color: Color(0xFFE9ECF4),
                    height: 50,
                  ),
                  Spacer(),
                  Column(
                    children: [
                      AppText.titleBold(
                        "100%",
                        color: colors.black,
                      ),
                      verticalSpaceTiny,
                      AppText.caption("Responded"),
                    ],
                  ),
                  Spacer()
                ],
              ),
              verticalSpaceSmall,
              spacedDividerSmall,
              verticalSpaceSmall,
              Container(
                margin: commonPadding,
                padding: EdgeInsets.all(20),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color(0xFFC1C1C1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        AppText.body(
                          "Product Information : ",
                          color: colors.black,
                        ),
                        Spacer(),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFA501),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: AppText.caption(
                            "New",
                            color: colors.white,
                          ),
                        )
                      ],
                    ),
                    verticalSpaceRegular,
                    Row(
                      children: [
                        AppText.body1("Weight"),
                        Spacer(),
                        AppText.body1("1.5 Kg"),
                      ],
                    ),
                    verticalSpaceRegular,
                    Row(
                      children: [
                        AppText.body1("Sold"),
                        Spacer(),
                        AppText.body1("500 products"),
                      ],
                    ),
                    verticalSpaceRegular,
                    Row(
                      children: [
                        AppText.body1("Brand"),
                        Spacer(),
                        AppText.body1(
                            "${widget.dummyProductModel.brand ?? ""}"),
                      ],
                    ),
                    verticalSpaceRegular,
                    Row(
                      children: [
                        AppText.body1("Stock"),
                        Spacer(),
                        AppText.body1(">1156 Available"),
                      ],
                    ),
                    verticalSpaceRegular,
                    AppText.body(
                      "Product Information : ",
                      color: colors.black,
                    ),
                    verticalSpaceSmall,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Visibility(
                          visible: !isReadMoreOpened,
                          child: AppText.body1(
                            "${(widget.dummyProductModel.description ?? "").length > 25 ? "${(widget.dummyProductModel.description ?? "").substring(0, 25)}" : "${widget.dummyProductModel.description ?? ""}"}${isReadMoreOpened ? "" : (widget.dummyProductModel.description ?? "").length < 25 ? "" : "..."}",
                          ),
                        ),
                        Visibility(
                          visible: isReadMoreOpened,
                          child: AppText.body1(
                            "${widget.dummyProductModel.description ?? ""}",
                          ),
                        ),
                        verticalSpaceRegular,
                        Visibility(
                          visible: (widget.dummyProductModel.description ?? "")
                                  .length >
                              25,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isReadMoreOpened = !isReadMoreOpened;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppText.captionBold(
                                    "Read ${isReadMoreOpened ? "less" : "more"}"),
                                Icon(
                                  isReadMoreOpened
                                      ? Icons.keyboard_arrow_up_rounded
                                      : Icons.keyboard_arrow_down_rounded,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              verticalSpaceSmall,
              spacedDividerSmall,
              verticalSpaceSmall,
              subTitleWidget("Other Products"),
              SizedBox(
                height: 170,
                child: ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: model.otherProducts.length,
                  itemBuilder: (context, index) => otherProductWidget(
                      model.otherProducts[index],
                      index == 0,
                      index == model.otherProducts.length - 1),
                ),
              ),
              verticalSpaceSmall,
              spacedDividerSmall,
              verticalSpaceSmall,
              subTitleWidget("Customer reviews"),
              verticalSpaceSmall,
              Padding(
                padding: commonPadding,
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xFFFFA501),
                      size: 18,
                    ),
                    AppText.body1Bold(
                        "  ${widget.dummyProductModel.rating ?? 0.0}/5"),
                    AppText.body1(" . 120 Reviews"),
                  ],
                ),
              ),
              verticalSpaceSmall,
              Container(
                margin: commonPadding,
                padding: EdgeInsets.all(20),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color(0xFFC1C1C1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        staticStarWidget(4.5, true),
                        AppText.captionBold(
                          "  4.5",
                          color: colors.black,
                        ),
                        Spacer(),
                        AppText.caption(
                          "May 5,2020",
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    AppText.bodyBold("Angelina Dawnie"),
                    verticalSpaceSmall,
                    AppText.body1("This suits me just fine..."),
                  ],
                ),
              ),
              verticalSpaceSmall,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: commonPadding,
                decoration: BoxDecoration(
                  color: colors.white,
                  border: Border.all(color: colors.black, width: 1),
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
                    hintText: "Write your review",
                  ),
                ),
              ),
              verticalSpaceSmall,
              Padding(
                padding: commonPadding,
                child: AppText.bodyBold("Give ratings"),
              ),
              verticalSpaceTiny,
              Padding(
                padding: commonPadding,
                child: staticStarWidget(1, true),
              ),
              verticalSpaceSmall,
              spacedDividerSmall,
              verticalSpaceSmall,
              subTitleWidget("Suggestion Products"),
              SizedBox(
                height: 265,
                child: ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: model.otherProducts.length,
                  itemBuilder: (context, index) => suggestionProductWidget(
                      model.otherProducts[index],
                      index == 0,
                      index == model.otherProducts.length - 1),
                ),
              ),
              SizedBox(height: 100)
            ],
          ),
        ),
        bottomSheet: Theme(
          data: Theme.of(context).copyWith(
              bottomSheetTheme: BottomSheetThemeData(
                  backgroundColor: Colors.black.withOpacity(0))),
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              color: colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Color(0xFFF9F9F9),
                      width: 2,
                    ),
                  ),
                  child: Icon(
                    isCarted
                        ? Icons.shopping_cart_outlined
                        : Icons.add_shopping_cart_rounded,
                    color: colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () => model.onBookClicked(widget.dummyProductModel),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color: colors.eCommercePrimary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: AppText.bodyBold(
                      "Buy Now",
                      color: colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget staticStarWidget(double rate, bool isSmall) {
  int wholeRate = rate.toInt();
  return Row(
    children: [
      Icon(
        wholeRate >= 1 ? Icons.star : Icons.star_border,
        color: Color(0xFFFFA501),
        size: isSmall ? 14 : 20,
      ),
      Icon(
        wholeRate >= 2 ? Icons.star : Icons.star_border,
        color: Color(0xFFFFA501),
        size: isSmall ? 14 : 20,
      ),
      Icon(
        wholeRate >= 3 ? Icons.star : Icons.star_border,
        color: Color(0xFFFFA501),
        size: isSmall ? 14 : 20,
      ),
      Icon(
        wholeRate >= 4 ? Icons.star : Icons.star_border,
        color: Color(0xFFFFA501),
        size: isSmall ? 14 : 20,
      ),
      Icon(
        wholeRate >= 5 ? Icons.star : Icons.star_border,
        color: Color(0xFFFFA501),
        size: isSmall ? 14 : 20,
      ),
    ],
  );
}

Widget otherProductWidget(DummyProductModel model, bool isFirst, bool isLast) {
  return Container(
    height: 150,
    margin: EdgeInsets.only(
        top: 10, bottom: 10, left: isFirst ? 20 : 5, right: isLast ? 20 : 5),
    decoration: BoxDecoration(
        color: colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [BoxShadow(color: colors.black)]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          width: 130,
          decoration: BoxDecoration(
              color: model.productBGColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(5))),
          child: Stack(
            children: [
              Positioned(
                top: 5,
                bottom: 5,
                right: 0,
                left: 0,
                child: CircleAvatar(backgroundColor: model.productColor),
              ),
            ],
          ),
        ),
        verticalSpaceSmall,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: AppText.body1Bold(model.productName ?? ""),
        ),
        verticalSpaceSmall,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              AppText.body1(
                "\$${model.currentPrice ?? 0}    ",
                color: colors.black,
              ),
              Text(
                "\$${model.acutalPrice ?? 0}",
                style: TextStyle(
                  color: Color(0xFFF75243),
                  fontSize: 14,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget suggestionProductWidget(
    DummyProductModel model, bool isFirst, bool isLast) {
  return Container(
    margin: EdgeInsets.only(
        top: 10, bottom: 10, left: isFirst ? 20 : 5, right: isLast ? 20 : 5),
    child: ProductItemSmallView(productModel: model),
  );
}
