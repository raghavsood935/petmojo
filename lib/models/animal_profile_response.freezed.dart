// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'animal_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimalProfileResponse _$AnimalProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _AnimalProfileResponse.fromJson(json);
}

/// @nodoc
class _$AnimalProfileResponseTearOff {
  const _$AnimalProfileResponseTearOff();

  _AnimalProfileResponse call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar}) {
    return _AnimalProfileResponse(
      Id: Id,
      name: name,
      username: username,
      avatar: avatar,
    );
  }

  AnimalProfileResponse fromJson(Map<String, Object?> json) {
    return AnimalProfileResponse.fromJson(json);
  }
}

/// @nodoc
const $AnimalProfileResponse = _$AnimalProfileResponseTearOff();

/// @nodoc
mixin _$AnimalProfileResponse {
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimalProfileResponseCopyWith<AnimalProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalProfileResponseCopyWith<$Res> {
  factory $AnimalProfileResponseCopyWith(AnimalProfileResponse value,
          $Res Function(AnimalProfileResponse) then) =
      _$AnimalProfileResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar});
}

/// @nodoc
class _$AnimalProfileResponseCopyWithImpl<$Res>
    implements $AnimalProfileResponseCopyWith<$Res> {
  _$AnimalProfileResponseCopyWithImpl(this._value, this._then);

  final AnimalProfileResponse _value;
  // ignore: unused_field
  final $Res Function(AnimalProfileResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AnimalProfileResponseCopyWith<$Res>
    implements $AnimalProfileResponseCopyWith<$Res> {
  factory _$AnimalProfileResponseCopyWith(_AnimalProfileResponse value,
          $Res Function(_AnimalProfileResponse) then) =
      __$AnimalProfileResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar});
}

/// @nodoc
class __$AnimalProfileResponseCopyWithImpl<$Res>
    extends _$AnimalProfileResponseCopyWithImpl<$Res>
    implements _$AnimalProfileResponseCopyWith<$Res> {
  __$AnimalProfileResponseCopyWithImpl(_AnimalProfileResponse _value,
      $Res Function(_AnimalProfileResponse) _then)
      : super(_value, (v) => _then(v as _AnimalProfileResponse));

  @override
  _AnimalProfileResponse get _value => super._value as _AnimalProfileResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_AnimalProfileResponse(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
class _$_AnimalProfileResponse extends _AnimalProfileResponse {
  _$_AnimalProfileResponse(
      {@JsonKey(name: "_id") this.Id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "avatar") this.avatar})
      : super._();

  factory _$_AnimalProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AnimalProfileResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;

  @override
  String toString() {
    return 'AnimalProfileResponse(Id: $Id, name: $name, username: $username, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimalProfileResponse &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Id, name, username, avatar);

  @JsonKey(ignore: true)
  @override
  _$AnimalProfileResponseCopyWith<_AnimalProfileResponse> get copyWith =>
      __$AnimalProfileResponseCopyWithImpl<_AnimalProfileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimalProfileResponseToJson(this);
  }
}

abstract class _AnimalProfileResponse extends AnimalProfileResponse {
  factory _AnimalProfileResponse(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar}) = _$_AnimalProfileResponse;
  _AnimalProfileResponse._() : super._();

  factory _AnimalProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_AnimalProfileResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$AnimalProfileResponseCopyWith<_AnimalProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
