// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pet_basic_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetBasicDetailsResponse _$PetBasicDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _PetBasicDetailsResponse.fromJson(json);
}

/// @nodoc
class _$PetBasicDetailsResponseTearOff {
  const _$PetBasicDetailsResponseTearOff();

  _PetBasicDetailsResponse call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "pet") PetBasicInnerDetailsResponse? detailsResponse}) {
    return _PetBasicDetailsResponse(
      confirmed: confirmed,
      Id: Id,
      detailsResponse: detailsResponse,
    );
  }

  PetBasicDetailsResponse fromJson(Map<String, Object?> json) {
    return PetBasicDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $PetBasicDetailsResponse = _$PetBasicDetailsResponseTearOff();

/// @nodoc
mixin _$PetBasicDetailsResponse {
  @JsonKey(name: "confirmed")
  bool? get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "pet")
  PetBasicInnerDetailsResponse? get detailsResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetBasicDetailsResponseCopyWith<PetBasicDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetBasicDetailsResponseCopyWith<$Res> {
  factory $PetBasicDetailsResponseCopyWith(PetBasicDetailsResponse value,
          $Res Function(PetBasicDetailsResponse) then) =
      _$PetBasicDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "pet") PetBasicInnerDetailsResponse? detailsResponse});

  $PetBasicInnerDetailsResponseCopyWith<$Res>? get detailsResponse;
}

/// @nodoc
class _$PetBasicDetailsResponseCopyWithImpl<$Res>
    implements $PetBasicDetailsResponseCopyWith<$Res> {
  _$PetBasicDetailsResponseCopyWithImpl(this._value, this._then);

  final PetBasicDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(PetBasicDetailsResponse) _then;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? Id = freezed,
    Object? detailsResponse = freezed,
  }) {
    return _then(_value.copyWith(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      detailsResponse: detailsResponse == freezed
          ? _value.detailsResponse
          : detailsResponse // ignore: cast_nullable_to_non_nullable
              as PetBasicInnerDetailsResponse?,
    ));
  }

  @override
  $PetBasicInnerDetailsResponseCopyWith<$Res>? get detailsResponse {
    if (_value.detailsResponse == null) {
      return null;
    }

    return $PetBasicInnerDetailsResponseCopyWith<$Res>(_value.detailsResponse!,
        (value) {
      return _then(_value.copyWith(detailsResponse: value));
    });
  }
}

/// @nodoc
abstract class _$PetBasicDetailsResponseCopyWith<$Res>
    implements $PetBasicDetailsResponseCopyWith<$Res> {
  factory _$PetBasicDetailsResponseCopyWith(_PetBasicDetailsResponse value,
          $Res Function(_PetBasicDetailsResponse) then) =
      __$PetBasicDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "pet") PetBasicInnerDetailsResponse? detailsResponse});

  @override
  $PetBasicInnerDetailsResponseCopyWith<$Res>? get detailsResponse;
}

/// @nodoc
class __$PetBasicDetailsResponseCopyWithImpl<$Res>
    extends _$PetBasicDetailsResponseCopyWithImpl<$Res>
    implements _$PetBasicDetailsResponseCopyWith<$Res> {
  __$PetBasicDetailsResponseCopyWithImpl(_PetBasicDetailsResponse _value,
      $Res Function(_PetBasicDetailsResponse) _then)
      : super(_value, (v) => _then(v as _PetBasicDetailsResponse));

  @override
  _PetBasicDetailsResponse get _value =>
      super._value as _PetBasicDetailsResponse;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? Id = freezed,
    Object? detailsResponse = freezed,
  }) {
    return _then(_PetBasicDetailsResponse(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      detailsResponse: detailsResponse == freezed
          ? _value.detailsResponse
          : detailsResponse // ignore: cast_nullable_to_non_nullable
              as PetBasicInnerDetailsResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetBasicDetailsResponse extends _PetBasicDetailsResponse {
  _$_PetBasicDetailsResponse(
      {@JsonKey(name: "confirmed") this.confirmed,
      @JsonKey(name: "_id") this.Id,
      @JsonKey(name: "pet") this.detailsResponse})
      : super._();

  factory _$_PetBasicDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PetBasicDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "confirmed")
  final bool? confirmed;
  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "pet")
  final PetBasicInnerDetailsResponse? detailsResponse;

  @override
  String toString() {
    return 'PetBasicDetailsResponse(confirmed: $confirmed, Id: $Id, detailsResponse: $detailsResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PetBasicDetailsResponse &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.detailsResponse, detailsResponse) ||
                other.detailsResponse == detailsResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmed, Id, detailsResponse);

  @JsonKey(ignore: true)
  @override
  _$PetBasicDetailsResponseCopyWith<_PetBasicDetailsResponse> get copyWith =>
      __$PetBasicDetailsResponseCopyWithImpl<_PetBasicDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetBasicDetailsResponseToJson(this);
  }
}

