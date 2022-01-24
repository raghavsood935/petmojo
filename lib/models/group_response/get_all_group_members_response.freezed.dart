// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_all_group_members_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAllGroupMembersResponse _$GetAllGroupMembersResponseFromJson(
    Map<String, dynamic> json) {
  return _GetAllGroupMembersResponse.fromJson(json);
}

/// @nodoc
class _$GetAllGroupMembersResponseTearOff {
  const _$GetAllGroupMembersResponseTearOff();

  _GetAllGroupMembersResponse call(
      {@JsonKey(name: "members") List<GroupMemberResponse>? listOfMembers}) {
    return _GetAllGroupMembersResponse(
      listOfMembers: listOfMembers,
    );
  }

  GetAllGroupMembersResponse fromJson(Map<String, Object?> json) {
    return GetAllGroupMembersResponse.fromJson(json);
  }
}

/// @nodoc
const $GetAllGroupMembersResponse = _$GetAllGroupMembersResponseTearOff();

/// @nodoc
mixin _$GetAllGroupMembersResponse {
  @JsonKey(name: "members")
  List<GroupMemberResponse>? get listOfMembers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllGroupMembersResponseCopyWith<GetAllGroupMembersResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllGroupMembersResponseCopyWith<$Res> {
  factory $GetAllGroupMembersResponseCopyWith(GetAllGroupMembersResponse value,
          $Res Function(GetAllGroupMembersResponse) then) =
      _$GetAllGroupMembersResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "members") List<GroupMemberResponse>? listOfMembers});
}

