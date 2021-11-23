// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'animal_profile_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimalProfileDetailModelResponse _$AnimalProfileDetailModelResponseFromJson(
    Map<String, dynamic> json) {
  return _AnimalProfileDetailModelResponse.fromJson(json);
}

/// @nodoc
class _$AnimalProfileDetailModelResponseTearOff {
  const _$AnimalProfileDetailModelResponseTearOff();

  _AnimalProfileDetailModelResponse call(
      {@JsonKey(name: "pet") MyAnimalModelResponse? animalprofileModel}) {
    return _AnimalProfileDetailModelResponse(
      animalprofileModel: animalprofileModel,
    );
  }

  AnimalProfileDetailModelResponse fromJson(Map<String, Object?> json) {
    return AnimalProfileDetailModelResponse.fromJson(json);
  }
}

/// @nodoc
const $AnimalProfileDetailModelResponse =
    _$AnimalProfileDetailModelResponseTearOff();

/// @nodoc
mixin _$AnimalProfileDetailModelResponse {
  @JsonKey(name: "pet")
  MyAnimalModelResponse? get animalprofileModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimalProfileDetailModelResponseCopyWith<AnimalProfileDetailModelResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalProfileDetailModelResponseCopyWith<$Res> {
  factory $AnimalProfileDetailModelResponseCopyWith(
          AnimalProfileDetailModelResponse value,
          $Res Function(AnimalProfileDetailModelResponse) then) =
      _$AnimalProfileDetailModelResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "pet") MyAnimalModelResponse? animalprofileModel});

  $MyAnimalModelResponseCopyWith<$Res>? get animalprofileModel;
}

/// @nodoc
class _$AnimalProfileDetailModelResponseCopyWithImpl<$Res>
    implements $AnimalProfileDetailModelResponseCopyWith<$Res> {
  _$AnimalProfileDetailModelResponseCopyWithImpl(this._value, this._then);

  final AnimalProfileDetailModelResponse _value;
  // ignore: unused_field
  final $Res Function(AnimalProfileDetailModelResponse) _then;

  @override
  $Res call({
    Object? animalprofileModel = freezed,
  }) {
    return _then(_value.copyWith(
      animalprofileModel: animalprofileModel == freezed
          ? _value.animalprofileModel
          : animalprofileModel // ignore: cast_nullable_to_non_nullable
              as MyAnimalModelResponse?,
    ));
  }

  @override
  $MyAnimalModelResponseCopyWith<$Res>? get animalprofileModel {
    if (_value.animalprofileModel == null) {
      return null;
    }

    return $MyAnimalModelResponseCopyWith<$Res>(_value.animalprofileModel!,
        (value) {
      return _then(_value.copyWith(animalprofileModel: value));
    });
  }
}

/// @nodoc
abstract class _$AnimalProfileDetailModelResponseCopyWith<$Res>
    implements $AnimalProfileDetailModelResponseCopyWith<$Res> {
  factory _$AnimalProfileDetailModelResponseCopyWith(
          _AnimalProfileDetailModelResponse value,
          $Res Function(_AnimalProfileDetailModelResponse) then) =
      __$AnimalProfileDetailModelResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "pet") MyAnimalModelResponse? animalprofileModel});

  @override
  $MyAnimalModelResponseCopyWith<$Res>? get animalprofileModel;
}

/// @nodoc
class __$AnimalProfileDetailModelResponseCopyWithImpl<$Res>
    extends _$AnimalProfileDetailModelResponseCopyWithImpl<$Res>
    implements _$AnimalProfileDetailModelResponseCopyWith<$Res> {
  __$AnimalProfileDetailModelResponseCopyWithImpl(
      _AnimalProfileDetailModelResponse _value,
      $Res Function(_AnimalProfileDetailModelResponse) _then)
      : super(_value, (v) => _then(v as _AnimalProfileDetailModelResponse));

  @override
  _AnimalProfileDetailModelResponse get _value =>
      super._value as _AnimalProfileDetailModelResponse;

  @override
  $Res call({
    Object? animalprofileModel = freezed,
  }) {
    return _then(_AnimalProfileDetailModelResponse(
      animalprofileModel: animalprofileModel == freezed
          ? _value.animalprofileModel
          : animalprofileModel // ignore: cast_nullable_to_non_nullable
              as MyAnimalModelResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimalProfileDetailModelResponse
    extends _AnimalProfileDetailModelResponse {
  _$_AnimalProfileDetailModelResponse(
      {@JsonKey(name: "pet") this.animalprofileModel})
      : super._();

  factory _$_AnimalProfileDetailModelResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_AnimalProfileDetailModelResponseFromJson(json);

  @override
  @JsonKey(name: "pet")
  final MyAnimalModelResponse? animalprofileModel;

  @override
  String toString() {
    return 'AnimalProfileDetailModelResponse(animalprofileModel: $animalprofileModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimalProfileDetailModelResponse &&
            (identical(other.animalprofileModel, animalprofileModel) ||
                other.animalprofileModel == animalprofileModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, animalprofileModel);

  @JsonKey(ignore: true)
  @override
  _$AnimalProfileDetailModelResponseCopyWith<_AnimalProfileDetailModelResponse>
      get copyWith => __$AnimalProfileDetailModelResponseCopyWithImpl<
          _AnimalProfileDetailModelResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimalProfileDetailModelResponseToJson(this);
  }
}

abstract class _AnimalProfileDetailModelResponse
    extends AnimalProfileDetailModelResponse {
  factory _AnimalProfileDetailModelResponse(
          {@JsonKey(name: "pet") MyAnimalModelResponse? animalprofileModel}) =
      _$_AnimalProfileDetailModelResponse;
  _AnimalProfileDetailModelResponse._() : super._();

  factory _AnimalProfileDetailModelResponse.fromJson(
      Map<String, dynamic> json) = _$_AnimalProfileDetailModelResponse.fromJson;

  @override
  @JsonKey(name: "pet")
  MyAnimalModelResponse? get animalprofileModel;
  @override
  @JsonKey(ignore: true)
  _$AnimalProfileDetailModelResponseCopyWith<_AnimalProfileDetailModelResponse>
      get copyWith => throw _privateConstructorUsedError;
}