abstract class _PetBasicDetailsResponse extends PetBasicDetailsResponse {
  factory _PetBasicDetailsResponse(
          {@JsonKey(name: "confirmed")
              bool? confirmed,
          @JsonKey(name: "_id")
              String? Id,
          @JsonKey(name: "pet")
              PetBasicInnerDetailsResponse? detailsResponse}) =
      _$_PetBasicDetailsResponse;
  _PetBasicDetailsResponse._() : super._();

  factory _PetBasicDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_PetBasicDetailsResponse.fromJson;

  @override
  @JsonKey(name: "confirmed")
  bool? get confirmed;
  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "pet")
  PetBasicInnerDetailsResponse? get detailsResponse;
  @override
  @JsonKey(ignore: true)
  _$PetBasicDetailsResponseCopyWith<_PetBasicDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PetBasicInnerDetailsResponse _$PetBasicInnerDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _PetBasicInnerDetailsResponse.fromJson(json);
}

/// @nodoc
class _$PetBasicInnerDetailsResponseTearOff {
  const _$PetBasicInnerDetailsResponseTearOff();

  _PetBasicInnerDetailsResponse call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "category") String? token}) {
    return _PetBasicInnerDetailsResponse(
      name: name,
      Id: Id,
      avatar: avatar,
      token: token,
    );
  }

  PetBasicInnerDetailsResponse fromJson(Map<String, Object?> json) {
    return PetBasicInnerDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $PetBasicInnerDetailsResponse = _$PetBasicInnerDetailsResponseTearOff();

/// @nodoc
mixin _$PetBasicInnerDetailsResponse {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetBasicInnerDetailsResponseCopyWith<PetBasicInnerDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetBasicInnerDetailsResponseCopyWith<$Res> {
  factory $PetBasicInnerDetailsResponseCopyWith(
          PetBasicInnerDetailsResponse value,
          $Res Function(PetBasicInnerDetailsResponse) then) =
      _$PetBasicInnerDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "category") String? token});
}

/// @nodoc
class _$PetBasicInnerDetailsResponseCopyWithImpl<$Res>
    implements $PetBasicInnerDetailsResponseCopyWith<$Res> {
  _$PetBasicInnerDetailsResponseCopyWithImpl(this._value, this._then);

  final PetBasicInnerDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(PetBasicInnerDetailsResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? Id = freezed,
    Object? avatar = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PetBasicInnerDetailsResponseCopyWith<$Res>
    implements $PetBasicInnerDetailsResponseCopyWith<$Res> {
  factory _$PetBasicInnerDetailsResponseCopyWith(
          _PetBasicInnerDetailsResponse value,
          $Res Function(_PetBasicInnerDetailsResponse) then) =
      __$PetBasicInnerDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "category") String? token});
}

/// @nodoc
class __$PetBasicInnerDetailsResponseCopyWithImpl<$Res>
    extends _$PetBasicInnerDetailsResponseCopyWithImpl<$Res>
    implements _$PetBasicInnerDetailsResponseCopyWith<$Res> {
  __$PetBasicInnerDetailsResponseCopyWithImpl(
      _PetBasicInnerDetailsResponse _value,
      $Res Function(_PetBasicInnerDetailsResponse) _then)
      : super(_value, (v) => _then(v as _PetBasicInnerDetailsResponse));

  @override
  _PetBasicInnerDetailsResponse get _value =>
      super._value as _PetBasicInnerDetailsResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? Id = freezed,
    Object? avatar = freezed,
    Object? token = freezed,
  }) {
    return _then(_PetBasicInnerDetailsResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetBasicInnerDetailsResponse extends _PetBasicInnerDetailsResponse {
  _$_PetBasicInnerDetailsResponse(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "_id") this.Id,
      @JsonKey(name: "avatar") this.avatar,
      @JsonKey(name: "category") this.token})
      : super._();

  factory _$_PetBasicInnerDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PetBasicInnerDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;
  @override
  @JsonKey(name: "category")
  final String? token;

  @override
  String toString() {
    return 'PetBasicInnerDetailsResponse(name: $name, Id: $Id, avatar: $avatar, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PetBasicInnerDetailsResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, Id, avatar, token);

  @JsonKey(ignore: true)
  @override
  _$PetBasicInnerDetailsResponseCopyWith<_PetBasicInnerDetailsResponse>
      get copyWith => __$PetBasicInnerDetailsResponseCopyWithImpl<
          _PetBasicInnerDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetBasicInnerDetailsResponseToJson(this);
  }
}

abstract class _PetBasicInnerDetailsResponse
    extends PetBasicInnerDetailsResponse {
  factory _PetBasicInnerDetailsResponse(
          {@JsonKey(name: "name") String? name,
          @JsonKey(name: "_id") String? Id,
          @JsonKey(name: "avatar") String? avatar,
          @JsonKey(name: "category") String? token}) =
      _$_PetBasicInnerDetailsResponse;
  _PetBasicInnerDetailsResponse._() : super._();

  factory _PetBasicInnerDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_PetBasicInnerDetailsResponse.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(name: "category")
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$PetBasicInnerDetailsResponseCopyWith<_PetBasicInnerDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
