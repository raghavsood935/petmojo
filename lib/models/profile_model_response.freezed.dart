// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_model_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) {
  return _ProfileResponse.fromJson(json);
}

/// @nodoc
class _$ProfileResponseTearOff {
  const _$ProfileResponseTearOff();

  _ProfileResponse call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "fullName") String? fullname,
      @JsonKey(name: "following") int? following}) {
    return _ProfileResponse(
      Id: Id,
      username: username,
      avatar: avatar,
      type: type,
      fullname: fullname,
      following: following,
    );
  }

  ProfileResponse fromJson(Map<String, Object?> json) {
    return ProfileResponse.fromJson(json);
  }
}

/// @nodoc
const $ProfileResponse = _$ProfileResponseTearOff();

/// @nodoc
mixin _$ProfileResponse {
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "fullName")
  String? get fullname => throw _privateConstructorUsedError;
  @JsonKey(name: "following")
  int? get following => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResponseCopyWith<ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseCopyWith<$Res> {
  factory $ProfileResponseCopyWith(
          ProfileResponse value, $Res Function(ProfileResponse) then) =
      _$ProfileResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "fullName") String? fullname,
      @JsonKey(name: "following") int? following});
}

/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._value, this._then);

  final ProfileResponse _value;
  // ignore: unused_field
  final $Res Function(ProfileResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? type = freezed,
    Object? fullname = freezed,
    Object? following = freezed,
  }) {
    return _then(_value.copyWith(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ProfileResponseCopyWith<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  factory _$ProfileResponseCopyWith(
          _ProfileResponse value, $Res Function(_ProfileResponse) then) =
      __$ProfileResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "fullName") String? fullname,
      @JsonKey(name: "following") int? following});
}

/// @nodoc
class __$ProfileResponseCopyWithImpl<$Res>
    extends _$ProfileResponseCopyWithImpl<$Res>
    implements _$ProfileResponseCopyWith<$Res> {
  __$ProfileResponseCopyWithImpl(
      _ProfileResponse _value, $Res Function(_ProfileResponse) _then)
      : super(_value, (v) => _then(v as _ProfileResponse));

  @override
  _ProfileResponse get _value => super._value as _ProfileResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? type = freezed,
    Object? fullname = freezed,
    Object? following = freezed,
  }) {
    return _then(_ProfileResponse(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileResponse extends _ProfileResponse {
  _$_ProfileResponse(
      {@JsonKey(name: "_id") this.Id,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "avatar") this.avatar,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "fullName") this.fullname,
      @JsonKey(name: "following") this.following})
      : super._();

  factory _$_ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "fullName")
  final String? fullname;
  @override
  @JsonKey(name: "following")
  final int? following;

  @override
  String toString() {
    return 'ProfileResponse(Id: $Id, username: $username, avatar: $avatar, type: $type, fullname: $fullname, following: $following)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileResponse &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.following, following) ||
                other.following == following));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, Id, username, avatar, type, fullname, following);

  @JsonKey(ignore: true)
  @override
  _$ProfileResponseCopyWith<_ProfileResponse> get copyWith =>
      __$ProfileResponseCopyWithImpl<_ProfileResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileResponseToJson(this);
  }
}

abstract class _ProfileResponse extends ProfileResponse {
  factory _ProfileResponse(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "fullName") String? fullname,
      @JsonKey(name: "following") int? following}) = _$_ProfileResponse;
  _ProfileResponse._() : super._();

  factory _ProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_ProfileResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "fullName")
  String? get fullname;
  @override
  @JsonKey(name: "following")
  int? get following;
  @override
  @JsonKey(ignore: true)
  _$ProfileResponseCopyWith<_ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
