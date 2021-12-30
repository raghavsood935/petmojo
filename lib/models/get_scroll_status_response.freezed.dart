// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_scroll_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetScrollStatusResponse _$GetScrollStatusResponseFromJson(
    Map<String, dynamic> json) {
  return _GetServiceResponse.fromJson(json);
}

/// @nodoc
class _$GetScrollStatusResponseTearOff {
  const _$GetScrollStatusResponseTearOff();

  _GetServiceResponse call(
      {@JsonKey(name: "resp") List<WalkStatusResponse>? scroll}) {
    return _GetServiceResponse(
      scroll: scroll,
    );
  }

  GetScrollStatusResponse fromJson(Map<String, Object?> json) {
    return GetScrollStatusResponse.fromJson(json);
  }
}

/// @nodoc
const $GetScrollStatusResponse = _$GetScrollStatusResponseTearOff();

/// @nodoc
mixin _$GetScrollStatusResponse {
  @JsonKey(name: "resp")
  List<WalkStatusResponse>? get scroll => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetScrollStatusResponseCopyWith<GetScrollStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetScrollStatusResponseCopyWith<$Res> {
  factory $GetScrollStatusResponseCopyWith(GetScrollStatusResponse value,
          $Res Function(GetScrollStatusResponse) then) =
      _$GetScrollStatusResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "resp") List<WalkStatusResponse>? scroll});
}

