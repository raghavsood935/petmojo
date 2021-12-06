// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_of_followers_resopnse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfFollowersResponse _$ListOfFollowersResponseFromJson(
    Map<String, dynamic> json) {
  return _ListOfFollowersResponse.fromJson(json);
}

/// @nodoc
class _$ListOfFollowersResponseTearOff {
  const _$ListOfFollowersResponseTearOff();

  _ListOfFollowersResponse call(
      {@JsonKey(name: "followers") List<FollowersResponse>? listOfFollowers}) {
    return _ListOfFollowersResponse(
      listOfFollowers: listOfFollowers,
    );
  }

  ListOfFollowersResponse fromJson(Map<String, Object?> json) {
    return ListOfFollowersResponse.fromJson(json);
  }
}

/// @nodoc
const $ListOfFollowersResponse = _$ListOfFollowersResponseTearOff();

/// @nodoc
mixin _$ListOfFollowersResponse {
  @JsonKey(name: "followers")
  List<FollowersResponse>? get listOfFollowers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfFollowersResponseCopyWith<ListOfFollowersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfFollowersResponseCopyWith<$Res> {
  factory $ListOfFollowersResponseCopyWith(ListOfFollowersResponse value,
          $Res Function(ListOfFollowersResponse) then) =
      _$ListOfFollowersResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "followers") List<FollowersResponse>? listOfFollowers});
}

