// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'generate_pet_username_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeneratePetUsernameResponse _$GeneratePetUsernameResponseFromJson(
    Map<String, dynamic> json) {
  return _GeneratePetUsernameResponse.fromJson(json);
}

/// @nodoc
class _$GeneratePetUsernameResponseTearOff {
  const _$GeneratePetUsernameResponseTearOff();

  _GeneratePetUsernameResponse call({String? username}) {
    return _GeneratePetUsernameResponse(
      username: username,
    );
  }

  GeneratePetUsernameResponse fromJson(Map<String, Object?> json) {
    return GeneratePetUsernameResponse.fromJson(json);
  }
}

/// @nodoc
const $GeneratePetUsernameResponse = _$GeneratePetUsernameResponseTearOff();

/// @nodoc
mixin _$GeneratePetUsernameResponse {
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneratePetUsernameResponseCopyWith<GeneratePetUsernameResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratePetUsernameResponseCopyWith<$Res> {
  factory $GeneratePetUsernameResponseCopyWith(
          GeneratePetUsernameResponse value,
          $Res Function(GeneratePetUsernameResponse) then) =
      _$GeneratePetUsernameResponseCopyWithImpl<$Res>;
  $Res call({String? username});
}

/// @nodoc
class _$GeneratePetUsernameResponseCopyWithImpl<$Res>
    implements $GeneratePetUsernameResponseCopyWith<$Res> {
  _$GeneratePetUsernameResponseCopyWithImpl(this._value, this._then);

  final GeneratePetUsernameResponse _value;
  // ignore: unused_field
  final $Res Function(GeneratePetUsernameResponse) _then;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GeneratePetUsernameResponseCopyWith<$Res>
    implements $GeneratePetUsernameResponseCopyWith<$Res> {
  factory _$GeneratePetUsernameResponseCopyWith(
          _GeneratePetUsernameResponse value,
          $Res Function(_GeneratePetUsernameResponse) then) =
      __$GeneratePetUsernameResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? username});
}

/// @nodoc
class __$GeneratePetUsernameResponseCopyWithImpl<$Res>
    extends _$GeneratePetUsernameResponseCopyWithImpl<$Res>
    implements _$GeneratePetUsernameResponseCopyWith<$Res> {
  __$GeneratePetUsernameResponseCopyWithImpl(
      _GeneratePetUsernameResponse _value,
      $Res Function(_GeneratePetUsernameResponse) _then)
      : super(_value, (v) => _then(v as _GeneratePetUsernameResponse));

  @override
  _GeneratePetUsernameResponse get _value =>
      super._value as _GeneratePetUsernameResponse;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_GeneratePetUsernameResponse(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneratePetUsernameResponse extends _GeneratePetUsernameResponse {
  _$_GeneratePetUsernameResponse({this.username}) : super._();

  factory _$_GeneratePetUsernameResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GeneratePetUsernameResponseFromJson(json);

  @override
  final String? username;

  @override
  String toString() {
    return 'GeneratePetUsernameResponse(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeneratePetUsernameResponse &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  _$GeneratePetUsernameResponseCopyWith<_GeneratePetUsernameResponse>
      get copyWith => __$GeneratePetUsernameResponseCopyWithImpl<
          _GeneratePetUsernameResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneratePetUsernameResponseToJson(this);
  }
}

abstract class _GeneratePetUsernameResponse
    extends GeneratePetUsernameResponse {
  factory _GeneratePetUsernameResponse({String? username}) =
      _$_GeneratePetUsernameResponse;
  _GeneratePetUsernameResponse._() : super._();

  factory _GeneratePetUsernameResponse.fromJson(Map<String, dynamic> json) =
      _$_GeneratePetUsernameResponse.fromJson;

  @override
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$GeneratePetUsernameResponseCopyWith<_GeneratePetUsernameResponse>
      get copyWith => throw _privateConstructorUsedError;
}
