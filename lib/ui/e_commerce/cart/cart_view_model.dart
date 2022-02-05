import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/models/e-commerce/product_id_common_body.dart';
import 'package:tamely/models/e-commerce/product_response.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';

class CartViewModel extends BaseModel {
  final navigationSerive = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _snackBarService = locator<SnackbarService>();
  List<CartItem> listOfItems = [];

  bool _isLoading = false;

  bool isHuman = true;
  String petToken = "";

  bool get isLoading => _isLoading;

  bool selectedAll = false;

  double totalCost = 0.0;
  int selectedCount = 0;

  Future init() async {
    // listOfItems = [
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
    //   1,
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
    //   1,
    // ),
    // ];
    CurrentProfile profile = _sharedPreferenceService.getCurrentProfile();

    isHuman = profile.isHuman;
    petToken = profile.petToken;
    notifyListeners();

    getCartProducts();
  }

  Future getCartProducts() async {
    _isLoading = true;
    notifyListeners();

    var response = await _tamelyApi.getCartDetails(isHuman, petToken: petToken);

    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      // _snackBarService.showSnackbar(message: error.getErrorMessage());
      _isLoading = false;
      notifyListeners();
    } else if (response.data != null) {
      if (response.data!.products != null) {
        response.data!.products!.map((key, value) {
          listOfItems.add(CartItem(
              ProductResponse.fromJson(value["product"]), value["quantity"]));
          return MapEntry(key, value);
        });
        notifyListeners();
      }

      _isLoading = false;
      notifyListeners();
    }
  }

  selectAllChanges(bool? value) {
    selectedAll = value ?? false;
    for (int i = 0; i < listOfItems.length; i++) {
      listOfItems[i].onSelectedChange(value ?? false);
      if (value ?? false) {
        selectItem(i);
      } else {
        deselectItem(i);
      }
    }
    notifyListeners();
  }

  selectItem(int index) {
    selectedCount++;
    totalCost = totalCost +
        ((listOfItems[index].product!.discountPrice ?? 0.0) *
            (listOfItems[index].count));
    notifyListeners();
  }

  deselectItem(int index) {
    selectedCount--;
    totalCost = totalCost -
        ((listOfItems[index].product!.discountPrice ?? 0.0) *
            (listOfItems[index].count));
    notifyListeners();
  }

  itemCountIncreses(int index) {
    if (listOfItems[index].isSelected) {
      totalCost =
          totalCost + (listOfItems[index].product!.discountPrice ?? 0.0);
      notifyListeners();
    }
  }

  itemCountDecreses(int index) {
    if (listOfItems[index].isSelected) {
      totalCost =
          totalCost - (listOfItems[index].product!.discountPrice ?? 0.0);
      notifyListeners();
    }
  }

  removeFromList(int index) {
    if (listOfItems[index].isSelected) {
      deselectItem(index);
    }
    listOfItems.removeAt(index);
    notifyListeners();
  }

  deleteAll() {
    selectAllChanges(false);
    listOfItems.clear();
    notifyListeners();
  }

  Future onCheckOutClicked() async {
    List<CartItem> selectedItems = [];
    for (CartItem item in listOfItems) {
      if (item.isSelected) {
        selectedItems.add(item);
      }
    }

    navigationSerive.navigateTo(Routes.checkOutView,
        arguments: CheckOutViewArguments(listOfItems: selectedItems));
  }
}

class CartItem {
  ProductResponse? product;
  bool isSelected = false;
  int count = 1;

  CartItem(this.product, this.count);

  onSelectedChange(bool value) {
    isSelected = value;
  }

  onCountIncressing() {
    count++;
  }

  onCountdecressing() {
    count--;
  }
}

class CartInnerItem {
  String? sId;
  int? quantity;
  Product? product;
  Variation? variation;

  CartInnerItem({this.sId, this.quantity, this.product, this.variation});

  CartInnerItem.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    quantity = json['quantity'];
    product =
        json['product'] != null ? new Product.fromJson(json['product']) : null;
    variation = json['variation'] != null
        ? new Variation.fromJson(json['variation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['quantity'] = this.quantity;
    if (this.product != null) {
      data['product'] = this.product!.toJson();
    }
    if (this.variation != null) {
      data['variation'] = this.variation!.toJson();
    }
    return data;
  }
}

class Product {
  String? sId;
  List<String>? images;
  String? name;
  String? brand;
  int? originalPrice;
  int? discountedPrice;
  String? avatar;

  Product(
      {this.sId,
      this.images,
      this.name,
      this.brand,
      this.originalPrice,
      this.discountedPrice,
      this.avatar});

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    images = json['images'].cast<String>();
    name = json['name'];
    brand = json['brand'];
    originalPrice = json['originalPrice'];
    discountedPrice = json['discountedPrice'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['images'] = this.images;
    data['name'] = this.name;
    data['brand'] = this.brand;
    data['originalPrice'] = this.originalPrice;
    data['discountedPrice'] = this.discountedPrice;
    data['avatar'] = this.avatar;
    return data;
  }
}

class Variation {
  int? undefined;

  Variation({this.undefined});

  Variation.fromJson(Map<String, dynamic> json) {
    undefined = json['undefined'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['undefined'] = this.undefined;
    return data;
  }
}
