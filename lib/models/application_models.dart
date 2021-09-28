import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_models.freezed.dart';
part 'application_models.g.dart';

@freezed
class LocalUser with _$LocalUser {
  LocalUser._();

  factory LocalUser({
    required String id,
    String? email,
    String? defaultAddress,
  }) = _User;

  factory LocalUser.fromJson(Map<String, dynamic> json) =>
      _$LocalUserFromJson(json);

  bool get hasAddress => defaultAddress?.isNotEmpty ?? false;
}

@freezed
abstract class Address with _$Address {
  factory Address({
    String? id,
    required String placeId,
    required double lattitude,
    required double longitute,
    String? street,
    String? city,
    String? state,
    String? postalCode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
