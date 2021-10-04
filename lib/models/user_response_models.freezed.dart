// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
class _$UserResponseTearOff {
  const _$UserResponseTearOff();

  _UserResponse call({LocalUser? localUser, String? token}) {
    return _UserResponse(
      localUser: localUser,
      token: token,
    );
  }

  UserResponse fromJson(Map<String, Object> json) {
    return UserResponse.fromJson(json);
  }
}

/// @nodoc
const $UserResponse = _$UserResponseTearOff();

/// @nodoc
mixin _$UserResponse {
  LocalUser? get localUser => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res>;
  $Res call({LocalUser? localUser, String? token});

  $LocalUserCopyWith<$Res>? get localUser;
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res> implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  final UserResponse _value;
  // ignore: unused_field
  final $Res Function(UserResponse) _then;

  @override
  $Res call({
    Object? localUser = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      localUser: localUser == freezed
          ? _value.localUser
          : localUser // ignore: cast_nullable_to_non_nullable
              as LocalUser?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $LocalUserCopyWith<$Res>? get localUser {
    if (_value.localUser == null) {
      return null;
    }

    return $LocalUserCopyWith<$Res>(_value.localUser!, (value) {
      return _then(_value.copyWith(localUser: value));
    });
  }
}

/// @nodoc
abstract class _$UserResponseCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$UserResponseCopyWith(
          _UserResponse value, $Res Function(_UserResponse) then) =
      __$UserResponseCopyWithImpl<$Res>;
  @override
  $Res call({LocalUser? localUser, String? token});

  @override
  $LocalUserCopyWith<$Res>? get localUser;
}

/// @nodoc
class __$UserResponseCopyWithImpl<$Res> extends _$UserResponseCopyWithImpl<$Res>
    implements _$UserResponseCopyWith<$Res> {
  __$UserResponseCopyWithImpl(
      _UserResponse _value, $Res Function(_UserResponse) _then)
      : super(_value, (v) => _then(v as _UserResponse));

  @override
  _UserResponse get _value => super._value as _UserResponse;

  @override
  $Res call({
    Object? localUser = freezed,
    Object? token = freezed,
  }) {
    return _then(_UserResponse(
      localUser: localUser == freezed
          ? _value.localUser
          : localUser // ignore: cast_nullable_to_non_nullable
              as LocalUser?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponse extends _UserResponse {
  _$_UserResponse({this.localUser, this.token}) : super._();

  factory _$_UserResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UserResponseFromJson(json);

  @override
  final LocalUser? localUser;
  @override
  final String? token;

  @override
  String toString() {
    return 'UserResponse(localUser: $localUser, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserResponse &&
            (identical(other.localUser, localUser) ||
                const DeepCollectionEquality()
                    .equals(other.localUser, localUser)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(localUser) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$UserResponseCopyWith<_UserResponse> get copyWith =>
      __$UserResponseCopyWithImpl<_UserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserResponseToJson(this);
  }
}

abstract class _UserResponse extends UserResponse {
  factory _UserResponse({LocalUser? localUser, String? token}) =
      _$_UserResponse;
  _UserResponse._() : super._();

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$_UserResponse.fromJson;

  @override
  LocalUser? get localUser => throw _privateConstructorUsedError;
  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserResponseCopyWith<_UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
