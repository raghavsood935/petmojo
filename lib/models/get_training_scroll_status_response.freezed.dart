// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_training_scroll_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetTrainingScrollStatusResponse _$GetTrainingScrollStatusResponseFromJson(
    Map<String, dynamic> json) {
  return _GetTrainingScrollStatusResponse.fromJson(json);
}

/// @nodoc
class _$GetTrainingScrollStatusResponseTearOff {
  const _$GetTrainingScrollStatusResponseTearOff();

  _GetTrainingScrollStatusResponse call(
      {@JsonKey(name: "TrainingSessionStatus") int? trainingStatus}) {
    return _GetTrainingScrollStatusResponse(
      trainingStatus: trainingStatus,
    );
  }

  GetTrainingScrollStatusResponse fromJson(Map<String, Object?> json) {
    return GetTrainingScrollStatusResponse.fromJson(json);
  }
}

/// @nodoc
const $GetTrainingScrollStatusResponse =
    _$GetTrainingScrollStatusResponseTearOff();

/// @nodoc
mixin _$GetTrainingScrollStatusResponse {
  @JsonKey(name: "TrainingSessionStatus")
  int? get trainingStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTrainingScrollStatusResponseCopyWith<GetTrainingScrollStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTrainingScrollStatusResponseCopyWith<$Res> {
  factory $GetTrainingScrollStatusResponseCopyWith(
          GetTrainingScrollStatusResponse value,
          $Res Function(GetTrainingScrollStatusResponse) then) =
      _$GetTrainingScrollStatusResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "TrainingSessionStatus") int? trainingStatus});
}

/// @nodoc
class _$GetTrainingScrollStatusResponseCopyWithImpl<$Res>
    implements $GetTrainingScrollStatusResponseCopyWith<$Res> {
  _$GetTrainingScrollStatusResponseCopyWithImpl(this._value, this._then);

  final GetTrainingScrollStatusResponse _value;
  // ignore: unused_field
  final $Res Function(GetTrainingScrollStatusResponse) _then;

  @override
  $Res call({
    Object? trainingStatus = freezed,
  }) {
    return _then(_value.copyWith(
      trainingStatus: trainingStatus == freezed
          ? _value.trainingStatus
          : trainingStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$GetTrainingScrollStatusResponseCopyWith<$Res>
    implements $GetTrainingScrollStatusResponseCopyWith<$Res> {
  factory _$GetTrainingScrollStatusResponseCopyWith(
          _GetTrainingScrollStatusResponse value,
          $Res Function(_GetTrainingScrollStatusResponse) then) =
      __$GetTrainingScrollStatusResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "TrainingSessionStatus") int? trainingStatus});
}

/// @nodoc
class __$GetTrainingScrollStatusResponseCopyWithImpl<$Res>
    extends _$GetTrainingScrollStatusResponseCopyWithImpl<$Res>
    implements _$GetTrainingScrollStatusResponseCopyWith<$Res> {
  __$GetTrainingScrollStatusResponseCopyWithImpl(
      _GetTrainingScrollStatusResponse _value,
      $Res Function(_GetTrainingScrollStatusResponse) _then)
      : super(_value, (v) => _then(v as _GetTrainingScrollStatusResponse));

  @override
  _GetTrainingScrollStatusResponse get _value =>
      super._value as _GetTrainingScrollStatusResponse;

  @override
  $Res call({
    Object? trainingStatus = freezed,
  }) {
    return _then(_GetTrainingScrollStatusResponse(
      trainingStatus: trainingStatus == freezed
          ? _value.trainingStatus
          : trainingStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetTrainingScrollStatusResponse
    extends _GetTrainingScrollStatusResponse {
  _$_GetTrainingScrollStatusResponse(
      {@JsonKey(name: "TrainingSessionStatus") this.trainingStatus})
      : super._();

  factory _$_GetTrainingScrollStatusResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetTrainingScrollStatusResponseFromJson(json);

  @override
  @JsonKey(name: "TrainingSessionStatus")
  final int? trainingStatus;

  @override
  String toString() {
    return 'GetTrainingScrollStatusResponse(trainingStatus: $trainingStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetTrainingScrollStatusResponse &&
            const DeepCollectionEquality()
                .equals(other.trainingStatus, trainingStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(trainingStatus));

  @JsonKey(ignore: true)
  @override
  _$GetTrainingScrollStatusResponseCopyWith<_GetTrainingScrollStatusResponse>
      get copyWith => __$GetTrainingScrollStatusResponseCopyWithImpl<
          _GetTrainingScrollStatusResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetTrainingScrollStatusResponseToJson(this);
  }
}

abstract class _GetTrainingScrollStatusResponse
    extends GetTrainingScrollStatusResponse {
  factory _GetTrainingScrollStatusResponse(
          {@JsonKey(name: "TrainingSessionStatus") int? trainingStatus}) =
      _$_GetTrainingScrollStatusResponse;
  _GetTrainingScrollStatusResponse._() : super._();

  factory _GetTrainingScrollStatusResponse.fromJson(Map<String, dynamic> json) =
      _$_GetTrainingScrollStatusResponse.fromJson;

  @override
  @JsonKey(name: "TrainingSessionStatus")
  int? get trainingStatus;
  @override
  @JsonKey(ignore: true)
  _$GetTrainingScrollStatusResponseCopyWith<_GetTrainingScrollStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}
