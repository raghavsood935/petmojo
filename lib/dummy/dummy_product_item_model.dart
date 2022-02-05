import 'package:flutter/material.dart';

class DummyProductModel {
  String? productName;
  String? brand;
  bool? isFav;
  double? currentPrice;
  double? acutalPrice;
  double? rating;
  double? soldCount;
  Color? productColor;
  Color? productBGColor;

  DummyProductModel({
    this.productName,
    this.brand,
    this.isFav,
    this.currentPrice,
    this.acutalPrice,
    this.rating,
    this.soldCount,
    this.productColor,
    this.productBGColor,
  });
}
