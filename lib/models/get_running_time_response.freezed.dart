// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_running_time_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetRunningTimeResponse _$GetRunningTimeResponseFromJson(
    Map<String, dynamic> json) {
  return _GetRunningTimeResponse.fromJson(json);
}

/// @nodoc
class _$GetRunningTimeResponseTearOff {
  const _$GetRunningTimeResponseTearOff();

  _GetRunningTimeResponse call(
      {@JsonKey(name: "timeElapsed") int? timeElapsed,
      @JsonKey(name: "status") int? status}) {
    return _GetRunningTimeResponse(
      timeElapsed: timeElapsed,
      status: status,
    );
  }

  GetRunningTimeResponse fromJson(Map<String, Object?> json) {
    return GetRunningTimeResponse.fromJson(json);
  }
}

/// @nodoc
const $GetRunningTimeResponse = _$GetRunningTimeResponseTearOff();

/// @nodoc
mixin _$GetRunningTimeResponse {
  @JsonKey(name: "timeElapsed")
  int? get timeElapsed => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRunningTimeResponseCopyWith<GetRunningTimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRunningTimeResponseCopyWith<$Res> {
  factory $GetRunningTimeResponseCopyWith(GetRunningTimeResponse value,
          $Res Function(GetRunningTimeResponse) then) =
      _$GetRunningTimeResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "timeElapsed") int? timeElapsed,
      @JsonKey(name: "status") int? status});
}

/// @nodoc
class _$GetRunningTimeResponseCopyWithImpl<$Res>
    implements $GetRunningTimeResponseCopyWith<$Res> {
  _$GetRunningTimeResponseCopyWithImpl(this._value, this._then);

  final GetRunningTimeResponse _value;
  // ignore: unused_field
  final $Res Function(GetRunningTimeResponse) _then;

  @override
  $Res call({
    Object? timeElapsed = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      timeElapsed: timeElapsed == freezed
          ? _value.timeElapsed
          : timeElapsed // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$GetRunningTimeResponseCopyWith<$Res>
    implements $GetRunningTimeResponseCopyWith<$Res> {
  factory _$GetRunningTimeResponseCopyWith(_GetRunningTimeResponse value,
          $Res Function(_GetRunningTimeResponse) then) =
      __$GetRunningTimeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "timeElapsed") int? timeElapsed,
      @JsonKey(name: "status") int? status});
}

/// @nodoc
class __$GetRunningTimeResponseCopyWithImpl<$Res>
    extends _$GetRunningTimeResponseCopyWithImpl<$Res>
    implements _$GetRunningTimeResponseCopyWith<$Res> {
  __$GetRunningTimeResponseCopyWithImpl(_GetRunningTimeResponse _value,
      $Res Function(_GetRunningTimeResponse) _then)
      : super(_value, (v) => _then(v as _GetRunningTimeResponse));

  @override
  _GetRunningTimeResponse get _value => super._value as _GetRunningTimeResponse;

  @override
  $Res call({
    Object? timeElapsed = freezed,
    Object? status = freezed,
  }) {
    return _then(_GetRunningTimeResponse(
      timeElapsed: timeElapsed == freezed
          ? _value.timeElapsed
          : timeElapsed // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetRunningTimeResponse extends _GetRunningTimeResponse {
  _$_GetRunningTimeResponse(
      {@JsonKey(name: "timeElapsed") this.timeElapsed,
      @JsonKey(name: "status") this.status})
      : super._();

  factory _$_GetRunningTimeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetRunningTimeResponseFromJson(json);

  @override
  @JsonKey(name: "timeElapsed")
  final int? timeElapsed;
  @override
  @JsonKey(name: "status")
  final int? status;

  @override
  String toString() {
    return 'GetRunningTimeResponse(timeElapsed: $timeElapsed, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetRunningTimeResponse &&
            const DeepCollectionEquality()
                .equals(other.timeElapsed, timeElapsed) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timeElapsed),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$GetRunningTimeResponseCopyWith<_GetRunningTimeResponse> get copyWith =>
      __$GetRunningTimeResponseCopyWithImpl<_GetRunningTimeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetRunningTimeResponseToJson(this);
  }
}

abstract class _GetRunningTimeResponse extends GetRunningTimeResponse {
  factory _GetRunningTimeResponse(
      {@JsonKey(name: "timeElapsed") int? timeElapsed,
      @JsonKey(name: "status") int? status}) = _$_GetRunningTimeResponse;
  _GetRunningTimeResponse._() : super._();

  factory _GetRunningTimeResponse.fromJson(Map<String, dynamic> json) =
      _$_GetRunningTimeResponse.fromJson;

  @override
  @JsonKey(name: "timeElapsed")
  int? get timeElapsed;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$GetRunningTimeResponseCopyWith<_GetRunningTimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
