import 'package:json_annotation/json_annotation.dart';

part 'product_id_common_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductIdCommonBody {
  final String productId;

  ProductIdCommonBody(this.productId);

  factory ProductIdCommonBody.fromJson(Map<String, dynamic> json) =>
      _$ProductIdCommonBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ProductIdCommonBodyToJson(this);
}
