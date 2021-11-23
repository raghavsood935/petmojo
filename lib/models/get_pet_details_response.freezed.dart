// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_pet_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPetDetailsResponse _$GetPetDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetPetDetailsResponse.fromJson(json);
}

/// @nodoc
class _$GetPetDetailsResponseTearOff {
  const _$GetPetDetailsResponseTearOff();

  _GetPetDetailsResponse call(
      {@JsonKey(name: "pets") List<PetDetailsResponse>? pets}) {
    return _GetPetDetailsResponse(
      pets: pets,
    );
  }

  GetPetDetailsResponse fromJson(Map<String, Object?> json) {
    return GetPetDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetPetDetailsResponse = _$GetPetDetailsResponseTearOff();

/// @nodoc
mixin _$GetPetDetailsResponse {
  @JsonKey(name: "pets")
  List<PetDetailsResponse>? get pets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPetDetailsResponseCopyWith<GetPetDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPetDetailsResponseCopyWith<$Res> {
  factory $GetPetDetailsResponseCopyWith(GetPetDetailsResponse value,
          $Res Function(GetPetDetailsResponse) then) =
      _$GetPetDetailsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "pets") List<PetDetailsResponse>? pets});
}

/// @nodoc
class _$GetPetDetailsResponseCopyWithImpl<$Res>
    implements $GetPetDetailsResponseCopyWith<$Res> {
  _$GetPetDetailsResponseCopyWithImpl(this._value, this._then);

  final GetPetDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(GetPetDetailsResponse) _then;

  @override
  $Res call({
    Object? pets = freezed,
  }) {
    return _then(_value.copyWith(
      pets: pets == freezed
          ? _value.pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<PetDetailsResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$GetPetDetailsResponseCopyWith<$Res>
    implements $GetPetDetailsResponseCopyWith<$Res> {
  factory _$GetPetDetailsResponseCopyWith(_GetPetDetailsResponse value,
          $Res Function(_GetPetDetailsResponse) then) =
      __$GetPetDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "pets") List<PetDetailsResponse>? pets});
}

/// @nodoc
class __$GetPetDetailsResponseCopyWithImpl<$Res>
    extends _$GetPetDetailsResponseCopyWithImpl<$Res>
    implements _$GetPetDetailsResponseCopyWith<$Res> {
  __$GetPetDetailsResponseCopyWithImpl(_GetPetDetailsResponse _value,
      $Res Function(_GetPetDetailsResponse) _then)
      : super(_value, (v) => _then(v as _GetPetDetailsResponse));

  @override
  _GetPetDetailsResponse get _value => super._value as _GetPetDetailsResponse;

  @override
  $Res call({
    Object? pets = freezed,
  }) {
    return _then(_GetPetDetailsResponse(
      pets: pets == freezed
          ? _value.pets
          : pets // ignore: cast_nullable_to_non_nullable
              as List<PetDetailsResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPetDetailsResponse extends _GetPetDetailsResponse {
  _$_GetPetDetailsResponse({@JsonKey(name: "pets") this.pets}) : super._();

  factory _$_GetPetDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetPetDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "pets")
  final List<PetDetailsResponse>? pets;

  @override
  String toString() {
    return 'GetPetDetailsResponse(pets: $pets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetPetDetailsResponse &&
            const DeepCollectionEquality().equals(other.pets, pets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pets));

  @JsonKey(ignore: true)
  @override
  _$GetPetDetailsResponseCopyWith<_GetPetDetailsResponse> get copyWith =>
      __$GetPetDetailsResponseCopyWithImpl<_GetPetDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPetDetailsResponseToJson(this);
  }
}

abstract class _GetPetDetailsResponse extends GetPetDetailsResponse {
  factory _GetPetDetailsResponse(
          {@JsonKey(name: "pets") List<PetDetailsResponse>? pets}) =
      _$_GetPetDetailsResponse;
  _GetPetDetailsResponse._() : super._();

  factory _GetPetDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetPetDetailsResponse.fromJson;

  @override
  @JsonKey(name: "pets")
  List<PetDetailsResponse>? get pets;
  @override
  @JsonKey(ignore: true)
  _$GetPetDetailsResponseCopyWith<_GetPetDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PetDetailsResponse _$PetDetailsResponseFromJson(Map<String, dynamic> json) {
  return _PetDetailsResponse.fromJson(json);
}

/// @nodoc
class _$PetDetailsResponseTearOff {
  const _$PetDetailsResponseTearOff();

  _PetDetailsResponse call({@JsonKey(name: "pet") PetInfoResponse? pet}) {
    return _PetDetailsResponse(
      pet: pet,
    );
  }

  PetDetailsResponse fromJson(Map<String, Object?> json) {
    return PetDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $PetDetailsResponse = _$PetDetailsResponseTearOff();

/// @nodoc
mixin _$PetDetailsResponse {
  @JsonKey(name: "pet")
  PetInfoResponse? get pet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetDetailsResponseCopyWith<PetDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetDetailsResponseCopyWith<$Res> {
  factory $PetDetailsResponseCopyWith(
          PetDetailsResponse value, $Res Function(PetDetailsResponse) then) =
      _$PetDetailsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "pet") PetInfoResponse? pet});

  $PetInfoResponseCopyWith<$Res>? get pet;
}

/// @nodoc
class _$PetDetailsResponseCopyWithImpl<$Res>
    implements $PetDetailsResponseCopyWith<$Res> {
  _$PetDetailsResponseCopyWithImpl(this._value, this._then);

  final PetDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(PetDetailsResponse) _then;

  @override
  $Res call({
    Object? pet = freezed,
  }) {
    return _then(_value.copyWith(
      pet: pet == freezed
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as PetInfoResponse?,
    ));
  }

  @override
  $PetInfoResponseCopyWith<$Res>? get pet {
    if (_value.pet == null) {
      return null;
    }

    return $PetInfoResponseCopyWith<$Res>(_value.pet!, (value) {
      return _then(_value.copyWith(pet: value));
    });
  }
}

/// @nodoc
abstract class _$PetDetailsResponseCopyWith<$Res>
    implements $PetDetailsResponseCopyWith<$Res> {
  factory _$PetDetailsResponseCopyWith(
          _PetDetailsResponse value, $Res Function(_PetDetailsResponse) then) =
      __$PetDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "pet") PetInfoResponse? pet});

  @override
  $PetInfoResponseCopyWith<$Res>? get pet;
}

/// @nodoc
class __$PetDetailsResponseCopyWithImpl<$Res>
    extends _$PetDetailsResponseCopyWithImpl<$Res>
    implements _$PetDetailsResponseCopyWith<$Res> {
  __$PetDetailsResponseCopyWithImpl(
      _PetDetailsResponse _value, $Res Function(_PetDetailsResponse) _then)
      : super(_value, (v) => _then(v as _PetDetailsResponse));

  @override
  _PetDetailsResponse get _value => super._value as _PetDetailsResponse;

  @override
  $Res call({
    Object? pet = freezed,
  }) {
    return _then(_PetDetailsResponse(
      pet: pet == freezed
          ? _value.pet
          : pet // ignore: cast_nullable_to_non_nullable
              as PetInfoResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetDetailsResponse extends _PetDetailsResponse {
  _$_PetDetailsResponse({@JsonKey(name: "pet") this.pet}) : super._();

  factory _$_PetDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PetDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "pet")
  final PetInfoResponse? pet;

  @override
  String toString() {
    return 'PetDetailsResponse(pet: $pet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PetDetailsResponse &&
            (identical(other.pet, pet) || other.pet == pet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pet);

  @JsonKey(ignore: true)
  @override
  _$PetDetailsResponseCopyWith<_PetDetailsResponse> get copyWith =>
      __$PetDetailsResponseCopyWithImpl<_PetDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetDetailsResponseToJson(this);
  }
}

abstract class _PetDetailsResponse extends PetDetailsResponse {
  factory _PetDetailsResponse({@JsonKey(name: "pet") PetInfoResponse? pet}) =
      _$_PetDetailsResponse;
  _PetDetailsResponse._() : super._();

  factory _PetDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_PetDetailsResponse.fromJson;

  @override
  @JsonKey(name: "pet")
  PetInfoResponse? get pet;
  @override
  @JsonKey(ignore: true)
  _$PetDetailsResponseCopyWith<_PetDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PetInfoResponse _$PetInfoResponseFromJson(Map<String, dynamic> json) {
  return _PetInfoResponse.fromJson(json);
}

/// @nodoc
class _$PetInfoResponseTearOff {
  const _$PetInfoResponseTearOff();

  _PetInfoResponse call(
      {@JsonKey(name: "_id") String? petId,
      @JsonKey(name: "name") String? petName,
      @JsonKey(name: "username") String? petUserName}) {
    return _PetInfoResponse(
      petId: petId,
      petName: petName,
      petUserName: petUserName,
    );
  }

  PetInfoResponse fromJson(Map<String, Object?> json) {
    return PetInfoResponse.fromJson(json);
  }
}

/// @nodoc
const $PetInfoResponse = _$PetInfoResponseTearOff();

/// @nodoc
mixin _$PetInfoResponse {
  @JsonKey(name: "_id")
  String? get petId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get petName => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get petUserName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetInfoResponseCopyWith<PetInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetInfoResponseCopyWith<$Res> {
  factory $PetInfoResponseCopyWith(
          PetInfoResponse value, $Res Function(PetInfoResponse) then) =
      _$PetInfoResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? petId,
      @JsonKey(name: "name") String? petName,
      @JsonKey(name: "username") String? petUserName});
}

/// @nodoc
class _$PetInfoResponseCopyWithImpl<$Res>
    implements $PetInfoResponseCopyWith<$Res> {
  _$PetInfoResponseCopyWithImpl(this._value, this._then);

  final PetInfoResponse _value;
  // ignore: unused_field
  final $Res Function(PetInfoResponse) _then;

  @override
  $Res call({
    Object? petId = freezed,
    Object? petName = freezed,
    Object? petUserName = freezed,
  }) {
    return _then(_value.copyWith(
      petId: petId == freezed
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as String?,
      petName: petName == freezed
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String?,
      petUserName: petUserName == freezed
          ? _value.petUserName
          : petUserName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PetInfoResponseCopyWith<$Res>
    implements $PetInfoResponseCopyWith<$Res> {
  factory _$PetInfoResponseCopyWith(
          _PetInfoResponse value, $Res Function(_PetInfoResponse) then) =
      __$PetInfoResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? petId,
      @JsonKey(name: "name") String? petName,
      @JsonKey(name: "username") String? petUserName});
}

/// @nodoc
class __$PetInfoResponseCopyWithImpl<$Res>
    extends _$PetInfoResponseCopyWithImpl<$Res>
    implements _$PetInfoResponseCopyWith<$Res> {
  __$PetInfoResponseCopyWithImpl(
      _PetInfoResponse _value, $Res Function(_PetInfoResponse) _then)
      : super(_value, (v) => _then(v as _PetInfoResponse));

  @override
  _PetInfoResponse get _value => super._value as _PetInfoResponse;

  @override
  $Res call({
    Object? petId = freezed,
    Object? petName = freezed,
    Object? petUserName = freezed,
  }) {
    return _then(_PetInfoResponse(
      petId: petId == freezed
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as String?,
      petName: petName == freezed
          ? _value.petName
          : petName // ignore: cast_nullable_to_non_nullable
              as String?,
      petUserName: petUserName == freezed
          ? _value.petUserName
          : petUserName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetInfoResponse extends _PetInfoResponse {
  _$_PetInfoResponse(
      {@JsonKey(name: "_id") this.petId,
      @JsonKey(name: "name") this.petName,
      @JsonKey(name: "username") this.petUserName})
      : super._();

  factory _$_PetInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PetInfoResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? petId;
  @override
  @JsonKey(name: "name")
  final String? petName;
  @override
  @JsonKey(name: "username")
  final String? petUserName;

  @override
  String toString() {
    return 'PetInfoResponse(petId: $petId, petName: $petName, petUserName: $petUserName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PetInfoResponse &&
            (identical(other.petId, petId) || other.petId == petId) &&
            (identical(other.petName, petName) || other.petName == petName) &&
            (identical(other.petUserName, petUserName) ||
                other.petUserName == petUserName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, petId, petName, petUserName);

  @JsonKey(ignore: true)
  @override
  _$PetInfoResponseCopyWith<_PetInfoResponse> get copyWith =>
      __$PetInfoResponseCopyWithImpl<_PetInfoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetInfoResponseToJson(this);
  }
}

abstract class _PetInfoResponse extends PetInfoResponse {
  factory _PetInfoResponse(
      {@JsonKey(name: "_id") String? petId,
      @JsonKey(name: "name") String? petName,
      @JsonKey(name: "username") String? petUserName}) = _$_PetInfoResponse;
  _PetInfoResponse._() : super._();

  factory _PetInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_PetInfoResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get petId;
  @override
  @JsonKey(name: "name")
  String? get petName;
  @override
  @JsonKey(name: "username")
  String? get petUserName;
  @override
  @JsonKey(ignore: true)
  _$PetInfoResponseCopyWith<_PetInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
