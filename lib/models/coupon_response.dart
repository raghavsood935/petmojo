import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_response.freezed.dart';
part 'coupon_response.g.dart';

@freezed
class CouponResponse with _$CouponResponse {
  CouponResponse._();

  factory CouponResponse({
    @JsonKey(name: "value") int? amount,
  }) = _CouponResponse;

  factory CouponResponse.fromJson(Map<String, dynamic> json) =>
      _$CouponResponseFromJson(json);
}
