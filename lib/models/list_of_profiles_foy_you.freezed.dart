// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_of_profiles_foy_you.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfProfilesForYouResponse _$ListOfProfilesForYouResponseFromJson(
    Map<String, dynamic> json) {
  return _ListOfProfilesForYouResponse.fromJson(json);
}

/// @nodoc
class _$ListOfProfilesForYouResponseTearOff {
  const _$ListOfProfilesForYouResponseTearOff();

  _ListOfProfilesForYouResponse call(
      {@JsonKey(name: "profiles")
          List<ProfileForYouResponse>? listOfProfiles}) {
    return _ListOfProfilesForYouResponse(
      listOfProfiles: listOfProfiles,
    );
  }

  ListOfProfilesForYouResponse fromJson(Map<String, Object?> json) {
    return ListOfProfilesForYouResponse.fromJson(json);
  }
}

/// @nodoc
const $ListOfProfilesForYouResponse = _$ListOfProfilesForYouResponseTearOff();

/// @nodoc
mixin _$ListOfProfilesForYouResponse {
  @JsonKey(name: "profiles")
  List<ProfileForYouResponse>? get listOfProfiles =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfProfilesForYouResponseCopyWith<ListOfProfilesForYouResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfProfilesForYouResponseCopyWith<$Res> {
  factory $ListOfProfilesForYouResponseCopyWith(
          ListOfProfilesForYouResponse value,
          $Res Function(ListOfProfilesForYouResponse) then) =
      _$ListOfProfilesForYouResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "profiles") List<ProfileForYouResponse>? listOfProfiles});
}

/// @nodoc
class _$ListOfProfilesForYouResponseCopyWithImpl<$Res>
    implements $ListOfProfilesForYouResponseCopyWith<$Res> {
  _$ListOfProfilesForYouResponseCopyWithImpl(this._value, this._then);

  final ListOfProfilesForYouResponse _value;
  // ignore: unused_field
  final $Res Function(ListOfProfilesForYouResponse) _then;

  @override
  $Res call({
    Object? listOfProfiles = freezed,
  }) {
    return _then(_value.copyWith(
      listOfProfiles: listOfProfiles == freezed
          ? _value.listOfProfiles
          : listOfProfiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileForYouResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListOfProfilesForYouResponseCopyWith<$Res>
    implements $ListOfProfilesForYouResponseCopyWith<$Res> {
  factory _$ListOfProfilesForYouResponseCopyWith(
          _ListOfProfilesForYouResponse value,
          $Res Function(_ListOfProfilesForYouResponse) then) =
      __$ListOfProfilesForYouResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "profiles") List<ProfileForYouResponse>? listOfProfiles});
}

/// @nodoc
class __$ListOfProfilesForYouResponseCopyWithImpl<$Res>
    extends _$ListOfProfilesForYouResponseCopyWithImpl<$Res>
    implements _$ListOfProfilesForYouResponseCopyWith<$Res> {
  __$ListOfProfilesForYouResponseCopyWithImpl(
      _ListOfProfilesForYouResponse _value,
      $Res Function(_ListOfProfilesForYouResponse) _then)
      : super(_value, (v) => _then(v as _ListOfProfilesForYouResponse));

  @override
  _ListOfProfilesForYouResponse get _value =>
      super._value as _ListOfProfilesForYouResponse;

  @override
  $Res call({
    Object? listOfProfiles = freezed,
  }) {
    return _then(_ListOfProfilesForYouResponse(
      listOfProfiles: listOfProfiles == freezed
          ? _value.listOfProfiles
          : listOfProfiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileForYouResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfProfilesForYouResponse extends _ListOfProfilesForYouResponse {
  _$_ListOfProfilesForYouResponse(
      {@JsonKey(name: "profiles") this.listOfProfiles})
      : super._();

  factory _$_ListOfProfilesForYouResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListOfProfilesForYouResponseFromJson(json);

  @override
  @JsonKey(name: "profiles")
  final List<ProfileForYouResponse>? listOfProfiles;

  @override
  String toString() {
    return 'ListOfProfilesForYouResponse(listOfProfiles: $listOfProfiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListOfProfilesForYouResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfProfiles, listOfProfiles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfProfiles));

  @JsonKey(ignore: true)
  @override
  _$ListOfProfilesForYouResponseCopyWith<_ListOfProfilesForYouResponse>
      get copyWith => __$ListOfProfilesForYouResponseCopyWithImpl<
          _ListOfProfilesForYouResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfProfilesForYouResponseToJson(this);
  }
}

abstract class _ListOfProfilesForYouResponse
    extends ListOfProfilesForYouResponse {
  factory _ListOfProfilesForYouResponse(
          {@JsonKey(name: "profiles")
              List<ProfileForYouResponse>? listOfProfiles}) =
      _$_ListOfProfilesForYouResponse;
  _ListOfProfilesForYouResponse._() : super._();

  factory _ListOfProfilesForYouResponse.fromJson(Map<String, dynamic> json) =
      _$_ListOfProfilesForYouResponse.fromJson;

  @override
  @JsonKey(name: "profiles")
  List<ProfileForYouResponse>? get listOfProfiles;
  @override
  @JsonKey(ignore: true)
  _$ListOfProfilesForYouResponseCopyWith<_ListOfProfilesForYouResponse>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileForYouResponse _$ProfileForYouResponseFromJson(
    Map<String, dynamic> json) {
  return _ProfileForYouResponse.fromJson(json);
}

/// @nodoc
class _$ProfileForYouResponseTearOff {
  const _$ProfileForYouResponseTearOff();

  _ProfileForYouResponse call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "members") int? members,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "isMember") bool? isMember}) {
    return _ProfileForYouResponse(
      Id: Id,
      username: username,
      fullName: fullName,
      avatar: avatar,
      type: type,
      token: token,
      description: description,
      members: members,
      name: name,
      coverPhoto: coverPhoto,
      isMember: isMember,
    );
  }

  ProfileForYouResponse fromJson(Map<String, Object?> json) {
    return ProfileForYouResponse.fromJson(json);
  }
}

/// @nodoc
const $ProfileForYouResponse = _$ProfileForYouResponseTearOff();

/// @nodoc
mixin _$ProfileForYouResponse {
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "fullName")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "members")
  int? get members => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "isMember")
  bool? get isMember => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileForYouResponseCopyWith<ProfileForYouResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileForYouResponseCopyWith<$Res> {
  factory $ProfileForYouResponseCopyWith(ProfileForYouResponse value,
          $Res Function(ProfileForYouResponse) then) =
      _$ProfileForYouResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "members") int? members,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "isMember") bool? isMember});
}

