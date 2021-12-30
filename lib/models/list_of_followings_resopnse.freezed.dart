// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_of_followings_resopnse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfFollowingsResponse _$ListOfFollowingsResponseFromJson(
    Map<String, dynamic> json) {
  return _ListOfFollowingsResponse.fromJson(json);
}

/// @nodoc
class _$ListOfFollowingsResponseTearOff {
  const _$ListOfFollowingsResponseTearOff();

  _ListOfFollowingsResponse call(
      {@JsonKey(name: "following") List<FollowingResponse>? listOfFollowings}) {
    return _ListOfFollowingsResponse(
      listOfFollowings: listOfFollowings,
    );
  }

  ListOfFollowingsResponse fromJson(Map<String, Object?> json) {
    return ListOfFollowingsResponse.fromJson(json);
  }
}

/// @nodoc
const $ListOfFollowingsResponse = _$ListOfFollowingsResponseTearOff();

/// @nodoc
mixin _$ListOfFollowingsResponse {
  @JsonKey(name: "following")
  List<FollowingResponse>? get listOfFollowings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfFollowingsResponseCopyWith<ListOfFollowingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfFollowingsResponseCopyWith<$Res> {
  factory $ListOfFollowingsResponseCopyWith(ListOfFollowingsResponse value,
          $Res Function(ListOfFollowingsResponse) then) =
      _$ListOfFollowingsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "following") List<FollowingResponse>? listOfFollowings});
}

