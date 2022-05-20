// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_tracker_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionTrackerResponse _$SessionTrackerResponseFromJson(
    Map<String, dynamic> json) {
  return _SessionTrackerResponse.fromJson(json);
}

/// @nodoc
class _$SessionTrackerResponseTearOff {
  const _$SessionTrackerResponseTearOff();

  _SessionTrackerResponse call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "ongoing") int? ongoing,
      @JsonKey(name: "appointmentId") String? appointmentId}) {
    return _SessionTrackerResponse(
      success: success,
      ongoing: ongoing,
      appointmentId: appointmentId,
    );
  }

  SessionTrackerResponse fromJson(Map<String, Object?> json) {
    return SessionTrackerResponse.fromJson(json);
  }
}

/// @nodoc
const $SessionTrackerResponse = _$SessionTrackerResponseTearOff();

/// @nodoc
mixin _$SessionTrackerResponse {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "ongoing")
  int? get ongoing => throw _privateConstructorUsedError;
  @JsonKey(name: "appointmentId")
  String? get appointmentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionTrackerResponseCopyWith<SessionTrackerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionTrackerResponseCopyWith<$Res> {
  factory $SessionTrackerResponseCopyWith(SessionTrackerResponse value,
          $Res Function(SessionTrackerResponse) then) =
      _$SessionTrackerResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "ongoing") int? ongoing,
      @JsonKey(name: "appointmentId") String? appointmentId});
}

/// @nodoc
class _$SessionTrackerResponseCopyWithImpl<$Res>
    implements $SessionTrackerResponseCopyWith<$Res> {
  _$SessionTrackerResponseCopyWithImpl(this._value, this._then);

  final SessionTrackerResponse _value;
  // ignore: unused_field
  final $Res Function(SessionTrackerResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? ongoing = freezed,
    Object? appointmentId = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      ongoing: ongoing == freezed
          ? _value.ongoing
          : ongoing // ignore: cast_nullable_to_non_nullable
              as int?,
      appointmentId: appointmentId == freezed
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SessionTrackerResponseCopyWith<$Res>
    implements $SessionTrackerResponseCopyWith<$Res> {
  factory _$SessionTrackerResponseCopyWith(_SessionTrackerResponse value,
          $Res Function(_SessionTrackerResponse) then) =
      __$SessionTrackerResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "ongoing") int? ongoing,
      @JsonKey(name: "appointmentId") String? appointmentId});
}

/// @nodoc
class __$SessionTrackerResponseCopyWithImpl<$Res>
    extends _$SessionTrackerResponseCopyWithImpl<$Res>
    implements _$SessionTrackerResponseCopyWith<$Res> {
  __$SessionTrackerResponseCopyWithImpl(_SessionTrackerResponse _value,
      $Res Function(_SessionTrackerResponse) _then)
      : super(_value, (v) => _then(v as _SessionTrackerResponse));

  @override
  _SessionTrackerResponse get _value => super._value as _SessionTrackerResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? ongoing = freezed,
    Object? appointmentId = freezed,
  }) {
    return _then(_SessionTrackerResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      ongoing: ongoing == freezed
          ? _value.ongoing
          : ongoing // ignore: cast_nullable_to_non_nullable
              as int?,
      appointmentId: appointmentId == freezed
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionTrackerResponse extends _SessionTrackerResponse {
  _$_SessionTrackerResponse(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "ongoing") this.ongoing,
      @JsonKey(name: "appointmentId") this.appointmentId})
      : super._();

  factory _$_SessionTrackerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SessionTrackerResponseFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "ongoing")
  final int? ongoing;
  @override
  @JsonKey(name: "appointmentId")
  final String? appointmentId;

  @override
  String toString() {
    return 'SessionTrackerResponse(success: $success, ongoing: $ongoing, appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SessionTrackerResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.ongoing, ongoing) &&
            const DeepCollectionEquality()
                .equals(other.appointmentId, appointmentId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(ongoing),
      const DeepCollectionEquality().hash(appointmentId));

  @JsonKey(ignore: true)
  @override
  _$SessionTrackerResponseCopyWith<_SessionTrackerResponse> get copyWith =>
      __$SessionTrackerResponseCopyWithImpl<_SessionTrackerResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionTrackerResponseToJson(this);
  }
}

abstract class _SessionTrackerResponse extends SessionTrackerResponse {
  factory _SessionTrackerResponse(
          {@JsonKey(name: "success") bool? success,
          @JsonKey(name: "ongoing") int? ongoing,
          @JsonKey(name: "appointmentId") String? appointmentId}) =
      _$_SessionTrackerResponse;
  _SessionTrackerResponse._() : super._();

  factory _SessionTrackerResponse.fromJson(Map<String, dynamic> json) =
      _$_SessionTrackerResponse.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "ongoing")
  int? get ongoing;
  @override
  @JsonKey(name: "appointmentId")
  String? get appointmentId;
  @override
  @JsonKey(ignore: true)
  _$SessionTrackerResponseCopyWith<_SessionTrackerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
