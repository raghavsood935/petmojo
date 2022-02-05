import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/e-commerce/product_response.dart';

part 'product_list_response.freezed.dart';
part 'product_list_response.g.dart';

@freezed
class ProductListResponse with _$ProductListResponse {
  ProductListResponse._();

  factory ProductListResponse({
    @JsonKey(name: "products") List<ProductResponse>? products,
  }) = _ProductListResponse;

  factory ProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseFromJson(json);
}
