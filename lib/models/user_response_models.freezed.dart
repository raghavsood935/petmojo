// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  _UserResponse call(
      {@JsonKey(name: "user") LocalUser? localUser,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "isNewUser") bool? isNewUser}) {
    return _UserResponse(
      localUser: localUser,
      token: token,
      isNewUser: isNewUser,
    );
  }

  UserResponse fromJson(Map<String, Object?> json) {
    return UserResponse.fromJson(json);
  }
}

/// @nodoc
const $UserResponse = _$UserResponseTearOff();

/// @nodoc
mixin _$UserResponse {
  @JsonKey(name: "user")
  LocalUser? get localUser => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "isNewUser")
  bool? get isNewUser => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: "user") LocalUser? localUser,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "isNewUser") bool? isNewUser});

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
    Object? isNewUser = freezed,
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
      isNewUser: isNewUser == freezed
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $Res call(
      {@JsonKey(name: "user") LocalUser? localUser,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "isNewUser") bool? isNewUser});

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
    Object? isNewUser = freezed,
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
      isNewUser: isNewUser == freezed
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponse extends _UserResponse {
  _$_UserResponse(
      {@JsonKey(name: "user") this.localUser,
      @JsonKey(name: "token") this.token,
      @JsonKey(name: "isNewUser") this.isNewUser})
      : super._();

  factory _$_UserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserResponseFromJson(json);

  @override
  @JsonKey(name: "user")
  final LocalUser? localUser;
  @override
  @JsonKey(name: "token")
  final String? token;
  @override
  @JsonKey(name: "isNewUser")
  final bool? isNewUser;

  @override
  String toString() {
    return 'UserResponse(localUser: $localUser, token: $token, isNewUser: $isNewUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserResponse &&
            (identical(other.localUser, localUser) ||
                other.localUser == localUser) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localUser, token, isNewUser);

  @JsonKey(ignore: true)
  @override
  _$UserResponseCopyWith<_UserResponse> get copyWith =>
      __$UserResponseCopyWithImpl<_UserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResponseToJson(this);
  }
}

abstract class _UserResponse extends UserResponse {
  factory _UserResponse(
      {@JsonKey(name: "user") LocalUser? localUser,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "isNewUser") bool? isNewUser}) = _$_UserResponse;
  _UserResponse._() : super._();

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$_UserResponse.fromJson;

  @override
  @JsonKey(name: "user")
  LocalUser? get localUser;
  @override
  @JsonKey(name: "token")
  String? get token;
  @override
  @JsonKey(name: "isNewUser")
  bool? get isNewUser;
  @override
  @JsonKey(ignore: true)
  _$UserResponseCopyWith<_UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserNameAvailableResponse _$UserNameAvailableResponseFromJson(
    Map<String, dynamic> json) {
  return _UserNameAvailableResponse.fromJson(json);
}

/// @nodoc
class _$UserNameAvailableResponseTearOff {
  const _$UserNameAvailableResponseTearOff();

  _UserNameAvailableResponse call(
      {@JsonKey(name: "isAvailable") bool isAvailable = false}) {
    return _UserNameAvailableResponse(
      isAvailable: isAvailable,
    );
  }

  UserNameAvailableResponse fromJson(Map<String, Object?> json) {
    return UserNameAvailableResponse.fromJson(json);
  }
}

/// @nodoc
const $UserNameAvailableResponse = _$UserNameAvailableResponseTearOff();

/// @nodoc
mixin _$UserNameAvailableResponse {
  @JsonKey(name: "isAvailable")
  bool get isAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNameAvailableResponseCopyWith<UserNameAvailableResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNameAvailableResponseCopyWith<$Res> {
  factory $UserNameAvailableResponseCopyWith(UserNameAvailableResponse value,
          $Res Function(UserNameAvailableResponse) then) =
      _$UserNameAvailableResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "isAvailable") bool isAvailable});
}

/// @nodoc
class _$UserNameAvailableResponseCopyWithImpl<$Res>
    implements $UserNameAvailableResponseCopyWith<$Res> {
  _$UserNameAvailableResponseCopyWithImpl(this._value, this._then);

  final UserNameAvailableResponse _value;
  // ignore: unused_field
  final $Res Function(UserNameAvailableResponse) _then;

  @override
  $Res call({
    Object? isAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserNameAvailableResponseCopyWith<$Res>
    implements $UserNameAvailableResponseCopyWith<$Res> {
  factory _$UserNameAvailableResponseCopyWith(_UserNameAvailableResponse value,
          $Res Function(_UserNameAvailableResponse) then) =
      __$UserNameAvailableResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "isAvailable") bool isAvailable});
}

/// @nodoc
class __$UserNameAvailableResponseCopyWithImpl<$Res>
    extends _$UserNameAvailableResponseCopyWithImpl<$Res>
    implements _$UserNameAvailableResponseCopyWith<$Res> {
  __$UserNameAvailableResponseCopyWithImpl(_UserNameAvailableResponse _value,
      $Res Function(_UserNameAvailableResponse) _then)
      : super(_value, (v) => _then(v as _UserNameAvailableResponse));

  @override
  _UserNameAvailableResponse get _value =>
      super._value as _UserNameAvailableResponse;

  @override
  $Res call({
    Object? isAvailable = freezed,
  }) {
    return _then(_UserNameAvailableResponse(
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserNameAvailableResponse extends _UserNameAvailableResponse {
  _$_UserNameAvailableResponse(
      {@JsonKey(name: "isAvailable") this.isAvailable = false})
      : super._();

  factory _$_UserNameAvailableResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserNameAvailableResponseFromJson(json);

  @override
  @JsonKey(name: "isAvailable")
  final bool isAvailable;

  @override
  String toString() {
    return 'UserNameAvailableResponse(isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserNameAvailableResponse &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAvailable);

  @JsonKey(ignore: true)
  @override
  _$UserNameAvailableResponseCopyWith<_UserNameAvailableResponse>
      get copyWith =>
          __$UserNameAvailableResponseCopyWithImpl<_UserNameAvailableResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserNameAvailableResponseToJson(this);
  }
}

abstract class _UserNameAvailableResponse extends UserNameAvailableResponse {
  factory _UserNameAvailableResponse(
          {@JsonKey(name: "isAvailable") bool isAvailable}) =
      _$_UserNameAvailableResponse;
  _UserNameAvailableResponse._() : super._();

  factory _UserNameAvailableResponse.fromJson(Map<String, dynamic> json) =
      _$_UserNameAvailableResponse.fromJson;

  @override
  @JsonKey(name: "isAvailable")
  bool get isAvailable;
  @override
  @JsonKey(ignore: true)
  _$UserNameAvailableResponseCopyWith<_UserNameAvailableResponse>
      get copyWith => throw _privateConstructorUsedError;
}
