import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tamely/api/api_service.dart';
import 'package:tamely/api/server_error.dart';
import 'package:tamely/app/app.locator.dart';
import 'package:tamely/app/app.router.dart';
import 'package:tamely/enum/BottomSheetType.dart';
import 'package:tamely/enum/DialogType.dart';
import 'package:tamely/models/e-commerce/product_id_common_body.dart';
import 'package:tamely/models/e-commerce/product_response.dart';
import 'package:tamely/models/feed_post_response.dart';
import 'package:tamely/models/params/delete_post_body.dart';
import 'package:tamely/models/params/like_dislike_post_body.dart';
import 'package:tamely/services/shared_preferences_service.dart';
import 'package:tamely/shared/base_viewmodel.dart';
import 'package:tamely/util/ImageConstant.dart';
import 'package:tamely/util/String.dart';
import 'package:tamely/util/global_methods.dart';
import 'package:tamely/widgets/dialogs/image_pop_dailog_view.dart';

class ProductItemViewModel extends BaseModel {
  final _bottomsheetService = locator<BottomSheetService>();
  final _sharedPrefernceService = locator<SharedPreferencesService>();
  final navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _tamelyApi = locator<TamelyApi>();

  String Id = "";
  String productID = "";

  bool isHuman = true;
  String petToken = "";

  void init(ProductResponse productResponse) async {
    CurrentProfile profile = _sharedPrefernceService.getCurrentProfile();
    this.isHuman = profile.isHuman;
    this.Id = profile.isHuman ? profile.userId : profile.petId;
    this.petToken = profile.petToken;
    this.productID = productResponse.id ?? "";
    notifyListeners();
  }

  Future favAction({required bool isAlreadyFavorite}) async {
    var response;
    if(isAlreadyFavorite){
    response = await _tamelyApi.addToFavourites(
        ProductIdCommonBody(productID), isHuman,
        petToken: petToken);
    }
    else{
      response = await _tamelyApi.deleteFromFavourites(
          ProductIdCommonBody(productID), isHuman,
          petToken: petToken);
    }
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
      notifyListeners();
    } else if (response.data != null) {
      _snackBarService.showSnackbar(message: response.data!.message ?? "");
    }
  }

  Future cartAction() async {
    var response = await _tamelyApi
        .addToCart(ProductIdCommonBody(productID), isHuman, petToken: petToken);
    if (response.getException != null) {
      ServerError error = response.getException as ServerError;
      _snackBarService.showSnackbar(message: error.getErrorMessage());
      notifyListeners();
    } else if (response.data != null) {
      _snackBarService.showSnackbar(message: response.data!.message ?? "");
    }
  }
}
