import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tamely/ui/e_commerce/cart/cart_view_model.dart';
import 'package:tamely/util/Color.dart';
import 'package:tamely/util/ui_helpers.dart';
import 'package:tamely/widgets/app_text.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CartViewModel>.reactive(
      viewModelBuilder: () => CartViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: commonAppBar(context, "Cart"),
        body: model.isLoading
            ? Center(
                child: CircularProgressIndicator(
                  color: colors.primary,
                ),
              )
            : model.listOfItems.length == 0
                ? Center(
                    child: AppText.body1Bold(
                      "Cart is Empty!",
                      color: colors.eCommercePrimary,
                    ),
                  )
                : SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: model.selectedAll,
                              onChanged: model.selectAllChanges,
                              activeColor: Color(0xFF3AD4E0),
                            ),
                            GestureDetector(
                              onTap: () =>
                                  model.selectAllChanges(!model.selectedAll),
                              child: AppText.body(
                                  "  ${model.selectedAll ? "Des" : "S"}elect all"),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () => model.deleteAll(),
                              child: AppText.body(
                                "Delete all       ",
                                color: colors.red,
                              ),
                            ),
                          ],
                        ),
                        ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          padding: commonPaddding,
                          itemCount: model.listOfItems.length,
                          itemBuilder: (context, index) => Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(bottom: 25),
                            decoration: BoxDecoration(
                              color: colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: colors.black,
                                width: 1,
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.business_sharp,
                                      color: Color(0xFF3AD4E0),
                                    ),
                                    AppText.bodyBold(
                                      "   ${model.listOfItems[index].product!.brand ?? ""}",
                                      color: colors.black,
                                    ),
                                    Spacer(),
                                    Checkbox(
                                      value:
                                          model.listOfItems[index].isSelected,
                                      onChanged: (value) {
                                        if (value ?? false) {
                                          model.selectItem(index);
                                        } else {
                                          model.deselectItem(index);
                                        }
                                        setState(() {
                                          model.listOfItems[index]
                                              .onSelectedChange(value!);
                                        });
                                      },
                                      activeColor: Color(0xFF3AD4E0),
                                    ),
                                  ],
                                ),
                                spacedDividerSmall,
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: Container(
                                    height: 56,
                                    width: 56,
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color:
                                          colors.listOfProductBgColors[index],
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor:
                                          colors.listOfProductColors[index],
                                      backgroundImage: NetworkImage(model
                                              .listOfItems[index]
                                              .product!
                                              .avatar ??
                                          ""),
                                    ),
                                  ),
                                  title: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      AppText.body1(
                                        "${(model.listOfItems[index].product!.name ?? "").substring(0, (model.listOfItems[index].product!.name ?? "").length > 15 ? 15 : (model.listOfItems[index].product!.name ?? "").length)}${(model.listOfItems[index].product!.name ?? "").length > 15 ? ".." : ""}",
                                        color: colors.black,
                                      ),
                                      Spacer(),
                                      Text(
                                        "\$${model.listOfItems[index].product!.originalPrice ?? 0}",
                                        style: TextStyle(
                                          color: Color(0xFFF75243),
                                          fontSize: 14,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                      AppText.bodyBold(
                                        "  \$${model.listOfItems[index].product!.discountPrice ?? 0}    ",
                                        color: colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                                spacedDividerSmall,
                                Row(
                                  children: [
                                    Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        if (model.listOfItems[index].count >
                                            1) {
                                          model.itemCountDecreses(index);
                                          setState(() {
                                            model.listOfItems[index]
                                                .onCountdecressing();
                                          });
                                        }
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xFFC7CAD9),
                                            width: 1,
                                          ),
                                        ),
                                        child: AppText.bodyBold("-"),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 20),
                                      decoration: BoxDecoration(
                                        border: Border.symmetric(
                                          horizontal: BorderSide(
                                            color: Color(0xFFC7CAD9),
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      child: AppText.bodyBold(
                                          "${model.listOfItems[index].count}"),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        model.itemCountIncreses(index);
                                        setState(() {
                                          model.listOfItems[index]
                                              .onCountIncressing();
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xFFC7CAD9),
                                            width: 1,
                                          ),
                                        ),
                                        child: AppText.bodyBold("+"),
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      onPressed: () =>
                                          model.removeFromList(index),
                                      icon: Icon(
                                        Icons.delete_outline_outlined,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                            height: model.selectedCount == 0 ? 15.0 : 175.0),
                      ],
                    ),
                  ),
        bottomSheet: Visibility(
          visible: model.selectedCount > 0,
          child: Container(
            height: 160,
            decoration: BoxDecoration(
              color: colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                ListTile(
                  title: AppText.bodyBold(
                      "Total (${model.selectedCount} Products) : "),
                  subtitle: AppText.caption("Not Including Shipping"),
                  trailing: AppText.subheading("\$${model.totalCost}"),
                ),
                GestureDetector(
                  onTap: model.onCheckOutClicked,
                  child: Container(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
