// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'common_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonResponse _$CommonResponseFromJson(Map<String, dynamic> json) {
  return _CommonResponse.fromJson(json);
}

/// @nodoc
class _$CommonResponseTearOff {
  const _$CommonResponseTearOff();

  _CommonResponse call({String? message, String? token, String? avatar}) {
    return _CommonResponse(
      message: message,
      token: token,
      avatar: avatar,
    );
  }

  CommonResponse fromJson(Map<String, Object?> json) {
    return CommonResponse.fromJson(json);
  }
}

/// @nodoc
const $CommonResponse = _$CommonResponseTearOff();

/// @nodoc
mixin _$CommonResponse {
  String? get message => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonResponseCopyWith<CommonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonResponseCopyWith<$Res> {
  factory $CommonResponseCopyWith(
          CommonResponse value, $Res Function(CommonResponse) then) =
      _$CommonResponseCopyWithImpl<$Res>;
  $Res call({String? message, String? token, String? avatar});
}

/// @nodoc
class _$CommonResponseCopyWithImpl<$Res>
    implements $CommonResponseCopyWith<$Res> {
  _$CommonResponseCopyWithImpl(this._value, this._then);

  final CommonResponse _value;
  // ignore: unused_field
  final $Res Function(CommonResponse) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? token = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommonResponseCopyWith<$Res>
    implements $CommonResponseCopyWith<$Res> {
  factory _$CommonResponseCopyWith(
          _CommonResponse value, $Res Function(_CommonResponse) then) =
      __$CommonResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? message, String? token, String? avatar});
}

/// @nodoc
class __$CommonResponseCopyWithImpl<$Res>
    extends _$CommonResponseCopyWithImpl<$Res>
    implements _$CommonResponseCopyWith<$Res> {
  __$CommonResponseCopyWithImpl(
      _CommonResponse _value, $Res Function(_CommonResponse) _then)
      : super(_value, (v) => _then(v as _CommonResponse));

  @override
  _CommonResponse get _value => super._value as _CommonResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? token = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_CommonResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonResponse extends _CommonResponse {
  _$_CommonResponse({this.message, this.token, this.avatar}) : super._();

  factory _$_CommonResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CommonResponseFromJson(json);

  @override
  final String? message;
  @override
  final String? token;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'CommonResponse(message: $message, token: $token, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommonResponse &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  _$CommonResponseCopyWith<_CommonResponse> get copyWith =>
      __$CommonResponseCopyWithImpl<_CommonResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonResponseToJson(this);
  }
}

abstract class _CommonResponse extends CommonResponse {
  factory _CommonResponse({String? message, String? token, String? avatar}) =
      _$_CommonResponse;
  _CommonResponse._() : super._();

  factory _CommonResponse.fromJson(Map<String, dynamic> json) =
      _$_CommonResponse.fromJson;

  @override
  String? get message;
  @override
  String? get token;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$CommonResponseCopyWith<_CommonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
