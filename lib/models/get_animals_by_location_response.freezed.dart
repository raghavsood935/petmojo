// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_animals_by_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAnimalsByLocationResponse _$GetAnimalsByLocationResponseFromJson(
    Map<String, dynamic> json) {
  return _GetAnimalsByLocationResponse.fromJson(json);
}

/// @nodoc
class _$GetAnimalsByLocationResponseTearOff {
  const _$GetAnimalsByLocationResponseTearOff();

  _GetAnimalsByLocationResponse call(
      {@JsonKey(name: "animals")
          List<GetAnimalsByLocationDetailsResponse>? animals}) {
    return _GetAnimalsByLocationResponse(
      animals: animals,
    );
  }

  GetAnimalsByLocationResponse fromJson(Map<String, Object?> json) {
    return GetAnimalsByLocationResponse.fromJson(json);
  }
}

/// @nodoc
const $GetAnimalsByLocationResponse = _$GetAnimalsByLocationResponseTearOff();

/// @nodoc
mixin _$GetAnimalsByLocationResponse {
  @JsonKey(name: "animals")
  List<GetAnimalsByLocationDetailsResponse>? get animals =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAnimalsByLocationResponseCopyWith<GetAnimalsByLocationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAnimalsByLocationResponseCopyWith<$Res> {
  factory $GetAnimalsByLocationResponseCopyWith(
          GetAnimalsByLocationResponse value,
          $Res Function(GetAnimalsByLocationResponse) then) =
      _$GetAnimalsByLocationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "animals")
          List<GetAnimalsByLocationDetailsResponse>? animals});
}