/// @nodoc
class _$ListOfFollowingsResponseCopyWithImpl<$Res>
    implements $ListOfFollowingsResponseCopyWith<$Res> {
  _$ListOfFollowingsResponseCopyWithImpl(this._value, this._then);

  final ListOfFollowingsResponse _value;
  // ignore: unused_field
  final $Res Function(ListOfFollowingsResponse) _then;

  @override
  $Res call({
    Object? listOfFollowings = freezed,
  }) {
    return _then(_value.copyWith(
      listOfFollowings: listOfFollowings == freezed
          ? _value.listOfFollowings
          : listOfFollowings // ignore: cast_nullable_to_non_nullable
              as List<FollowingResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListOfFollowingsResponseCopyWith<$Res>
    implements $ListOfFollowingsResponseCopyWith<$Res> {
  factory _$ListOfFollowingsResponseCopyWith(_ListOfFollowingsResponse value,
          $Res Function(_ListOfFollowingsResponse) then) =
      __$ListOfFollowingsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "following") List<FollowingResponse>? listOfFollowings});
}

/// @nodoc
class __$ListOfFollowingsResponseCopyWithImpl<$Res>
    extends _$ListOfFollowingsResponseCopyWithImpl<$Res>
    implements _$ListOfFollowingsResponseCopyWith<$Res> {
  __$ListOfFollowingsResponseCopyWithImpl(_ListOfFollowingsResponse _value,
      $Res Function(_ListOfFollowingsResponse) _then)
      : super(_value, (v) => _then(v as _ListOfFollowingsResponse));

  @override
  _ListOfFollowingsResponse get _value =>
      super._value as _ListOfFollowingsResponse;

  @override
  $Res call({
    Object? listOfFollowings = freezed,
  }) {
    return _then(_ListOfFollowingsResponse(
      listOfFollowings: listOfFollowings == freezed
          ? _value.listOfFollowings
          : listOfFollowings // ignore: cast_nullable_to_non_nullable
              as List<FollowingResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfFollowingsResponse extends _ListOfFollowingsResponse {
  _$_ListOfFollowingsResponse(
      {@JsonKey(name: "following") this.listOfFollowings})
      : super._();

  factory _$_ListOfFollowingsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListOfFollowingsResponseFromJson(json);

  @override
  @JsonKey(name: "following")
  final List<FollowingResponse>? listOfFollowings;

  @override
  String toString() {
    return 'ListOfFollowingsResponse(listOfFollowings: $listOfFollowings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListOfFollowingsResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfFollowings, listOfFollowings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfFollowings));

  @JsonKey(ignore: true)
  @override
  _$ListOfFollowingsResponseCopyWith<_ListOfFollowingsResponse> get copyWith =>
      __$ListOfFollowingsResponseCopyWithImpl<_ListOfFollowingsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfFollowingsResponseToJson(this);
  }
}

abstract class _ListOfFollowingsResponse extends ListOfFollowingsResponse {
  factory _ListOfFollowingsResponse(
          {@JsonKey(name: "following")
              List<FollowingResponse>? listOfFollowings}) =
      _$_ListOfFollowingsResponse;
  _ListOfFollowingsResponse._() : super._();

  factory _ListOfFollowingsResponse.fromJson(Map<String, dynamic> json) =
      _$_ListOfFollowingsResponse.fromJson;

  @override
  @JsonKey(name: "following")
  List<FollowingResponse>? get listOfFollowings;
  @override
  @JsonKey(ignore: true)
  _$ListOfFollowingsResponseCopyWith<_ListOfFollowingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowingResponse _$FollowingResponseFromJson(Map<String, dynamic> json) {
  return _FollowingResponse.fromJson(json);
}

/// @nodoc
class _$FollowingResponseTearOff {
  const _$FollowingResponseTearOff();

  _FollowingResponse call(
      {@JsonKey(name: "followingDetails")
          FollowingDetailsResponse? followingDetailsResponse,
      @JsonKey(name: "followingType")
          String? followingType}) {
    return _FollowingResponse(
      followingDetailsResponse: followingDetailsResponse,
      followingType: followingType,
    );
  }

  FollowingResponse fromJson(Map<String, Object?> json) {
    return FollowingResponse.fromJson(json);
  }
}

/// @nodoc
const $FollowingResponse = _$FollowingResponseTearOff();

/// @nodoc
mixin _$FollowingResponse {
  @JsonKey(name: "followingDetails")
  FollowingDetailsResponse? get followingDetailsResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "followingType")
  String? get followingType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowingResponseCopyWith<FollowingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingResponseCopyWith<$Res> {
  factory $FollowingResponseCopyWith(
          FollowingResponse value, $Res Function(FollowingResponse) then) =
      _$FollowingResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "followingDetails")
          FollowingDetailsResponse? followingDetailsResponse,
      @JsonKey(name: "followingType")
          String? followingType});

  $FollowingDetailsResponseCopyWith<$Res>? get followingDetailsResponse;
}

/// @nodoc
class _$FollowingResponseCopyWithImpl<$Res>
    implements $FollowingResponseCopyWith<$Res> {
  _$FollowingResponseCopyWithImpl(this._value, this._then);

  final FollowingResponse _value;
  // ignore: unused_field
  final $Res Function(FollowingResponse) _then;

  @override
  $Res call({
    Object? followingDetailsResponse = freezed,
    Object? followingType = freezed,
  }) {
    return _then(_value.copyWith(
      followingDetailsResponse: followingDetailsResponse == freezed
          ? _value.followingDetailsResponse
          : followingDetailsResponse // ignore: cast_nullable_to_non_nullable
              as FollowingDetailsResponse?,
      followingType: followingType == freezed
          ? _value.followingType
          : followingType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $FollowingDetailsResponseCopyWith<$Res>? get followingDetailsResponse {
    if (_value.followingDetailsResponse == null) {
      return null;
    }

    return $FollowingDetailsResponseCopyWith<$Res>(
        _value.followingDetailsResponse!, (value) {
      return _then(_value.copyWith(followingDetailsResponse: value));
    });
  }
}

/// @nodoc
abstract class _$FollowingResponseCopyWith<$Res>
    implements $FollowingResponseCopyWith<$Res> {
  factory _$FollowingResponseCopyWith(
          _FollowingResponse value, $Res Function(_FollowingResponse) then) =
      __$FollowingResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "followingDetails")
          FollowingDetailsResponse? followingDetailsResponse,
      @JsonKey(name: "followingType")
          String? followingType});

  @override
  $FollowingDetailsResponseCopyWith<$Res>? get followingDetailsResponse;
}

/// @nodoc
class __$FollowingResponseCopyWithImpl<$Res>
    extends _$FollowingResponseCopyWithImpl<$Res>
    implements _$FollowingResponseCopyWith<$Res> {
  __$FollowingResponseCopyWithImpl(
      _FollowingResponse _value, $Res Function(_FollowingResponse) _then)
      : super(_value, (v) => _then(v as _FollowingResponse));

  @override
  _FollowingResponse get _value => super._value as _FollowingResponse;

  @override
  $Res call({
    Object? followingDetailsResponse = freezed,
    Object? followingType = freezed,
  }) {
    return _then(_FollowingResponse(
      followingDetailsResponse: followingDetailsResponse == freezed
          ? _value.followingDetailsResponse
          : followingDetailsResponse // ignore: cast_nullable_to_non_nullable
              as FollowingDetailsResponse?,
      followingType: followingType == freezed
          ? _value.followingType
          : followingType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowingResponse extends _FollowingResponse {
  _$_FollowingResponse(
      {@JsonKey(name: "followingDetails") this.followingDetailsResponse,
      @JsonKey(name: "followingType") this.followingType})
      : super._();

  factory _$_FollowingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FollowingResponseFromJson(json);

  @override
  @JsonKey(name: "followingDetails")
  final FollowingDetailsResponse? followingDetailsResponse;
  @override
  @JsonKey(name: "followingType")
  final String? followingType;

  @override
  String toString() {
    return 'FollowingResponse(followingDetailsResponse: $followingDetailsResponse, followingType: $followingType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowingResponse &&
            (identical(
                    other.followingDetailsResponse, followingDetailsResponse) ||
                other.followingDetailsResponse == followingDetailsResponse) &&
            (identical(other.followingType, followingType) ||
                other.followingType == followingType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, followingDetailsResponse, followingType);

  @JsonKey(ignore: true)
  @override
  _$FollowingResponseCopyWith<_FollowingResponse> get copyWith =>
      __$FollowingResponseCopyWithImpl<_FollowingResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowingResponseToJson(this);
  }
}

abstract class _FollowingResponse extends FollowingResponse {
  factory _FollowingResponse(
      {@JsonKey(name: "followingDetails")
          FollowingDetailsResponse? followingDetailsResponse,
      @JsonKey(name: "followingType")
          String? followingType}) = _$_FollowingResponse;
  _FollowingResponse._() : super._();

  factory _FollowingResponse.fromJson(Map<String, dynamic> json) =
      _$_FollowingResponse.fromJson;

  @override
  @JsonKey(name: "followingDetails")
  FollowingDetailsResponse? get followingDetailsResponse;
  @override
  @JsonKey(name: "followingType")
  String? get followingType;
  @override
  @JsonKey(ignore: true)
  _$FollowingResponseCopyWith<_FollowingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowingDetailsResponse _$FollowingDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _FollowingDetailsResponse.fromJson(json);
}

/// @nodoc
class _$FollowingDetailsResponseTearOff {
  const _$FollowingDetailsResponseTearOff();

  _FollowingDetailsResponse call(
      {@JsonKey(name: "followingId")
          FollowingInnerDetailsResponse? followingInnerDetailsResponse}) {
    return _FollowingDetailsResponse(
      followingInnerDetailsResponse: followingInnerDetailsResponse,
    );
  }

  FollowingDetailsResponse fromJson(Map<String, Object?> json) {
    return FollowingDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $FollowingDetailsResponse = _$FollowingDetailsResponseTearOff();

/// @nodoc
mixin _$FollowingDetailsResponse {
  @JsonKey(name: "followingId")
  FollowingInnerDetailsResponse? get followingInnerDetailsResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowingDetailsResponseCopyWith<FollowingDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingDetailsResponseCopyWith<$Res> {
  factory $FollowingDetailsResponseCopyWith(FollowingDetailsResponse value,
          $Res Function(FollowingDetailsResponse) then) =
      _$FollowingDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "followingId")
          FollowingInnerDetailsResponse? followingInnerDetailsResponse});

  $FollowingInnerDetailsResponseCopyWith<$Res>?
      get followingInnerDetailsResponse;
}

/// @nodoc
class _$FollowingDetailsResponseCopyWithImpl<$Res>
    implements $FollowingDetailsResponseCopyWith<$Res> {
  _$FollowingDetailsResponseCopyWithImpl(this._value, this._then);

  final FollowingDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(FollowingDetailsResponse) _then;

  @override
  $Res call({
    Object? followingInnerDetailsResponse = freezed,
  }) {
    return _then(_value.copyWith(
      followingInnerDetailsResponse: followingInnerDetailsResponse == freezed
          ? _value.followingInnerDetailsResponse
          : followingInnerDetailsResponse // ignore: cast_nullable_to_non_nullable
              as FollowingInnerDetailsResponse?,
    ));
  }

  @override
  $FollowingInnerDetailsResponseCopyWith<$Res>?
      get followingInnerDetailsResponse {
    if (_value.followingInnerDetailsResponse == null) {
      return null;
    }

    return $FollowingInnerDetailsResponseCopyWith<$Res>(
        _value.followingInnerDetailsResponse!, (value) {
      return _then(_value.copyWith(followingInnerDetailsResponse: value));
    });
  }
}

/// @nodoc
abstract class _$FollowingDetailsResponseCopyWith<$Res>
    implements $FollowingDetailsResponseCopyWith<$Res> {
  factory _$FollowingDetailsResponseCopyWith(_FollowingDetailsResponse value,
          $Res Function(_FollowingDetailsResponse) then) =
      __$FollowingDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "followingId")
          FollowingInnerDetailsResponse? followingInnerDetailsResponse});

  @override
  $FollowingInnerDetailsResponseCopyWith<$Res>?
      get followingInnerDetailsResponse;
}

/// @nodoc
class __$FollowingDetailsResponseCopyWithImpl<$Res>
    extends _$FollowingDetailsResponseCopyWithImpl<$Res>
    implements _$FollowingDetailsResponseCopyWith<$Res> {
  __$FollowingDetailsResponseCopyWithImpl(_FollowingDetailsResponse _value,
      $Res Function(_FollowingDetailsResponse) _then)
      : super(_value, (v) => _then(v as _FollowingDetailsResponse));

  @override
  _FollowingDetailsResponse get _value =>
      super._value as _FollowingDetailsResponse;

  @override
  $Res call({
    Object? followingInnerDetailsResponse = freezed,
  }) {
    return _then(_FollowingDetailsResponse(
      followingInnerDetailsResponse: followingInnerDetailsResponse == freezed
          ? _value.followingInnerDetailsResponse
          : followingInnerDetailsResponse // ignore: cast_nullable_to_non_nullable
              as FollowingInnerDetailsResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowingDetailsResponse extends _FollowingDetailsResponse {
  _$_FollowingDetailsResponse(
      {@JsonKey(name: "followingId") this.followingInnerDetailsResponse})
      : super._();

  factory _$_FollowingDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FollowingDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "followingId")
  final FollowingInnerDetailsResponse? followingInnerDetailsResponse;

  @override
  String toString() {
    return 'FollowingDetailsResponse(followingInnerDetailsResponse: $followingInnerDetailsResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowingDetailsResponse &&
            (identical(other.followingInnerDetailsResponse,
                    followingInnerDetailsResponse) ||
                other.followingInnerDetailsResponse ==
                    followingInnerDetailsResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, followingInnerDetailsResponse);

  @JsonKey(ignore: true)
  @override
  _$FollowingDetailsResponseCopyWith<_FollowingDetailsResponse> get copyWith =>
      __$FollowingDetailsResponseCopyWithImpl<_FollowingDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowingDetailsResponseToJson(this);
  }
}

abstract class _FollowingDetailsResponse extends FollowingDetailsResponse {
  factory _FollowingDetailsResponse(
          {@JsonKey(name: "followingId")
              FollowingInnerDetailsResponse? followingInnerDetailsResponse}) =
      _$_FollowingDetailsResponse;
  _FollowingDetailsResponse._() : super._();

  factory _FollowingDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_FollowingDetailsResponse.fromJson;

  @override
  @JsonKey(name: "followingId")
  FollowingInnerDetailsResponse? get followingInnerDetailsResponse;
  @override
  @JsonKey(ignore: true)
  _$FollowingDetailsResponseCopyWith<_FollowingDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowingInnerDetailsResponse _$FollowingInnerDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _FollowingInnerDetailsResponse.fromJson(json);
}

/// @nodoc
class _$FollowingInnerDetailsResponseTearOff {
  const _$FollowingInnerDetailsResponseTearOff();

  _FollowingInnerDetailsResponse call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "fullName") String? fullName}) {
    return _FollowingInnerDetailsResponse(
      Id: Id,
      username: username,
      avatar: avatar,
      fullName: fullName,
    );
  }

  FollowingInnerDetailsResponse fromJson(Map<String, Object?> json) {
    return FollowingInnerDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $FollowingInnerDetailsResponse = _$FollowingInnerDetailsResponseTearOff();

/// @nodoc
mixin _$FollowingInnerDetailsResponse {
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
  $FollowingInnerDetailsResponseCopyWith<FollowingInnerDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingInnerDetailsResponseCopyWith<$Res> {
  factory $FollowingInnerDetailsResponseCopyWith(
          FollowingInnerDetailsResponse value,
          $Res Function(FollowingInnerDetailsResponse) then) =
      _$FollowingInnerDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "fullName") String? fullName});
}

/// @nodoc
class _$FollowingInnerDetailsResponseCopyWithImpl<$Res>
    implements $FollowingInnerDetailsResponseCopyWith<$Res> {
  _$FollowingInnerDetailsResponseCopyWithImpl(this._value, this._then);

  final FollowingInnerDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(FollowingInnerDetailsResponse) _then;

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
abstract class _$FollowingInnerDetailsResponseCopyWith<$Res>
    implements $FollowingInnerDetailsResponseCopyWith<$Res> {
  factory _$FollowingInnerDetailsResponseCopyWith(
          _FollowingInnerDetailsResponse value,
          $Res Function(_FollowingInnerDetailsResponse) then) =
      __$FollowingInnerDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "fullName") String? fullName});
}

/// @nodoc
class __$FollowingInnerDetailsResponseCopyWithImpl<$Res>
    extends _$FollowingInnerDetailsResponseCopyWithImpl<$Res>
    implements _$FollowingInnerDetailsResponseCopyWith<$Res> {
  __$FollowingInnerDetailsResponseCopyWithImpl(
      _FollowingInnerDetailsResponse _value,
      $Res Function(_FollowingInnerDetailsResponse) _then)
      : super(_value, (v) => _then(v as _FollowingInnerDetailsResponse));

  @override
  _FollowingInnerDetailsResponse get _value =>
      super._value as _FollowingInnerDetailsResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? fullName = freezed,
  }) {
    return _then(_FollowingInnerDetailsResponse(
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
class _$_FollowingInnerDetailsResponse extends _FollowingInnerDetailsResponse {
  _$_FollowingInnerDetailsResponse(
      {@JsonKey(name: "_id") this.Id,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "avatar") this.avatar,
      @JsonKey(name: "fullName") this.fullName})
      : super._();

  factory _$_FollowingInnerDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_FollowingInnerDetailsResponseFromJson(json);

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
    return 'FollowingInnerDetailsResponse(Id: $Id, username: $username, avatar: $avatar, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowingInnerDetailsResponse &&
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
  _$FollowingInnerDetailsResponseCopyWith<_FollowingInnerDetailsResponse>
      get copyWith => __$FollowingInnerDetailsResponseCopyWithImpl<
          _FollowingInnerDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FollowingInnerDetailsResponseToJson(this);
  }
}

abstract class _FollowingInnerDetailsResponse
    extends FollowingInnerDetailsResponse {
  factory _FollowingInnerDetailsResponse(
          {@JsonKey(name: "_id") String? Id,
          @JsonKey(name: "username") String? username,
          @JsonKey(name: "avatar") String? avatar,
          @JsonKey(name: "fullName") String? fullName}) =
      _$_FollowingInnerDetailsResponse;
  _FollowingInnerDetailsResponse._() : super._();

  factory _FollowingInnerDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_FollowingInnerDetailsResponse.fromJson;

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
  _$FollowingInnerDetailsResponseCopyWith<_FollowingInnerDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
