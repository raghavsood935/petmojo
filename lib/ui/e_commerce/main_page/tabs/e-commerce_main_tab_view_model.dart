import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/dummy/dummy_product_item_model.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/models/e-commerce/product_response.dart';
import 'package:tamely/models/params/counter_body.dart';

class ECommerceMainTabViewModel extends BaseModel {
  final navigationSerive = locator<NavigationService>();
  final _tamelyApi = locator<TamelyApi>();
  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _snackBarService = locator<SnackbarService>();

  int _counter = 0;
  bool _isLoading = false;
  bool _isEndOfList = false;

  bool isHuman = true;
  String petToken = "";

  List<ProductResponse> products = [];

  Future init() async {
    CurrentProfile profile = _sharedPreferenceService.getCurrentProfile();

    isHuman = profile.isHuman;
    petToken = profile.petToken;
    notifyListeners();

    getProducts(false);
  }

  Future getProducts(bool isFromSeeMore) async {
    _isLoading = true;
    notifyListeners();
    if (!isFromSeeMore) {
      _counter = 0;
      products.clear();
      notifyListeners();
    }

    var response = await _tamelyApi.getProducts(CounterBody(_counter), isHuman,
        petToken: petToken);

    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      // _snackBarService.showSnackbar(message: error.getErrorMessage());
      _isLoading = false;
      notifyListeners();
    } else if (response.data != null) {
      if (!isFromSeeMore) {
        products.clear();
        notifyListeners();
      }
      if ((response.data!.products ?? []).length < 10) {
        _isEndOfList = true;
      }
      products.addAll(response.data!.products ?? []);
      _isLoading = false;
      if (isFromSeeMore) {
        _counter++;
      }
      notifyListeners();
    }
  }

  Future onProductPressed(ProductResponse product, int index) async {
    navigationSerive.navigateTo(Routes.productDetailView,
        arguments: ProductDetailViewArguments(
            dummyProductModel: product, index: index));
  }

  Future onMyOrderPressed() async {
    navigationSerive.navigateTo(Routes.productBookingsMainView);
  }

  bool get isEndOfList => _isEndOfList;

  bool get isLoading => _isLoading;
}
