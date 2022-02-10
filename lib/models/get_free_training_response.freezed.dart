// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_free_training_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetFreeTrainingResponse _$GetFreeTrainingResponseFromJson(
    Map<String, dynamic> json) {
  return _GetFreeTrainingResponse.fromJson(json);
}

/// @nodoc
class _$GetFreeTrainingResponseTearOff {
  const _$GetFreeTrainingResponseTearOff();

  _GetFreeTrainingResponse call(
      {@JsonKey(name: "isFreeTrainingAvailable")
          bool? isFreeTrainingAvailable}) {
    return _GetFreeTrainingResponse(
      isFreeTrainingAvailable: isFreeTrainingAvailable,
    );
  }

  GetFreeTrainingResponse fromJson(Map<String, Object?> json) {
    return GetFreeTrainingResponse.fromJson(json);
  }
}

/// @nodoc
const $GetFreeTrainingResponse = _$GetFreeTrainingResponseTearOff();

/// @nodoc
mixin _$GetFreeTrainingResponse {
  @JsonKey(name: "isFreeTrainingAvailable")
  bool? get isFreeTrainingAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFreeTrainingResponseCopyWith<GetFreeTrainingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFreeTrainingResponseCopyWith<$Res> {
  factory $GetFreeTrainingResponseCopyWith(GetFreeTrainingResponse value,
          $Res Function(GetFreeTrainingResponse) then) =
      _$GetFreeTrainingResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "isFreeTrainingAvailable")
          bool? isFreeTrainingAvailable});
}

/// @nodoc
class _$GetFreeTrainingResponseCopyWithImpl<$Res>
    implements $GetFreeTrainingResponseCopyWith<$Res> {
  _$GetFreeTrainingResponseCopyWithImpl(this._value, this._then);

  final GetFreeTrainingResponse _value;
  // ignore: unused_field
  final $Res Function(GetFreeTrainingResponse) _then;

  @override
  $Res call({
    Object? isFreeTrainingAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      isFreeTrainingAvailable: isFreeTrainingAvailable == freezed
          ? _value.isFreeTrainingAvailable
          : isFreeTrainingAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$GetFreeTrainingResponseCopyWith<$Res>
    implements $GetFreeTrainingResponseCopyWith<$Res> {
  factory _$GetFreeTrainingResponseCopyWith(_GetFreeTrainingResponse value,
          $Res Function(_GetFreeTrainingResponse) then) =
      __$GetFreeTrainingResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "isFreeTrainingAvailable")
          bool? isFreeTrainingAvailable});
}

/// @nodoc
class __$GetFreeTrainingResponseCopyWithImpl<$Res>
    extends _$GetFreeTrainingResponseCopyWithImpl<$Res>
    implements _$GetFreeTrainingResponseCopyWith<$Res> {
  __$GetFreeTrainingResponseCopyWithImpl(_GetFreeTrainingResponse _value,
      $Res Function(_GetFreeTrainingResponse) _then)
      : super(_value, (v) => _then(v as _GetFreeTrainingResponse));

  @override
  _GetFreeTrainingResponse get _value =>
      super._value as _GetFreeTrainingResponse;

  @override
  $Res call({
    Object? isFreeTrainingAvailable = freezed,
  }) {
    return _then(_GetFreeTrainingResponse(
      isFreeTrainingAvailable: isFreeTrainingAvailable == freezed
          ? _value.isFreeTrainingAvailable
          : isFreeTrainingAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetFreeTrainingResponse extends _GetFreeTrainingResponse {
  _$_GetFreeTrainingResponse(
      {@JsonKey(name: "isFreeTrainingAvailable") this.isFreeTrainingAvailable})
      : super._();

  factory _$_GetFreeTrainingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetFreeTrainingResponseFromJson(json);

  @override
  @JsonKey(name: "isFreeTrainingAvailable")
  final bool? isFreeTrainingAvailable;

  @override
  String toString() {
    return 'GetFreeTrainingResponse(isFreeTrainingAvailable: $isFreeTrainingAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetFreeTrainingResponse &&
            const DeepCollectionEquality().equals(
                other.isFreeTrainingAvailable, isFreeTrainingAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(isFreeTrainingAvailable));

  @JsonKey(ignore: true)
  @override
  _$GetFreeTrainingResponseCopyWith<_GetFreeTrainingResponse> get copyWith =>
      __$GetFreeTrainingResponseCopyWithImpl<_GetFreeTrainingResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetFreeTrainingResponseToJson(this);
  }
}

abstract class _GetFreeTrainingResponse extends GetFreeTrainingResponse {
  factory _GetFreeTrainingResponse(
      {@JsonKey(name: "isFreeTrainingAvailable")
          bool? isFreeTrainingAvailable}) = _$_GetFreeTrainingResponse;
  _GetFreeTrainingResponse._() : super._();

  factory _GetFreeTrainingResponse.fromJson(Map<String, dynamic> json) =
      _$_GetFreeTrainingResponse.fromJson;

  @override
  @JsonKey(name: "isFreeTrainingAvailable")
  bool? get isFreeTrainingAvailable;
  @override
  @JsonKey(ignore: true)
  _$GetFreeTrainingResponseCopyWith<_GetFreeTrainingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
