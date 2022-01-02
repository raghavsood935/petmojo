// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_resopnse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LatLongResponse _$LatLongResponseFromJson(Map<String, dynamic> json) {
  return _LatLongResponse.fromJson(json);
}

/// @nodoc
class _$LatLongResponseTearOff {
  const _$LatLongResponseTearOff();

  _LatLongResponse call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "coordinates") List<double>? coordinates}) {
    return _LatLongResponse(
      type: type,
      coordinates: coordinates,
    );
  }

  LatLongResponse fromJson(Map<String, Object?> json) {
    return LatLongResponse.fromJson(json);
  }
}

/// @nodoc
const $LatLongResponse = _$LatLongResponseTearOff();

/// @nodoc
mixin _$LatLongResponse {
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "coordinates")
  List<double>? get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLongResponseCopyWith<LatLongResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLongResponseCopyWith<$Res> {
  factory $LatLongResponseCopyWith(
          LatLongResponse value, $Res Function(LatLongResponse) then) =
      _$LatLongResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "coordinates") List<double>? coordinates});
}

/// @nodoc
class _$LatLongResponseCopyWithImpl<$Res>
    implements $LatLongResponseCopyWith<$Res> {
  _$LatLongResponseCopyWithImpl(this._value, this._then);

  final LatLongResponse _value;
  // ignore: unused_field
  final $Res Function(LatLongResponse) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
abstract class _$LatLongResponseCopyWith<$Res>
    implements $LatLongResponseCopyWith<$Res> {
  factory _$LatLongResponseCopyWith(
          _LatLongResponse value, $Res Function(_LatLongResponse) then) =
      __$LatLongResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "coordinates") List<double>? coordinates});
}

/// @nodoc
class __$LatLongResponseCopyWithImpl<$Res>
    extends _$LatLongResponseCopyWithImpl<$Res>
    implements _$LatLongResponseCopyWith<$Res> {
  __$LatLongResponseCopyWithImpl(
      _LatLongResponse _value, $Res Function(_LatLongResponse) _then)
      : super(_value, (v) => _then(v as _LatLongResponse));

  @override
  _LatLongResponse get _value => super._value as _LatLongResponse;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_LatLongResponse(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LatLongResponse extends _LatLongResponse {
  _$_LatLongResponse(
      {@JsonKey(name: "type") this.type,
      @JsonKey(name: "coordinates") this.coordinates})
      : super._();

  factory _$_LatLongResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LatLongResponseFromJson(json);

  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "coordinates")
  final List<double>? coordinates;

  @override
  String toString() {
    return 'LatLongResponse(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LatLongResponse &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.coordinates, coordinates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(coordinates));

  @JsonKey(ignore: true)
  @override
  _$LatLongResponseCopyWith<_LatLongResponse> get copyWith =>
      __$LatLongResponseCopyWithImpl<_LatLongResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatLongResponseToJson(this);
  }
}

abstract class _LatLongResponse extends LatLongResponse {
  factory _LatLongResponse(
          {@JsonKey(name: "type") String? type,
          @JsonKey(name: "coordinates") List<double>? coordinates}) =
      _$_LatLongResponse;
  _LatLongResponse._() : super._();

  factory _LatLongResponse.fromJson(Map<String, dynamic> json) =
      _$_LatLongResponse.fromJson;

  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "coordinates")
  List<double>? get coordinates;
  @override
  @JsonKey(ignore: true)
  _$LatLongResponseCopyWith<_LatLongResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
