// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coupon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponResponse _$CouponResponseFromJson(Map<String, dynamic> json) {
  return _CouponResponse.fromJson(json);
}

/// @nodoc
class _$CouponResponseTearOff {
  const _$CouponResponseTearOff();

  _CouponResponse call({@JsonKey(name: "value") int? amount}) {
    return _CouponResponse(
      amount: amount,
    );
  }

  CouponResponse fromJson(Map<String, Object?> json) {
    return CouponResponse.fromJson(json);
  }
}

/// @nodoc
const $CouponResponse = _$CouponResponseTearOff();

/// @nodoc
mixin _$CouponResponse {
  @JsonKey(name: "value")
  int? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponResponseCopyWith<CouponResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponResponseCopyWith<$Res> {
  factory $CouponResponseCopyWith(
          CouponResponse value, $Res Function(CouponResponse) then) =
      _$CouponResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "value") int? amount});
}

/// @nodoc
class _$CouponResponseCopyWithImpl<$Res>
    implements $CouponResponseCopyWith<$Res> {
  _$CouponResponseCopyWithImpl(this._value, this._then);

  final CouponResponse _value;
  // ignore: unused_field
  final $Res Function(CouponResponse) _then;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CouponResponseCopyWith<$Res>
    implements $CouponResponseCopyWith<$Res> {
  factory _$CouponResponseCopyWith(
          _CouponResponse value, $Res Function(_CouponResponse) then) =
      __$CouponResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "value") int? amount});
}

/// @nodoc
class __$CouponResponseCopyWithImpl<$Res>
    extends _$CouponResponseCopyWithImpl<$Res>
    implements _$CouponResponseCopyWith<$Res> {
  __$CouponResponseCopyWithImpl(
      _CouponResponse _value, $Res Function(_CouponResponse) _then)
      : super(_value, (v) => _then(v as _CouponResponse));

  @override
  _CouponResponse get _value => super._value as _CouponResponse;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_CouponResponse(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CouponResponse extends _CouponResponse {
  _$_CouponResponse({@JsonKey(name: "value") this.amount}) : super._();

  factory _$_CouponResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CouponResponseFromJson(json);

  @override
  @JsonKey(name: "value")
  final int? amount;

  @override
  String toString() {
    return 'CouponResponse(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CouponResponse &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$CouponResponseCopyWith<_CouponResponse> get copyWith =>
      __$CouponResponseCopyWithImpl<_CouponResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponResponseToJson(this);
  }
}

abstract class _CouponResponse extends CouponResponse {
  factory _CouponResponse({@JsonKey(name: "value") int? amount}) =
      _$_CouponResponse;
  _CouponResponse._() : super._();

  factory _CouponResponse.fromJson(Map<String, dynamic> json) =
      _$_CouponResponse.fromJson;

  @override
  @JsonKey(name: "value")
  int? get amount;
  @override
  @JsonKey(ignore: true)
  _$CouponResponseCopyWith<_CouponResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