/// @nodoc
class _$ListOfFollowersResponseCopyWithImpl<$Res>
    implements $ListOfFollowersResponseCopyWith<$Res> {
  _$ListOfFollowersResponseCopyWithImpl(this._value, this._then);

  final ListOfFollowersResponse _value;
  // ignore: unused_field
  final $Res Function(ListOfFollowersResponse) _then;

  @override
  $Res call({
    Object? listOfFollowers = freezed,
  }) {
    return _then(_value.copyWith(
      listOfFollowers: listOfFollowers == freezed
          ? _value.listOfFollowers
          : listOfFollowers // ignore: cast_nullable_to_non_nullable
              as List<FollowersResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListOfFollowersResponseCopyWith<$Res>
    implements $ListOfFollowersResponseCopyWith<$Res> {
  factory _$ListOfFollowersResponseCopyWith(_ListOfFollowersResponse value,
          $Res Function(_ListOfFollowersResponse) then) =
      __$ListOfFollowersResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "followers") List<FollowersResponse>? listOfFollowers});
}

/// @nodoc
class __$ListOfFollowersResponseCopyWithImpl<$Res>
    extends _$ListOfFollowersResponseCopyWithImpl<$Res>
    implements _$ListOfFollowersResponseCopyWith<$Res> {
  __$ListOfFollowersResponseCopyWithImpl(_ListOfFollowersResponse _value,
      $Res Function(_ListOfFollowersResponse) _then)
      : super(_value, (v) => _then(v as _ListOfFollowersResponse));

  @override
  _ListOfFollowersResponse get _value =>
      super._value as _ListOfFollowersResponse;

  @override
  $Res call({
    Object? listOfFollowers = freezed,
  }) {
    return _then(_ListOfFollowersResponse(
      listOfFollowers: listOfFollowers == freezed
          ? _value.listOfFollowers
          : listOfFollowers // ignore: cast_nullable_to_non_nullable
              as List<FollowersResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfFollowersResponse extends _ListOfFollowersResponse {
  _$_ListOfFollowersResponse({@JsonKey(name: "followers") this.listOfFollowers})
      : super._();

  factory _$_ListOfFollowersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListOfFollowersResponseFromJson(json);

  @override
  @JsonKey(name: "followers")
  final List<FollowersResponse>? listOfFollowers;

  @override
  String toString() {
    return 'ListOfFollowersResponse(listOfFollowers: $listOfFollowers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListOfFollowersResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfFollowers, listOfFollowers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfFollowers));

  @JsonKey(ignore: true)
  @override
  _$ListOfFollowersResponseCopyWith<_ListOfFollowersResponse> get copyWith =>
      __$ListOfFollowersResponseCopyWithImpl<_ListOfFollowersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfFollowersResponseToJson(this);
  }
}

abstract class _ListOfFollowersResponse extends ListOfFollowersResponse {
  factory _ListOfFollowersResponse(
          {@JsonKey(name: "followers")
              List<FollowersResponse>? listOfFollowers}) =
      _$_ListOfFollowersResponse;
  _ListOfFollowersResponse._() : super._();

  factory _ListOfFollowersResponse.fromJson(Map<String, dynamic> json) =
      _$_ListOfFollowersResponse.fromJson;

  @override
  @JsonKey(name: "followers")
  List<FollowersResponse>? get listOfFollowers;
  @override
  @JsonKey(ignore: true)
  _$ListOfFollowersResponseCopyWith<_ListOfFollowersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowersResponse _$FollowersResponseFromJson(Map<String, dynamic> json) {
  return _FollowersResponse.fromJson(json);
}

/// @nodoc
class _$FollowersResponseTearOff {
  const _$FollowersResponseTearOff();

  _FollowersResponse call(
      {@JsonKey(name: "followerDetails")
          FollowersDetailsResponse? followersDetailsResponse,
      @JsonKey(name: "isFollowing")
          int? isFollowing}) {
    return _FollowersResponse(
      followersDetailsResponse: followersDetailsResponse,
      isFollowing: isFollowing,
    );
  }

  FollowersResponse fromJson(Map<String, Object?> json) {
    return FollowersResponse.fromJson(json);
  }
}

/// @nodoc
const $FollowersResponse = _$FollowersResponseTearOff();

/// @nodoc
mixin _$FollowersResponse {
  @JsonKey(name: "followerDetails")
  FollowersDetailsResponse? get followersDetailsResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "isFollowing")
  int? get isFollowing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowersResponseCopyWith<FollowersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowersResponseCopyWith<$Res> {
  factory $FollowersResponseCopyWith(
          FollowersResponse value, $Res Function(FollowersResponse) then) =
      _$FollowersResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "followerDetails")
          FollowersDetailsResponse? followersDetailsResponse,
      @JsonKey(name: "isFollowing")
          int? isFollowing});

  $FollowersDetailsResponseCopyWith<$Res>? get followersDetailsResponse;
}

/// @nodoc
class _$FollowersResponseCopyWithImpl<$Res>
    implements $FollowersResponseCopyWith<$Res> {
  _$FollowersResponseCopyWithImpl(this._value, this._then);

  final FollowersResponse _value;
  // ignore: unused_field
  final $Res Function(FollowersResponse) _then;

  @override
  $Res call({
    Object? followersDetailsResponse = freezed,
    Object? isFollowing = freezed,
  }) {
    return _then(_value.copyWith(
      followersDetailsResponse: followersDetailsResponse == freezed
          ? _value.followersDetailsResponse
          : followersDetailsResponse // ignore: cast_nullable_to_non_nullable
              as FollowersDetailsResponse?,
      isFollowing: isFollowing == freezed
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $FollowersDetailsResponseCopyWith<$Res>? get followersDetailsResponse {
    if (_value.followersDetailsResponse == null) {
      return null;
    }

    return $FollowersDetailsResponseCopyWith<$Res>(
        _value.followersDetailsResponse!, (value) {
      return _then(_value.copyWith(followersDetailsResponse: value));
    });
  }
}

/// @nodoc
abstract class _$FollowersResponseCopyWith<$Res>
    implements $FollowersResponseCopyWith<$Res> {
  factory _$FollowersResponseCopyWith(
          _FollowersResponse value, $Res Function(_FollowersResponse) then) =
      __$FollowersResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "followerDetails")
          FollowersDetailsResponse? followersDetailsResponse,
      @JsonKey(name: "isFollowing")
          int? isFollowing});

  @override
  $FollowersDetailsResponseCopyWith<$Res>? get followersDetailsResponse;
}

/// @nodoc
class __$FollowersResponseCopyWithImpl<$Res>
    extends _$FollowersResponseCopyWithImpl<$Res>
    implements _$FollowersResponseCopyWith<$Res> {
  __$FollowersResponseCopyWithImpl(
      _FollowersResponse _value, $Res Function(_FollowersResponse) _then)
      : super(_value, (v) => _then(v as _FollowersResponse));

  @override
  _FollowersResponse get _value => super._value as _FollowersResponse;

  @override
  $Res call({
    Object? followersDetailsResponse = freezed,
    Object? isFollowing = freezed,
  }) {
    return _then(_FollowersResponse(
      followersDetailsResponse: followersDetailsResponse == freezed
          ? _value.followersDetailsResponse
          : followersDetailsResponse // ignore: cast_nullable_to_non_nullable
              as FollowersDetailsResponse?,
      isFollowing: isFollowing == freezed
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowersResponse extends _FollowersResponse {
  _$_FollowersResponse(
      {@JsonKey(name: "followerDetails") this.followersDetailsResponse,
      @JsonKey(name: "isFollowing") this.isFollowing})
      : super._();

  factory _$_FollowersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FollowersResponseFromJson(json);

  @override
  @JsonKey(name: "followerDetails")
  final FollowersDetailsResponse? followersDetailsResponse;
  @override
  @JsonKey(name: "isFollowing")
  final int? isFollowing;

  @override
  String toString() {
    return 'FollowersResponse(followersDetailsResponse: $followersDetailsResponse, isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowersResponse &&
            (identical(
                    other.followersDetailsResponse, followersDetailsResponse) ||
                other.followersDetailsResponse == followersDetailsResponse) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, followersDetailsResponse, isFollowing);

  @JsonKey(ignore: true)
  @override
  _$FollowersResponseCopyWith<_FollowersResponse> get copyWith =>
      __$FollowersResponseCopyWithImpl<_FollowersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowersResponseToJson(this);
  }
}

abstract class _FollowersResponse extends FollowersResponse {
  factory _FollowersResponse(
      {@JsonKey(name: "followerDetails")
          FollowersDetailsResponse? followersDetailsResponse,
      @JsonKey(name: "isFollowing")
          int? isFollowing}) = _$_FollowersResponse;
  _FollowersResponse._() : super._();

  factory _FollowersResponse.fromJson(Map<String, dynamic> json) =
      _$_FollowersResponse.fromJson;

  @override
  @JsonKey(name: "followerDetails")
  FollowersDetailsResponse? get followersDetailsResponse;
  @override
  @JsonKey(name: "isFollowing")
  int? get isFollowing;
  @override
  @JsonKey(ignore: true)
  _$FollowersResponseCopyWith<_FollowersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowersDetailsResponse _$FollowersDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _FollowersDetailsResponse.fromJson(json);
}

/// @nodoc
class _$FollowersDetailsResponseTearOff {
  const _$FollowersDetailsResponseTearOff();

  _FollowersDetailsResponse call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "fullName") String? fullName}) {
    return _FollowersDetailsResponse(
      Id: Id,
      username: username,
      avatar: avatar,
      fullName: fullName,
    );
  }

  FollowersDetailsResponse fromJson(Map<String, Object?> json) {
    return FollowersDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $FollowersDetailsResponse = _$FollowersDetailsResponseTearOff();

/// @nodoc
mixin _$FollowersDetailsResponse {
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "fullName")
  String? get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowersDetailsResponseCopyWith<FollowersDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowersDetailsResponseCopyWith<$Res> {
  factory $FollowersDetailsResponseCopyWith(FollowersDetailsResponse value,
          $Res Function(FollowersDetailsResponse) then) =
      _$FollowersDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "fullName") String? fullName});
}

/// @nodoc
class _$FollowersDetailsResponseCopyWithImpl<$Res>
    implements $FollowersDetailsResponseCopyWith<$Res> {
  _$FollowersDetailsResponseCopyWithImpl(this._value, this._then);

  final FollowersDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(FollowersDetailsResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? fullName = freezed,
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
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FollowersDetailsResponseCopyWith<$Res>
    implements $FollowersDetailsResponseCopyWith<$Res> {
  factory _$FollowersDetailsResponseCopyWith(_FollowersDetailsResponse value,
          $Res Function(_FollowersDetailsResponse) then) =
      __$FollowersDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "fullName") String? fullName});
}

/// @nodoc
class __$FollowersDetailsResponseCopyWithImpl<$Res>
    extends _$FollowersDetailsResponseCopyWithImpl<$Res>
    implements _$FollowersDetailsResponseCopyWith<$Res> {
  __$FollowersDetailsResponseCopyWithImpl(_FollowersDetailsResponse _value,
      $Res Function(_FollowersDetailsResponse) _then)
      : super(_value, (v) => _then(v as _FollowersDetailsResponse));

  @override
  _FollowersDetailsResponse get _value =>
      super._value as _FollowersDetailsResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? fullName = freezed,
  }) {
    return _then(_FollowersDetailsResponse(
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
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowersDetailsResponse extends _FollowersDetailsResponse {
  _$_FollowersDetailsResponse(
      {@JsonKey(name: "_id") this.Id,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "avatar") this.avatar,
      @JsonKey(name: "fullName") this.fullName})
      : super._();

  factory _$_FollowersDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FollowersDetailsResponseFromJson(json);

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
  @JsonKey(name: "fullName")
  final String? fullName;

  @override
  String toString() {
    return 'FollowersDetailsResponse(Id: $Id, username: $username, avatar: $avatar, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowersDetailsResponse &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Id, username, avatar, fullName);

  @JsonKey(ignore: true)
  @override
  _$FollowersDetailsResponseCopyWith<_FollowersDetailsResponse> get copyWith =>
      __$FollowersDetailsResponseCopyWithImpl<_FollowersDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowersDetailsResponseToJson(this);
  }
}

abstract class _FollowersDetailsResponse extends FollowersDetailsResponse {
  factory _FollowersDetailsResponse(
          {@JsonKey(name: "_id") String? Id,
          @JsonKey(name: "username") String? username,
          @JsonKey(name: "avatar") String? avatar,
          @JsonKey(name: "fullName") String? fullName}) =
      _$_FollowersDetailsResponse;
  _FollowersDetailsResponse._() : super._();

  factory _FollowersDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_FollowersDetailsResponse.fromJson;

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
  @JsonKey(name: "fullName")
  String? get fullName;
  @override
  @JsonKey(ignore: true)
  _$FollowersDetailsResponseCopyWith<_FollowersDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
