import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/e_commerce/main_page/tabs/e-commerce_main_tab_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/gradient_btn.dart';
import 'package:tamely/widgets/product_item_view.dart';

class ECommerceMainTabView extends StatefulWidget {
  ECommerceMainTabView({Key? key, required this.type}) : super(key: key);

  String type;

  @override
  _ECommerceMainTabViewState createState() => _ECommerceMainTabViewState();
}

class _ECommerceMainTabViewState extends State<ECommerceMainTabView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ECommerceMainTabViewModel>.reactive(
      viewModelBuilder: () => ECommerceMainTabViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Container(
        color: Color(0xFFE5E5E5),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                    onTap: model.onMyOrderPressed,
                    child: GradiantBtn(title: "My Orders"))),
            subTitleWidget("Hot Offer"),
            SizedBox(
              height: 200,
              child: Swiper(
                autoplay: true,
                loop: true,
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  height: 10,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF3AD4E0), Color(0xFF2EB5BF)],
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onIndexChanged: (int i) {
                  setState(() {
                    index = i;
                  });
                },
              ),
            ),
            SizedBox(
              height: 35,
              child: AnimatedSmoothIndicator(
                activeIndex: index,
                count: 5,
                effect: ScrollingDotsEffect(
                  activeDotScale: 1.5,
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: colors.eCommercePrimary,
                ),
              ),
            ),
            verticalSpaceRegular,
            subTitleWidget("Preferred Brand"),
            StaggeredGridView.countBuilder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              itemBuilder: (context, index) => brandItem(index),
              itemCount: 4,
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            ),
            subTitleWidget("Hot Deals"),
            StaggeredGridView.countBuilder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(20),
              crossAxisSpacing: 15,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () =>
                    model.onProductPressed(model.products[index], index),
                child: ProductItemView(
                    productModel: model.products[index], index: index),
              ),
              itemCount: model.products.length,
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            ),
            verticalSpaceRegular,
            Visibility(
              visible: model.isLoading,
              child: CircularProgressIndicator(
                color: colors.primary,
              ),
            ),
            verticalSpaceRegular,
            Visibility(
              visible: model.products.isNotEmpty,
              child: Visibility(
                visible: !model.isEndOfList,
                child: Visibility(
                  visible: !model.isLoading,
                  child: GestureDetector(
                    onTap: () => model.getProducts(true),
                    child: AppText.body1Bold(
                      "See more products",
                      color: colors.primary,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 250)
          ],
        ),
      ),
    );
  }
}

Widget subTitleWidget(String title) => Padding(
      padding: commonPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText.titleBold(title),
          AppText.body1(
            "View all",
            color: Color(0xFF3AD4E0),
          )
        ],
      ),
    );

Widget brandItem(int index) {
  List<Color> _colors = [
    Color(0xFFFEDC57),
    Color(0xFF84DA6B),
    Color(0xFF96BAA0),
    Color(0xFFF66758)
  ];

  List<String> _discount = [
    "20%",
    "30%",
    "15%",
    "12%",
  ];

  return Container(
    height: 100,
    padding: EdgeInsets.only(left: 10),
    decoration: BoxDecoration(
      color: _colors[index],
      borderRadius: BorderRadius.circular(5),
    ),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.captionBold(
            "Discount",
            color: colors.black,
          ),
          AppText.caption(
            "up to",
            color: colors.black,
          ),
          AppText.subheading(
            _discount[index],
            color: colors.black,
          ),
        ]),
  );
}
