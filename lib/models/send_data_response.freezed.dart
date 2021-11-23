// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendDataResponse _$SendDataResponseFromJson(Map<String, dynamic> json) {
  return _SendDataResponse.fromJson(json);
}

/// @nodoc
class _$SendDataResponseTearOff {
  const _$SendDataResponseTearOff();

  _SendDataResponse call({@JsonKey(name: "success") bool? success}) {
    return _SendDataResponse(
      success: success,
    );
  }

  SendDataResponse fromJson(Map<String, Object?> json) {
    return SendDataResponse.fromJson(json);
  }
}

/// @nodoc
const $SendDataResponse = _$SendDataResponseTearOff();

/// @nodoc
mixin _$SendDataResponse {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendDataResponseCopyWith<SendDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendDataResponseCopyWith<$Res> {
  factory $SendDataResponseCopyWith(
          SendDataResponse value, $Res Function(SendDataResponse) then) =
      _$SendDataResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "success") bool? success});
}

/// @nodoc
class _$SendDataResponseCopyWithImpl<$Res>
    implements $SendDataResponseCopyWith<$Res> {
  _$SendDataResponseCopyWithImpl(this._value, this._then);

  final SendDataResponse _value;
  // ignore: unused_field
  final $Res Function(SendDataResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$SendDataResponseCopyWith<$Res>
    implements $SendDataResponseCopyWith<$Res> {
  factory _$SendDataResponseCopyWith(
          _SendDataResponse value, $Res Function(_SendDataResponse) then) =
      __$SendDataResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "success") bool? success});
}

/// @nodoc
class __$SendDataResponseCopyWithImpl<$Res>
    extends _$SendDataResponseCopyWithImpl<$Res>
    implements _$SendDataResponseCopyWith<$Res> {
  __$SendDataResponseCopyWithImpl(
      _SendDataResponse _value, $Res Function(_SendDataResponse) _then)
      : super(_value, (v) => _then(v as _SendDataResponse));

  @override
  _SendDataResponse get _value => super._value as _SendDataResponse;

  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_SendDataResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendDataResponse extends _SendDataResponse {
  _$_SendDataResponse({@JsonKey(name: "success") this.success}) : super._();

  factory _$_SendDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SendDataResponseFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;

  @override
  String toString() {
    return 'SendDataResponse(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendDataResponse &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  _$SendDataResponseCopyWith<_SendDataResponse> get copyWith =>
      __$SendDataResponseCopyWithImpl<_SendDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendDataResponseToJson(this);
  }
}

abstract class _SendDataResponse extends SendDataResponse {
  factory _SendDataResponse({@JsonKey(name: "success") bool? success}) =
      _$_SendDataResponse;
  _SendDataResponse._() : super._();

  factory _SendDataResponse.fromJson(Map<String, dynamic> json) =
      _$_SendDataResponse.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(ignore: true)
  _$SendDataResponseCopyWith<_SendDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
