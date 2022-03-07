import 'package:json_annotation/json_annotation.dart';

part 'coupon_body.g.dart';

@JsonSerializable(explicitToJson: true)
class CouponBody {
  final String name;

  CouponBody(this.name);

  factory CouponBody.fromJson(Map<String, dynamic> json) =>
      _$CouponBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CouponBodyToJson(this);
}