/// @nodoc
class _$ProfileForYouResponseCopyWithImpl<$Res>
    implements $ProfileForYouResponseCopyWith<$Res> {
  _$ProfileForYouResponseCopyWithImpl(this._value, this._then);

  final ProfileForYouResponse _value;
  // ignore: unused_field
  final $Res Function(ProfileForYouResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
    Object? type = freezed,
    Object? token = freezed,
    Object? description = freezed,
    Object? members = freezed,
    Object? name = freezed,
    Object? coverPhoto = freezed,
    Object? isMember = freezed,
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
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc
abstract class _$ProfileForYouResponseCopyWith<$Res>
    implements $ProfileForYouResponseCopyWith<$Res> {
  factory _$ProfileForYouResponseCopyWith(_ProfileForYouResponse value,
          $Res Function(_ProfileForYouResponse) then) =
      __$ProfileForYouResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "members") int? members,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "isMember") bool? isMember});
}

/// @nodoc
class __$ProfileForYouResponseCopyWithImpl<$Res>
    extends _$ProfileForYouResponseCopyWithImpl<$Res>
    implements _$ProfileForYouResponseCopyWith<$Res> {
  __$ProfileForYouResponseCopyWithImpl(_ProfileForYouResponse _value,
      $Res Function(_ProfileForYouResponse) _then)
      : super(_value, (v) => _then(v as _ProfileForYouResponse));

  @override
  _ProfileForYouResponse get _value => super._value as _ProfileForYouResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
    Object? type = freezed,
    Object? token = freezed,
    Object? description = freezed,
    Object? members = freezed,
    Object? name = freezed,
    Object? coverPhoto = freezed,
    Object? isMember = freezed,
  }) {
    return _then(_ProfileForYouResponse(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileForYouResponse extends _ProfileForYouResponse {
  _$_ProfileForYouResponse(
      {@JsonKey(name: "_id") this.Id,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "fullName") this.fullName,
      @JsonKey(name: "avatar") this.avatar,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "token") this.token,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "members") this.members,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "isMember") this.isMember})
      : super._();

  factory _$_ProfileForYouResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileForYouResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "fullName")
  final String? fullName;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "token")
  final String? token;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "members")
  final int? members;
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
  String toString() {
    return 'ProfileForYouResponse(Id: $Id, username: $username, fullName: $fullName, avatar: $avatar, type: $type, token: $token, description: $description, members: $members, name: $name, coverPhoto: $coverPhoto, isMember: $isMember)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileForYouResponse &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.members, members) || other.members == members) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.isMember, isMember) ||
                other.isMember == isMember));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Id, username, fullName, avatar,
      type, token, description, members, name, coverPhoto, isMember);

  @JsonKey(ignore: true)
  @override
  _$ProfileForYouResponseCopyWith<_ProfileForYouResponse> get copyWith =>
      __$ProfileForYouResponseCopyWithImpl<_ProfileForYouResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileForYouResponseToJson(this);
  }
}

abstract class _ProfileForYouResponse extends ProfileForYouResponse {
  factory _ProfileForYouResponse(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "members") int? members,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "isMember") bool? isMember}) = _$_ProfileForYouResponse;
  _ProfileForYouResponse._() : super._();

  factory _ProfileForYouResponse.fromJson(Map<String, dynamic> json) =
      _$_ProfileForYouResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "fullName")
  String? get fullName;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "token")
  String? get token;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "members")
  int? get members;
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
  @JsonKey(ignore: true)
  _$ProfileForYouResponseCopyWith<_ProfileForYouResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
