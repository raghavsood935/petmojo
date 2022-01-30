// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reorder_a_run_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReorderARunResponse _$ReorderARunResponseFromJson(Map<String, dynamic> json) {
  return _ReorderARunResponse.fromJson(json);
}

/// @nodoc
class _$ReorderARunResponseTearOff {
  const _$ReorderARunResponseTearOff();

  _ReorderARunResponse call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "bookingId") String? newBookingId,
      @JsonKey(name: "amount") String? newAmount}) {
    return _ReorderARunResponse(
      success: success,
      newBookingId: newBookingId,
      newAmount: newAmount,
    );
  }

  ReorderARunResponse fromJson(Map<String, Object?> json) {
    return ReorderARunResponse.fromJson(json);
  }
}

/// @nodoc
const $ReorderARunResponse = _$ReorderARunResponseTearOff();

/// @nodoc
mixin _$ReorderARunResponse {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "bookingId")
  String? get newBookingId => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get newAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReorderARunResponseCopyWith<ReorderARunResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReorderARunResponseCopyWith<$Res> {
  factory $ReorderARunResponseCopyWith(
          ReorderARunResponse value, $Res Function(ReorderARunResponse) then) =
      _$ReorderARunResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "bookingId") String? newBookingId,
      @JsonKey(name: "amount") String? newAmount});
}

/// @nodoc
class _$ReorderARunResponseCopyWithImpl<$Res>
    implements $ReorderARunResponseCopyWith<$Res> {
  _$ReorderARunResponseCopyWithImpl(this._value, this._then);

  final ReorderARunResponse _value;
  // ignore: unused_field
  final $Res Function(ReorderARunResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? newBookingId = freezed,
    Object? newAmount = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      newBookingId: newBookingId == freezed
          ? _value.newBookingId
          : newBookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      newAmount: newAmount == freezed
          ? _value.newAmount
          : newAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ReorderARunResponseCopyWith<$Res>
    implements $ReorderARunResponseCopyWith<$Res> {
  factory _$ReorderARunResponseCopyWith(_ReorderARunResponse value,
          $Res Function(_ReorderARunResponse) then) =
      __$ReorderARunResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "bookingId") String? newBookingId,
      @JsonKey(name: "amount") String? newAmount});
}

/// @nodoc
class __$ReorderARunResponseCopyWithImpl<$Res>
    extends _$ReorderARunResponseCopyWithImpl<$Res>
    implements _$ReorderARunResponseCopyWith<$Res> {
  __$ReorderARunResponseCopyWithImpl(
      _ReorderARunResponse _value, $Res Function(_ReorderARunResponse) _then)
      : super(_value, (v) => _then(v as _ReorderARunResponse));

  @override
  _ReorderARunResponse get _value => super._value as _ReorderARunResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? newBookingId = freezed,
    Object? newAmount = freezed,
  }) {
    return _then(_ReorderARunResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      newBookingId: newBookingId == freezed
          ? _value.newBookingId
          : newBookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      newAmount: newAmount == freezed
          ? _value.newAmount
          : newAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReorderARunResponse extends _ReorderARunResponse {
  _$_ReorderARunResponse(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "bookingId") this.newBookingId,
      @JsonKey(name: "amount") this.newAmount})
      : super._();

  factory _$_ReorderARunResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ReorderARunResponseFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "bookingId")
  final String? newBookingId;
  @override
  @JsonKey(name: "amount")
  final String? newAmount;

  @override
  String toString() {
    return 'ReorderARunResponse(success: $success, newBookingId: $newBookingId, newAmount: $newAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReorderARunResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other.newBookingId, newBookingId) &&
            const DeepCollectionEquality().equals(other.newAmount, newAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(newBookingId),
      const DeepCollectionEquality().hash(newAmount));

  @JsonKey(ignore: true)
  @override
  _$ReorderARunResponseCopyWith<_ReorderARunResponse> get copyWith =>
      __$ReorderARunResponseCopyWithImpl<_ReorderARunResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReorderARunResponseToJson(this);
  }
}

abstract class _ReorderARunResponse extends ReorderARunResponse {
  factory _ReorderARunResponse(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "bookingId") String? newBookingId,
      @JsonKey(name: "amount") String? newAmount}) = _$_ReorderARunResponse;
  _ReorderARunResponse._() : super._();

  factory _ReorderARunResponse.fromJson(Map<String, dynamic> json) =
      _$_ReorderARunResponse.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "bookingId")
  String? get newBookingId;
  @override
  @JsonKey(name: "amount")
  String? get newAmount;
  @override
  @JsonKey(ignore: true)
  _$ReorderARunResponseCopyWith<_ReorderARunResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
