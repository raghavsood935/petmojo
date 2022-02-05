import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/e_commerce/main_page/tabs/e-commerce_main_tab_view.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';
import 'package:tamely/widgets/product_item_view.dart';

import 'e_commerce_main_view_model.dart';

class ECommerceMainView extends StatefulWidget {
  const ECommerceMainView({Key? key}) : super(key: key);

  @override
  _ECommerceMainViewState createState() => _ECommerceMainViewState();
}

class _ECommerceMainViewState extends State<ECommerceMainView> {
  bool isFavView = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: colors.eCommercePrimary));
    return ViewModelBuilder<ECommerceMainViewModel>.reactive(
      viewModelBuilder: () => ECommerceMainViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            padding: const EdgeInsets.only(left: 10),
            icon: SvgPicture.asset(
              "assets/images/drawer.svg",
              color: colors.white,
              height: 30,
              width: 30,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
          title: isFavView
              ? AppText.titleBold(
                  "Favorite",
                  color: colors.white,
                )
              : Image.asset("assets/images/e-commerce-logo-title.png"),
          backgroundColor: colors.eCommercePrimary,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  isFavView = !isFavView;
                });
              },
              icon: Icon(
                isFavView ? Icons.favorite : Icons.favorite_border,
                color: colors.white,
              ),
            ),
            Container(
              width: 50,
              height: 50,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "assets/images/notification.svg",
                        color: colors.white,
                      ),
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
            GestureDetector(
              onTap: model.goToCArt,
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
                        color: colors.white,
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
          ],
        ),
        body: Container(
          color: colors.eCommercePrimary,
          height: screenHeight(context),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        margin: EdgeInsets.only(
                            top: 15,
                            bottom: 15,
                            left: 20,
                            right: isFavView ? 0 : 20),
                        decoration: BoxDecoration(
                          color: colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          controller: model.searchTC,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search for favorite items",
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: isFavView,
                      child: IconButton(
                        icon: Icon(
                          Icons.filter_alt,
                          color: colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                isFavView
                    ? Container(
                        color: Color(0xFFE5E5E5),
                        height: screenHeight(context),
                        child: StaggeredGridView.countBuilder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.all(20),
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 20,
                          crossAxisCount: 2,
                          itemBuilder: (context, index) => ProductItemView(
                            productModel: model.favProducts[index],
                            index: index,
                          ),
                          itemCount: model.favProducts.length,
                          staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                        ),
                      )
                    : DefaultTabController(
                        length: 3,
                        child: SingleChildScrollView(
                          physics: ScrollPhysics(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: TabBar(
                                  tabs: [
                                    Tab(text: "Popular"),
                                    Tab(text: "Shop For Dogs"),
                                    Tab(text: "Shop For Cats"),
                                  ],
                                  physics: ScrollPhysics(),
                                  isScrollable: true,
                                  labelColor: colors.white,
                                  unselectedLabelColor: Color(0xFFEDAFC0),
                                  indicator: UnderlineTabIndicator(
                                    insets:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    borderSide: BorderSide(
                                      width: 5,
                                      color: colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // height: double.maxFinite,
                                height: screenHeight(context),
                                child: TabBarView(
                                  children: [
                                    SingleChildScrollView(
                                      physics: ScrollPhysics(),
                                      child:
                                          ECommerceMainTabView(type: "Popular"),
                                    ),
                                    SingleChildScrollView(
                                      physics: ScrollPhysics(),
                                      child: ECommerceMainTabView(type: "Dog"),
                                    ),
                                    SingleChildScrollView(
                                      physics: ScrollPhysics(),
                                      child: ECommerceMainTabView(type: "Cat"),
                                    ),
                                  ],
                                ),
                              ),
                              // SingleChildScrollView(
                              //   physics: ScrollPhysics(),
                              //   child:
                              // )
                            ],
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