/// @nodoc
class _$GetScrollStatusResponseCopyWithImpl<$Res>
    implements $GetScrollStatusResponseCopyWith<$Res> {
  _$GetScrollStatusResponseCopyWithImpl(this._value, this._then);

  final GetScrollStatusResponse _value;
  // ignore: unused_field
  final $Res Function(GetScrollStatusResponse) _then;

  @override
  $Res call({
    Object? scroll = freezed,
  }) {
    return _then(_value.copyWith(
      scroll: scroll == freezed
          ? _value.scroll
          : scroll // ignore: cast_nullable_to_non_nullable
              as List<WalkStatusResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$GetServiceResponseCopyWith<$Res>
    implements $GetScrollStatusResponseCopyWith<$Res> {
  factory _$GetServiceResponseCopyWith(
          _GetServiceResponse value, $Res Function(_GetServiceResponse) then) =
      __$GetServiceResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "resp") List<WalkStatusResponse>? scroll});
}

/// @nodoc
class __$GetServiceResponseCopyWithImpl<$Res>
    extends _$GetScrollStatusResponseCopyWithImpl<$Res>
    implements _$GetServiceResponseCopyWith<$Res> {
  __$GetServiceResponseCopyWithImpl(
      _GetServiceResponse _value, $Res Function(_GetServiceResponse) _then)
      : super(_value, (v) => _then(v as _GetServiceResponse));

  @override
  _GetServiceResponse get _value => super._value as _GetServiceResponse;

  @override
  $Res call({
    Object? scroll = freezed,
  }) {
    return _then(_GetServiceResponse(
      scroll: scroll == freezed
          ? _value.scroll
          : scroll // ignore: cast_nullable_to_non_nullable
              as List<WalkStatusResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetServiceResponse extends _GetServiceResponse {
  _$_GetServiceResponse({@JsonKey(name: "resp") this.scroll}) : super._();

  factory _$_GetServiceResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetServiceResponseFromJson(json);

  @override
  @JsonKey(name: "resp")
  final List<WalkStatusResponse>? scroll;

  @override
  String toString() {
    return 'GetScrollStatusResponse(scroll: $scroll)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetServiceResponse &&
            const DeepCollectionEquality().equals(other.scroll, scroll));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(scroll));

  @JsonKey(ignore: true)
  @override
  _$GetServiceResponseCopyWith<_GetServiceResponse> get copyWith =>
      __$GetServiceResponseCopyWithImpl<_GetServiceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetServiceResponseToJson(this);
  }
}

abstract class _GetServiceResponse extends GetScrollStatusResponse {
  factory _GetServiceResponse(
          {@JsonKey(name: "resp") List<WalkStatusResponse>? scroll}) =
      _$_GetServiceResponse;
  _GetServiceResponse._() : super._();

  factory _GetServiceResponse.fromJson(Map<String, dynamic> json) =
      _$_GetServiceResponse.fromJson;

  @override
  @JsonKey(name: "resp")
  List<WalkStatusResponse>? get scroll;
  @override
  @JsonKey(ignore: true)
  _$GetServiceResponseCopyWith<_GetServiceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

WalkStatusResponse _$WalkStatusResponseFromJson(Map<String, dynamic> json) {
  return _WalkStatusResponse.fromJson(json);
}

/// @nodoc
class _$WalkStatusResponseTearOff {
  const _$WalkStatusResponseTearOff();

  _WalkStatusResponse call({@JsonKey(name: "walkStatus") int? walkStatus}) {
    return _WalkStatusResponse(
      walkStatus: walkStatus,
    );
  }

  WalkStatusResponse fromJson(Map<String, Object?> json) {
    return WalkStatusResponse.fromJson(json);
  }
}

/// @nodoc
const $WalkStatusResponse = _$WalkStatusResponseTearOff();

/// @nodoc
mixin _$WalkStatusResponse {
  @JsonKey(name: "walkStatus")
  int? get walkStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalkStatusResponseCopyWith<WalkStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkStatusResponseCopyWith<$Res> {
  factory $WalkStatusResponseCopyWith(
          WalkStatusResponse value, $Res Function(WalkStatusResponse) then) =
      _$WalkStatusResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "walkStatus") int? walkStatus});
}

/// @nodoc
class _$WalkStatusResponseCopyWithImpl<$Res>
    implements $WalkStatusResponseCopyWith<$Res> {
  _$WalkStatusResponseCopyWithImpl(this._value, this._then);

  final WalkStatusResponse _value;
  // ignore: unused_field
  final $Res Function(WalkStatusResponse) _then;

  @override
  $Res call({
    Object? walkStatus = freezed,
  }) {
    return _then(_value.copyWith(
      walkStatus: walkStatus == freezed
          ? _value.walkStatus
          : walkStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$WalkStatusResponseCopyWith<$Res>
    implements $WalkStatusResponseCopyWith<$Res> {
  factory _$WalkStatusResponseCopyWith(
          _WalkStatusResponse value, $Res Function(_WalkStatusResponse) then) =
      __$WalkStatusResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "walkStatus") int? walkStatus});
}

/// @nodoc
class __$WalkStatusResponseCopyWithImpl<$Res>
    extends _$WalkStatusResponseCopyWithImpl<$Res>
    implements _$WalkStatusResponseCopyWith<$Res> {
  __$WalkStatusResponseCopyWithImpl(
      _WalkStatusResponse _value, $Res Function(_WalkStatusResponse) _then)
      : super(_value, (v) => _then(v as _WalkStatusResponse));

  @override
  _WalkStatusResponse get _value => super._value as _WalkStatusResponse;

  @override
  $Res call({
    Object? walkStatus = freezed,
  }) {
    return _then(_WalkStatusResponse(
      walkStatus: walkStatus == freezed
          ? _value.walkStatus
          : walkStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalkStatusResponse extends _WalkStatusResponse {
  _$_WalkStatusResponse({@JsonKey(name: "walkStatus") this.walkStatus})
      : super._();

  factory _$_WalkStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WalkStatusResponseFromJson(json);

  @override
  @JsonKey(name: "walkStatus")
  final int? walkStatus;

  @override
  String toString() {
    return 'WalkStatusResponse(walkStatus: $walkStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalkStatusResponse &&
            (identical(other.walkStatus, walkStatus) ||
                other.walkStatus == walkStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walkStatus);

  @JsonKey(ignore: true)
  @override
  _$WalkStatusResponseCopyWith<_WalkStatusResponse> get copyWith =>
      __$WalkStatusResponseCopyWithImpl<_WalkStatusResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalkStatusResponseToJson(this);
  }
}

abstract class _WalkStatusResponse extends WalkStatusResponse {
  factory _WalkStatusResponse({@JsonKey(name: "walkStatus") int? walkStatus}) =
      _$_WalkStatusResponse;
  _WalkStatusResponse._() : super._();

  factory _WalkStatusResponse.fromJson(Map<String, dynamic> json) =
      _$_WalkStatusResponse.fromJson;

  @override
  @JsonKey(name: "walkStatus")
  int? get walkStatus;
  @override
  @JsonKey(ignore: true)
  _$WalkStatusResponseCopyWith<_WalkStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