/// @nodoc
class _$GetAnimalsByLocationResponseCopyWithImpl<$Res>
    implements $GetAnimalsByLocationResponseCopyWith<$Res> {
  _$GetAnimalsByLocationResponseCopyWithImpl(this._value, this._then);

  final GetAnimalsByLocationResponse _value;
  // ignore: unused_field
  final $Res Function(GetAnimalsByLocationResponse) _then;

  @override
  $Res call({
    Object? animals = freezed,
  }) {
    return _then(_value.copyWith(
      animals: animals == freezed
          ? _value.animals
          : animals // ignore: cast_nullable_to_non_nullable
              as List<GetAnimalsByLocationDetailsResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$GetAnimalsByLocationResponseCopyWith<$Res>
    implements $GetAnimalsByLocationResponseCopyWith<$Res> {
  factory _$GetAnimalsByLocationResponseCopyWith(
          _GetAnimalsByLocationResponse value,
          $Res Function(_GetAnimalsByLocationResponse) then) =
      __$GetAnimalsByLocationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "animals")
          List<GetAnimalsByLocationDetailsResponse>? animals});
}

/// @nodoc
class __$GetAnimalsByLocationResponseCopyWithImpl<$Res>
    extends _$GetAnimalsByLocationResponseCopyWithImpl<$Res>
    implements _$GetAnimalsByLocationResponseCopyWith<$Res> {
  __$GetAnimalsByLocationResponseCopyWithImpl(
      _GetAnimalsByLocationResponse _value,
      $Res Function(_GetAnimalsByLocationResponse) _then)
      : super(_value, (v) => _then(v as _GetAnimalsByLocationResponse));

  @override
  _GetAnimalsByLocationResponse get _value =>
      super._value as _GetAnimalsByLocationResponse;

  @override
  $Res call({
    Object? animals = freezed,
  }) {
    return _then(_GetAnimalsByLocationResponse(
      animals: animals == freezed
          ? _value.animals
          : animals // ignore: cast_nullable_to_non_nullable
              as List<GetAnimalsByLocationDetailsResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetAnimalsByLocationResponse extends _GetAnimalsByLocationResponse {
  _$_GetAnimalsByLocationResponse({@JsonKey(name: "animals") this.animals})
      : super._();

  factory _$_GetAnimalsByLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetAnimalsByLocationResponseFromJson(json);

  @override
  @JsonKey(name: "animals")
  final List<GetAnimalsByLocationDetailsResponse>? animals;

  @override
  String toString() {
    return 'GetAnimalsByLocationResponse(animals: $animals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAnimalsByLocationResponse &&
            const DeepCollectionEquality().equals(other.animals, animals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(animals));

  @JsonKey(ignore: true)
  @override
  _$GetAnimalsByLocationResponseCopyWith<_GetAnimalsByLocationResponse>
      get copyWith => __$GetAnimalsByLocationResponseCopyWithImpl<
          _GetAnimalsByLocationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetAnimalsByLocationResponseToJson(this);
  }
}

abstract class _GetAnimalsByLocationResponse
    extends GetAnimalsByLocationResponse {
  factory _GetAnimalsByLocationResponse(
          {@JsonKey(name: "animals")
              List<GetAnimalsByLocationDetailsResponse>? animals}) =
      _$_GetAnimalsByLocationResponse;
  _GetAnimalsByLocationResponse._() : super._();

  factory _GetAnimalsByLocationResponse.fromJson(Map<String, dynamic> json) =
      _$_GetAnimalsByLocationResponse.fromJson;

  @override
  @JsonKey(name: "animals")
  List<GetAnimalsByLocationDetailsResponse>? get animals;
  @override
  @JsonKey(ignore: true)
  _$GetAnimalsByLocationResponseCopyWith<_GetAnimalsByLocationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetAnimalsByLocationDetailsResponse
    _$GetAnimalsByLocationDetailsResponseFromJson(Map<String, dynamic> json) {
  return _GetAnimalsByLocationDetailsResponse.fromJson(json);
}

/// @nodoc
class _$GetAnimalsByLocationDetailsResponseTearOff {
  const _$GetAnimalsByLocationDetailsResponseTearOff();

  _GetAnimalsByLocationDetailsResponse call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "location") LatLongResponse? location,
      @JsonKey(name: "guardians") List<GuardianResponse>? guardians,
      @JsonKey(name: "distance") int? distance}) {
    return _GetAnimalsByLocationDetailsResponse(
      Id: Id,
      name: name,
      username: username,
      avatar: avatar,
      location: location,
      guardians: guardians,
      distance: distance,
    );
  }

  GetAnimalsByLocationDetailsResponse fromJson(Map<String, Object?> json) {
    return GetAnimalsByLocationDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetAnimalsByLocationDetailsResponse =
    _$GetAnimalsByLocationDetailsResponseTearOff();

/// @nodoc
mixin _$GetAnimalsByLocationDetailsResponse {
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  LatLongResponse? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "guardians")
  List<GuardianResponse>? get guardians => throw _privateConstructorUsedError;
  @JsonKey(name: "distance")
  int? get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAnimalsByLocationDetailsResponseCopyWith<
          GetAnimalsByLocationDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAnimalsByLocationDetailsResponseCopyWith<$Res> {
  factory $GetAnimalsByLocationDetailsResponseCopyWith(
          GetAnimalsByLocationDetailsResponse value,
          $Res Function(GetAnimalsByLocationDetailsResponse) then) =
      _$GetAnimalsByLocationDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "location") LatLongResponse? location,
      @JsonKey(name: "guardians") List<GuardianResponse>? guardians,
      @JsonKey(name: "distance") int? distance});

  $LatLongResponseCopyWith<$Res>? get location;
}

/// @nodoc
class _$GetAnimalsByLocationDetailsResponseCopyWithImpl<$Res>
    implements $GetAnimalsByLocationDetailsResponseCopyWith<$Res> {
  _$GetAnimalsByLocationDetailsResponseCopyWithImpl(this._value, this._then);

  final GetAnimalsByLocationDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(GetAnimalsByLocationDetailsResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? location = freezed,
    Object? guardians = freezed,
    Object? distance = freezed,
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
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLongResponse?,
      guardians: guardians == freezed
          ? _value.guardians
          : guardians // ignore: cast_nullable_to_non_nullable
              as List<GuardianResponse>?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $LatLongResponseCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LatLongResponseCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$GetAnimalsByLocationDetailsResponseCopyWith<$Res>
    implements $GetAnimalsByLocationDetailsResponseCopyWith<$Res> {
  factory _$GetAnimalsByLocationDetailsResponseCopyWith(
          _GetAnimalsByLocationDetailsResponse value,
          $Res Function(_GetAnimalsByLocationDetailsResponse) then) =
      __$GetAnimalsByLocationDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "location") LatLongResponse? location,
      @JsonKey(name: "guardians") List<GuardianResponse>? guardians,
      @JsonKey(name: "distance") int? distance});

  @override
  $LatLongResponseCopyWith<$Res>? get location;
}

/// @nodoc
class __$GetAnimalsByLocationDetailsResponseCopyWithImpl<$Res>
    extends _$GetAnimalsByLocationDetailsResponseCopyWithImpl<$Res>
    implements _$GetAnimalsByLocationDetailsResponseCopyWith<$Res> {
  __$GetAnimalsByLocationDetailsResponseCopyWithImpl(
      _GetAnimalsByLocationDetailsResponse _value,
      $Res Function(_GetAnimalsByLocationDetailsResponse) _then)
      : super(_value, (v) => _then(v as _GetAnimalsByLocationDetailsResponse));

  @override
  _GetAnimalsByLocationDetailsResponse get _value =>
      super._value as _GetAnimalsByLocationDetailsResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? location = freezed,
    Object? guardians = freezed,
    Object? distance = freezed,
  }) {
    return _then(_GetAnimalsByLocationDetailsResponse(
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
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLongResponse?,
      guardians: guardians == freezed
          ? _value.guardians
          : guardians // ignore: cast_nullable_to_non_nullable
              as List<GuardianResponse>?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetAnimalsByLocationDetailsResponse
    extends _GetAnimalsByLocationDetailsResponse {
  _$_GetAnimalsByLocationDetailsResponse(
      {@JsonKey(name: "_id") this.Id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "avatar") this.avatar,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "guardians") this.guardians,
      @JsonKey(name: "distance") this.distance})
      : super._();

  factory _$_GetAnimalsByLocationDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetAnimalsByLocationDetailsResponseFromJson(json);

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
  @JsonKey(name: "location")
  final LatLongResponse? location;
  @override
  @JsonKey(name: "guardians")
  final List<GuardianResponse>? guardians;
  @override
  @JsonKey(name: "distance")
  final int? distance;

  @override
  String toString() {
    return 'GetAnimalsByLocationDetailsResponse(Id: $Id, name: $name, username: $username, avatar: $avatar, location: $location, guardians: $guardians, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAnimalsByLocationDetailsResponse &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other.guardians, guardians) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Id, name, username, avatar,
      location, const DeepCollectionEquality().hash(guardians), distance);

  @JsonKey(ignore: true)
  @override
  _$GetAnimalsByLocationDetailsResponseCopyWith<
          _GetAnimalsByLocationDetailsResponse>
      get copyWith => __$GetAnimalsByLocationDetailsResponseCopyWithImpl<
          _GetAnimalsByLocationDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetAnimalsByLocationDetailsResponseToJson(this);
  }
}

abstract class _GetAnimalsByLocationDetailsResponse
    extends GetAnimalsByLocationDetailsResponse {
  factory _GetAnimalsByLocationDetailsResponse(
          {@JsonKey(name: "_id") String? Id,
          @JsonKey(name: "name") String? name,
          @JsonKey(name: "username") String? username,
          @JsonKey(name: "avatar") String? avatar,
          @JsonKey(name: "location") LatLongResponse? location,
          @JsonKey(name: "guardians") List<GuardianResponse>? guardians,
          @JsonKey(name: "distance") int? distance}) =
      _$_GetAnimalsByLocationDetailsResponse;
  _GetAnimalsByLocationDetailsResponse._() : super._();

  factory _GetAnimalsByLocationDetailsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_GetAnimalsByLocationDetailsResponse.fromJson;

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
  @JsonKey(name: "location")
  LatLongResponse? get location;
  @override
  @JsonKey(name: "guardians")
  List<GuardianResponse>? get guardians;
  @override
  @JsonKey(name: "distance")
  int? get distance;
  @override
  @JsonKey(ignore: true)
  _$GetAnimalsByLocationDetailsResponseCopyWith<
          _GetAnimalsByLocationDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