/// @nodoc
class _$GetAllGroupMembersResponseCopyWithImpl<$Res>
    implements $GetAllGroupMembersResponseCopyWith<$Res> {
  _$GetAllGroupMembersResponseCopyWithImpl(this._value, this._then);

  final GetAllGroupMembersResponse _value;
  // ignore: unused_field
  final $Res Function(GetAllGroupMembersResponse) _then;

  @override
  $Res call({
    Object? listOfMembers = freezed,
  }) {
    return _then(_value.copyWith(
      listOfMembers: listOfMembers == freezed
          ? _value.listOfMembers
          : listOfMembers // ignore: cast_nullable_to_non_nullable
              as List<GroupMemberResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$GetAllGroupMembersResponseCopyWith<$Res>
    implements $GetAllGroupMembersResponseCopyWith<$Res> {
  factory _$GetAllGroupMembersResponseCopyWith(
          _GetAllGroupMembersResponse value,
          $Res Function(_GetAllGroupMembersResponse) then) =
      __$GetAllGroupMembersResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "members") List<GroupMemberResponse>? listOfMembers});
}

/// @nodoc
class __$GetAllGroupMembersResponseCopyWithImpl<$Res>
    extends _$GetAllGroupMembersResponseCopyWithImpl<$Res>
    implements _$GetAllGroupMembersResponseCopyWith<$Res> {
  __$GetAllGroupMembersResponseCopyWithImpl(_GetAllGroupMembersResponse _value,
      $Res Function(_GetAllGroupMembersResponse) _then)
      : super(_value, (v) => _then(v as _GetAllGroupMembersResponse));

  @override
  _GetAllGroupMembersResponse get _value =>
      super._value as _GetAllGroupMembersResponse;

  @override
  $Res call({
    Object? listOfMembers = freezed,
  }) {
    return _then(_GetAllGroupMembersResponse(
      listOfMembers: listOfMembers == freezed
          ? _value.listOfMembers
          : listOfMembers // ignore: cast_nullable_to_non_nullable
              as List<GroupMemberResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetAllGroupMembersResponse extends _GetAllGroupMembersResponse {
  _$_GetAllGroupMembersResponse({@JsonKey(name: "members") this.listOfMembers})
      : super._();

  factory _$_GetAllGroupMembersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetAllGroupMembersResponseFromJson(json);

  @override
  @JsonKey(name: "members")
  final List<GroupMemberResponse>? listOfMembers;

  @override
  String toString() {
    return 'GetAllGroupMembersResponse(listOfMembers: $listOfMembers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAllGroupMembersResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfMembers, listOfMembers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfMembers));

  @JsonKey(ignore: true)
  @override
  _$GetAllGroupMembersResponseCopyWith<_GetAllGroupMembersResponse>
      get copyWith => __$GetAllGroupMembersResponseCopyWithImpl<
          _GetAllGroupMembersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetAllGroupMembersResponseToJson(this);
  }
}

abstract class _GetAllGroupMembersResponse extends GetAllGroupMembersResponse {
  factory _GetAllGroupMembersResponse(
          {@JsonKey(name: "members")
              List<GroupMemberResponse>? listOfMembers}) =
      _$_GetAllGroupMembersResponse;
  _GetAllGroupMembersResponse._() : super._();

  factory _GetAllGroupMembersResponse.fromJson(Map<String, dynamic> json) =
      _$_GetAllGroupMembersResponse.fromJson;

  @override
  @JsonKey(name: "members")
  List<GroupMemberResponse>? get listOfMembers;
  @override
  @JsonKey(ignore: true)
  _$GetAllGroupMembersResponseCopyWith<_GetAllGroupMembersResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GroupMemberResponse _$GroupMemberResponseFromJson(Map<String, dynamic> json) {
  return _GroupMemberResponse.fromJson(json);
}

/// @nodoc
class _$GroupMemberResponseTearOff {
  const _$GroupMemberResponseTearOff();

  _GroupMemberResponse call(
      {@JsonKey(name: "isAdmin") bool? isAdmin,
      @JsonKey(name: "userType") String? userType,
      @JsonKey(name: "user") ProfileResponse? user}) {
    return _GroupMemberResponse(
      isAdmin: isAdmin,
      userType: userType,
      user: user,
    );
  }

  GroupMemberResponse fromJson(Map<String, Object?> json) {
    return GroupMemberResponse.fromJson(json);
  }
}

/// @nodoc
const $GroupMemberResponse = _$GroupMemberResponseTearOff();

/// @nodoc
mixin _$GroupMemberResponse {
  @JsonKey(name: "isAdmin")
  bool? get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: "userType")
  String? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  ProfileResponse? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupMemberResponseCopyWith<GroupMemberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMemberResponseCopyWith<$Res> {
  factory $GroupMemberResponseCopyWith(
          GroupMemberResponse value, $Res Function(GroupMemberResponse) then) =
      _$GroupMemberResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "isAdmin") bool? isAdmin,
      @JsonKey(name: "userType") String? userType,
      @JsonKey(name: "user") ProfileResponse? user});

  $ProfileResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$GroupMemberResponseCopyWithImpl<$Res>
    implements $GroupMemberResponseCopyWith<$Res> {
  _$GroupMemberResponseCopyWithImpl(this._value, this._then);

  final GroupMemberResponse _value;
  // ignore: unused_field
  final $Res Function(GroupMemberResponse) _then;

  @override
  $Res call({
    Object? isAdmin = freezed,
    Object? userType = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
    ));
  }

  @override
  $ProfileResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ProfileResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$GroupMemberResponseCopyWith<$Res>
    implements $GroupMemberResponseCopyWith<$Res> {
  factory _$GroupMemberResponseCopyWith(_GroupMemberResponse value,
          $Res Function(_GroupMemberResponse) then) =
      __$GroupMemberResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "isAdmin") bool? isAdmin,
      @JsonKey(name: "userType") String? userType,
      @JsonKey(name: "user") ProfileResponse? user});

  @override
  $ProfileResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$GroupMemberResponseCopyWithImpl<$Res>
    extends _$GroupMemberResponseCopyWithImpl<$Res>
    implements _$GroupMemberResponseCopyWith<$Res> {
  __$GroupMemberResponseCopyWithImpl(
      _GroupMemberResponse _value, $Res Function(_GroupMemberResponse) _then)
      : super(_value, (v) => _then(v as _GroupMemberResponse));

  @override
  _GroupMemberResponse get _value => super._value as _GroupMemberResponse;

  @override
  $Res call({
    Object? isAdmin = freezed,
    Object? userType = freezed,
    Object? user = freezed,
  }) {
    return _then(_GroupMemberResponse(
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupMemberResponse extends _GroupMemberResponse {
  _$_GroupMemberResponse(
      {@JsonKey(name: "isAdmin") this.isAdmin,
      @JsonKey(name: "userType") this.userType,
      @JsonKey(name: "user") this.user})
      : super._();

  factory _$_GroupMemberResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GroupMemberResponseFromJson(json);

  @override
  @JsonKey(name: "isAdmin")
  final bool? isAdmin;
  @override
  @JsonKey(name: "userType")
  final String? userType;
  @override
  @JsonKey(name: "user")
  final ProfileResponse? user;

  @override
  String toString() {
    return 'GroupMemberResponse(isAdmin: $isAdmin, userType: $userType, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupMemberResponse &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAdmin, userType, user);

  @JsonKey(ignore: true)
  @override
  _$GroupMemberResponseCopyWith<_GroupMemberResponse> get copyWith =>
      __$GroupMemberResponseCopyWithImpl<_GroupMemberResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupMemberResponseToJson(this);
  }
}

abstract class _GroupMemberResponse extends GroupMemberResponse {
  factory _GroupMemberResponse(
      {@JsonKey(name: "isAdmin") bool? isAdmin,
      @JsonKey(name: "userType") String? userType,
      @JsonKey(name: "user") ProfileResponse? user}) = _$_GroupMemberResponse;
  _GroupMemberResponse._() : super._();

  factory _GroupMemberResponse.fromJson(Map<String, dynamic> json) =
      _$_GroupMemberResponse.fromJson;

  @override
  @JsonKey(name: "isAdmin")
  bool? get isAdmin;
  @override
  @JsonKey(name: "userType")
  String? get userType;
  @override
  @JsonKey(name: "user")
  ProfileResponse? get user;
  @override
  @JsonKey(ignore: true)
  _$GroupMemberResponseCopyWith<_GroupMemberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
