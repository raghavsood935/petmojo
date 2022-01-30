// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_free_walk_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetFreeWalkResponse _$GetFreeWalkResponseFromJson(Map<String, dynamic> json) {
  return _GetFreeWalkResponse.fromJson(json);
}

/// @nodoc
class _$GetFreeWalkResponseTearOff {
  const _$GetFreeWalkResponseTearOff();

  _GetFreeWalkResponse call(
      {@JsonKey(name: "isFreeWalkAvailable") bool? isFreeWalkAvailable}) {
    return _GetFreeWalkResponse(
      isFreeWalkAvailable: isFreeWalkAvailable,
    );
  }

  GetFreeWalkResponse fromJson(Map<String, Object?> json) {
    return GetFreeWalkResponse.fromJson(json);
  }
}

/// @nodoc
const $GetFreeWalkResponse = _$GetFreeWalkResponseTearOff();

/// @nodoc
mixin _$GetFreeWalkResponse {
  @JsonKey(name: "isFreeWalkAvailable")
  bool? get isFreeWalkAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFreeWalkResponseCopyWith<GetFreeWalkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFreeWalkResponseCopyWith<$Res> {
  factory $GetFreeWalkResponseCopyWith(
          GetFreeWalkResponse value, $Res Function(GetFreeWalkResponse) then) =
      _$GetFreeWalkResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "isFreeWalkAvailable") bool? isFreeWalkAvailable});
}

/// @nodoc
class _$GetFreeWalkResponseCopyWithImpl<$Res>
    implements $GetFreeWalkResponseCopyWith<$Res> {
  _$GetFreeWalkResponseCopyWithImpl(this._value, this._then);

  final GetFreeWalkResponse _value;
  // ignore: unused_field
  final $Res Function(GetFreeWalkResponse) _then;

  @override
  $Res call({
    Object? isFreeWalkAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      isFreeWalkAvailable: isFreeWalkAvailable == freezed
          ? _value.isFreeWalkAvailable
          : isFreeWalkAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$GetFreeWalkResponseCopyWith<$Res>
    implements $GetFreeWalkResponseCopyWith<$Res> {
  factory _$GetFreeWalkResponseCopyWith(_GetFreeWalkResponse value,
          $Res Function(_GetFreeWalkResponse) then) =
      __$GetFreeWalkResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "isFreeWalkAvailable") bool? isFreeWalkAvailable});
}

/// @nodoc
class __$GetFreeWalkResponseCopyWithImpl<$Res>
    extends _$GetFreeWalkResponseCopyWithImpl<$Res>
    implements _$GetFreeWalkResponseCopyWith<$Res> {
  __$GetFreeWalkResponseCopyWithImpl(
      _GetFreeWalkResponse _value, $Res Function(_GetFreeWalkResponse) _then)
      : super(_value, (v) => _then(v as _GetFreeWalkResponse));

  @override
  _GetFreeWalkResponse get _value => super._value as _GetFreeWalkResponse;

  @override
  $Res call({
    Object? isFreeWalkAvailable = freezed,
  }) {
    return _then(_GetFreeWalkResponse(
      isFreeWalkAvailable: isFreeWalkAvailable == freezed
          ? _value.isFreeWalkAvailable
          : isFreeWalkAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetFreeWalkResponse extends _GetFreeWalkResponse {
  _$_GetFreeWalkResponse(
      {@JsonKey(name: "isFreeWalkAvailable") this.isFreeWalkAvailable})
      : super._();

  factory _$_GetFreeWalkResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetFreeWalkResponseFromJson(json);

  @override
  @JsonKey(name: "isFreeWalkAvailable")
  final bool? isFreeWalkAvailable;

  @override
  String toString() {
    return 'GetFreeWalkResponse(isFreeWalkAvailable: $isFreeWalkAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetFreeWalkResponse &&
            const DeepCollectionEquality()
                .equals(other.isFreeWalkAvailable, isFreeWalkAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isFreeWalkAvailable));

  @JsonKey(ignore: true)
  @override
  _$GetFreeWalkResponseCopyWith<_GetFreeWalkResponse> get copyWith =>
      __$GetFreeWalkResponseCopyWithImpl<_GetFreeWalkResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetFreeWalkResponseToJson(this);
  }
}

abstract class _GetFreeWalkResponse extends GetFreeWalkResponse {
  factory _GetFreeWalkResponse(
          {@JsonKey(name: "isFreeWalkAvailable") bool? isFreeWalkAvailable}) =
      _$_GetFreeWalkResponse;
  _GetFreeWalkResponse._() : super._();

  factory _GetFreeWalkResponse.fromJson(Map<String, dynamic> json) =
      _$_GetFreeWalkResponse.fromJson;

  @override
  @JsonKey(name: "isFreeWalkAvailable")
  bool? get isFreeWalkAvailable;
  @override
  @JsonKey(ignore: true)
  _$GetFreeWalkResponseCopyWith<_GetFreeWalkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
