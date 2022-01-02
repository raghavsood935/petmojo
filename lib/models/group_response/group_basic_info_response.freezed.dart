// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_basic_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupBasicInfoResponse _$GroupBasicInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _GroupBasicInfoResponse.fromJson(json);
}

/// @nodoc
class _$GroupBasicInfoResponseTearOff {
  const _$GroupBasicInfoResponseTearOff();

  _GroupBasicInfoResponse call(
      {@JsonKey(name: "description") String? description,
      @JsonKey(name: "members") int? members,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "hashtags") List<String>? hashtags,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "isMember") bool? isMember,
      @JsonKey(name: "isAdmin") bool? isAdmin}) {
    return _GroupBasicInfoResponse(
      description: description,
      members: members,
      Id: Id,
      avatar: avatar,
      hashtags: hashtags,
      name: name,
      coverPhoto: coverPhoto,
      isMember: isMember,
      isAdmin: isAdmin,
    );
  }

  GroupBasicInfoResponse fromJson(Map<String, Object?> json) {
    return GroupBasicInfoResponse.fromJson(json);
  }
}

/// @nodoc
const $GroupBasicInfoResponse = _$GroupBasicInfoResponseTearOff();

/// @nodoc
mixin _$GroupBasicInfoResponse {
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "members")
  int? get members => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "hashtags")
  List<String>? get hashtags => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "isMember")
  bool? get isMember => throw _privateConstructorUsedError;
  @JsonKey(name: "isAdmin")
  bool? get isAdmin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupBasicInfoResponseCopyWith<GroupBasicInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupBasicInfoResponseCopyWith<$Res> {
  factory $GroupBasicInfoResponseCopyWith(GroupBasicInfoResponse value,
          $Res Function(GroupBasicInfoResponse) then) =
      _$GroupBasicInfoResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "description") String? description,
      @JsonKey(name: "members") int? members,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "hashtags") List<String>? hashtags,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "isMember") bool? isMember,
      @JsonKey(name: "isAdmin") bool? isAdmin});
}

/// @nodoc
class _$GroupBasicInfoResponseCopyWithImpl<$Res>
    implements $GroupBasicInfoResponseCopyWith<$Res> {
  _$GroupBasicInfoResponseCopyWithImpl(this._value, this._then);

  final GroupBasicInfoResponse _value;
  // ignore: unused_field
  final $Res Function(GroupBasicInfoResponse) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? members = freezed,
    Object? Id = freezed,
    Object? avatar = freezed,
    Object? hashtags = freezed,
    Object? name = freezed,
    Object? coverPhoto = freezed,
    Object? isMember = freezed,
    Object? isAdmin = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as int?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      hashtags: hashtags == freezed
          ? _value.hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: coverPhoto == freezed
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      isMember: isMember == freezed
          ? _value.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$GroupBasicInfoResponseCopyWith<$Res>
    implements $GroupBasicInfoResponseCopyWith<$Res> {
  factory _$GroupBasicInfoResponseCopyWith(_GroupBasicInfoResponse value,
          $Res Function(_GroupBasicInfoResponse) then) =
      __$GroupBasicInfoResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "description") String? description,
      @JsonKey(name: "members") int? members,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "hashtags") List<String>? hashtags,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "isMember") bool? isMember,
      @JsonKey(name: "isAdmin") bool? isAdmin});
}

/// @nodoc
class __$GroupBasicInfoResponseCopyWithImpl<$Res>
    extends _$GroupBasicInfoResponseCopyWithImpl<$Res>
    implements _$GroupBasicInfoResponseCopyWith<$Res> {
  __$GroupBasicInfoResponseCopyWithImpl(_GroupBasicInfoResponse _value,
      $Res Function(_GroupBasicInfoResponse) _then)
      : super(_value, (v) => _then(v as _GroupBasicInfoResponse));

  @override
  _GroupBasicInfoResponse get _value => super._value as _GroupBasicInfoResponse;

  @override
  $Res call({
    Object? description = freezed,
    Object? members = freezed,
    Object? Id = freezed,
    Object? avatar = freezed,
    Object? hashtags = freezed,
    Object? name = freezed,
    Object? coverPhoto = freezed,
    Object? isMember = freezed,
    Object? isAdmin = freezed,
  }) {
    return _then(_GroupBasicInfoResponse(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as int?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      hashtags: hashtags == freezed
          ? _value.hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: coverPhoto == freezed
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      isMember: isMember == freezed
          ? _value.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupBasicInfoResponse extends _GroupBasicInfoResponse {
  _$_GroupBasicInfoResponse(
      {@JsonKey(name: "description") this.description,
      @JsonKey(name: "members") this.members,
      @JsonKey(name: "_id") this.Id,
      @JsonKey(name: "avatar") this.avatar,
      @JsonKey(name: "hashtags") this.hashtags,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "isMember") this.isMember,
      @JsonKey(name: "isAdmin") this.isAdmin})
      : super._();

  factory _$_GroupBasicInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GroupBasicInfoResponseFromJson(json);

  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "members")
  final int? members;
  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;
  @override
  @JsonKey(name: "hashtags")
  final List<String>? hashtags;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "coverPhoto")
  final String? coverPhoto;
  @override
  @JsonKey(name: "isMember")
  final bool? isMember;
  @override
  @JsonKey(name: "isAdmin")
  final bool? isAdmin;

  @override
  String toString() {
    return 'GroupBasicInfoResponse(description: $description, members: $members, Id: $Id, avatar: $avatar, hashtags: $hashtags, name: $name, coverPhoto: $coverPhoto, isMember: $isMember, isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupBasicInfoResponse &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.members, members) || other.members == members) &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality().equals(other.hashtags, hashtags) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.isMember, isMember) ||
                other.isMember == isMember) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      members,
      Id,
      avatar,
      const DeepCollectionEquality().hash(hashtags),
      name,
      coverPhoto,
      isMember,
      isAdmin);

  @JsonKey(ignore: true)
  @override
  _$GroupBasicInfoResponseCopyWith<_GroupBasicInfoResponse> get copyWith =>
      __$GroupBasicInfoResponseCopyWithImpl<_GroupBasicInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupBasicInfoResponseToJson(this);
  }
}

abstract class _GroupBasicInfoResponse extends GroupBasicInfoResponse {
  factory _GroupBasicInfoResponse(
      {@JsonKey(name: "description") String? description,
      @JsonKey(name: "members") int? members,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "hashtags") List<String>? hashtags,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "isMember") bool? isMember,
      @JsonKey(name: "isAdmin") bool? isAdmin}) = _$_GroupBasicInfoResponse;
  _GroupBasicInfoResponse._() : super._();

  factory _GroupBasicInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_GroupBasicInfoResponse.fromJson;

  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "members")
  int? get members;
  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(name: "hashtags")
  List<String>? get hashtags;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto;
  @override
  @JsonKey(name: "isMember")
  bool? get isMember;
  @override
  @JsonKey(name: "isAdmin")
  bool? get isAdmin;
  @override
  @JsonKey(ignore: true)
  _$GroupBasicInfoResponseCopyWith<_GroupBasicInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
