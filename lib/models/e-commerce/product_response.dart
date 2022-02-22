import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tamely/models/my_animal_model.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  ProductResponse._();

  factory ProductResponse({
    @JsonKey(name: "images") List<String>? images,
    @JsonKey(name: "sizes") List<String>? sizes,
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "category") String? category,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "brand") String? brand,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "originalPrice") double? originalPrice,
    @JsonKey(name: "discountedPrice") double? discountPrice,
    @JsonKey(name: "rating") double? rating,
    @JsonKey(name: "avatar") String? avatar,
    @JsonKey(name: "createdAt") String? createdAt,
    @JsonKey(name: "updatedAt") String? updatedAt,
    @JsonKey(name: "isFav") bool? isFav,
    @JsonKey(name: "isCarted") bool? isCarted,
    @JsonKey(name: "color") List<String>? color,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}
