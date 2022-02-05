import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/dummy/dummy_product_item_model.dart';
import 'package:tamely/models/e-commerce/product_response.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';

import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';

class ECommerceMainViewModel extends BaseModel {
  final navigationSerive = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _sharedPreferenceService = locator<SharedPreferencesService>();

  TextEditingController searchTC = TextEditingController();

  List<ProductResponse> favProducts = [];

  bool _isLoading = false;

  bool isHuman = true;
  String petToken = "";

  bool get isLoading => _isLoading;

  Future init() async {
    CurrentProfile profile = _sharedPreferenceService.getCurrentProfile();

    isHuman = profile.isHuman;
    petToken = profile.petToken;
    notifyListeners();

    getFavProducts();
  }

  Future getFavProducts() async {
    favProducts.clear();

    _isLoading = true;
    notifyListeners();

    var response =
        await _tamelyApi.getFavouriteDetails(isHuman, petToken: petToken);

    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      // _snackBarService.showSnackbar(message: error.getErrorMessage());
      _isLoading = false;
      notifyListeners();
    } else if (response.data != null) {
      if (response.data!.fav != null) {
        response.data!.fav!.products!.map((key, value) {
          favProducts.add(ProductResponse.fromJson(value["product"]));
          return MapEntry(key, value);
        });
        notifyListeners();
      }

      _isLoading = false;
      notifyListeners();
    }
  }

  Future goToCArt() async {
    navigationSerive.navigateTo(Routes.cartView);
  }
}
