import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/e-commerce/product_response.dart';
import 'package:tamely/models/my_animal_model.dart';

part 'fav_product_list_response.freezed.dart';
part 'fav_product_list_response.g.dart';

@freezed
class FavProductListResponse with _$FavProductListResponse {
  FavProductListResponse._();

  factory FavProductListResponse({
    @JsonKey(name: "fav") FavInnerProductListResponse? fav,
  }) = _FavProductListResponse;

  factory FavProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$FavProductListResponseFromJson(json);
}

@freezed
class FavInnerProductListResponse with _$FavInnerProductListResponse {
  FavInnerProductListResponse._();

  factory FavInnerProductListResponse({
    @JsonKey(name: "products") Map<String, dynamic>? products,
  }) = _FavInnerProductListResponse;

  factory FavInnerProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$FavInnerProductListResponseFromJson(json);
}
