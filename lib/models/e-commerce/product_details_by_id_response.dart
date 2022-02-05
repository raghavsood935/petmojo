import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/e-commerce/product_response.dart';

part 'product_details_by_id_response.freezed.dart';
part 'product_details_by_id_response.g.dart';

@freezed
class ProductDetailsByIdResponse with _$ProductDetailsByIdResponse {
  ProductDetailsByIdResponse._();

  factory ProductDetailsByIdResponse({
    @JsonKey(name: "product") ProductResponse? product,
  }) = _ProductDetailsByIdResponse;

  factory ProductDetailsByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsByIdResponseFromJson(json);
}
