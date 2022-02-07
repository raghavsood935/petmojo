// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'has_appointments_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HasAppointmentsResponse _$HasAppointmentsResponseFromJson(
    Map<String, dynamic> json) {
  return _HasAppointmentsResponse.fromJson(json);
}

/// @nodoc
class _$HasAppointmentsResponseTearOff {
  const _$HasAppointmentsResponseTearOff();

  _HasAppointmentsResponse call(
      {@JsonKey(name: "hasAppointments") bool? hasAppointments}) {
    return _HasAppointmentsResponse(
      hasAppointments: hasAppointments,
    );
  }

  HasAppointmentsResponse fromJson(Map<String, Object?> json) {
    return HasAppointmentsResponse.fromJson(json);
  }
}

/// @nodoc
const $HasAppointmentsResponse = _$HasAppointmentsResponseTearOff();

/// @nodoc
mixin _$HasAppointmentsResponse {
  @JsonKey(name: "hasAppointments")
  bool? get hasAppointments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HasAppointmentsResponseCopyWith<HasAppointmentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HasAppointmentsResponseCopyWith<$Res> {
  factory $HasAppointmentsResponseCopyWith(HasAppointmentsResponse value,
          $Res Function(HasAppointmentsResponse) then) =
      _$HasAppointmentsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "hasAppointments") bool? hasAppointments});
}

/// @nodoc
class _$HasAppointmentsResponseCopyWithImpl<$Res>
    implements $HasAppointmentsResponseCopyWith<$Res> {
  _$HasAppointmentsResponseCopyWithImpl(this._value, this._then);

  final HasAppointmentsResponse _value;
  // ignore: unused_field
  final $Res Function(HasAppointmentsResponse) _then;

  @override
  $Res call({
    Object? hasAppointments = freezed,
  }) {
    return _then(_value.copyWith(
      hasAppointments: hasAppointments == freezed
          ? _value.hasAppointments
          : hasAppointments // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$HasAppointmentsResponseCopyWith<$Res>
    implements $HasAppointmentsResponseCopyWith<$Res> {
  factory _$HasAppointmentsResponseCopyWith(_HasAppointmentsResponse value,
          $Res Function(_HasAppointmentsResponse) then) =
      __$HasAppointmentsResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "hasAppointments") bool? hasAppointments});
}

/// @nodoc
class __$HasAppointmentsResponseCopyWithImpl<$Res>
    extends _$HasAppointmentsResponseCopyWithImpl<$Res>
    implements _$HasAppointmentsResponseCopyWith<$Res> {
  __$HasAppointmentsResponseCopyWithImpl(_HasAppointmentsResponse _value,
      $Res Function(_HasAppointmentsResponse) _then)
      : super(_value, (v) => _then(v as _HasAppointmentsResponse));

  @override
  _HasAppointmentsResponse get _value =>
      super._value as _HasAppointmentsResponse;

  @override
  $Res call({
    Object? hasAppointments = freezed,
  }) {
    return _then(_HasAppointmentsResponse(
      hasAppointments: hasAppointments == freezed
          ? _value.hasAppointments
          : hasAppointments // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HasAppointmentsResponse extends _HasAppointmentsResponse {
  _$_HasAppointmentsResponse(
      {@JsonKey(name: "hasAppointments") this.hasAppointments})
      : super._();

  factory _$_HasAppointmentsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HasAppointmentsResponseFromJson(json);

  @override
  @JsonKey(name: "hasAppointments")
  final bool? hasAppointments;

  @override
  String toString() {
    return 'HasAppointmentsResponse(hasAppointments: $hasAppointments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HasAppointmentsResponse &&
            const DeepCollectionEquality()
                .equals(other.hasAppointments, hasAppointments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(hasAppointments));

  @JsonKey(ignore: true)
  @override
  _$HasAppointmentsResponseCopyWith<_HasAppointmentsResponse> get copyWith =>
      __$HasAppointmentsResponseCopyWithImpl<_HasAppointmentsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HasAppointmentsResponseToJson(this);
  }
}

abstract class _HasAppointmentsResponse extends HasAppointmentsResponse {
  factory _HasAppointmentsResponse(
          {@JsonKey(name: "hasAppointments") bool? hasAppointments}) =
      _$_HasAppointmentsResponse;
  _HasAppointmentsResponse._() : super._();

  factory _HasAppointmentsResponse.fromJson(Map<String, dynamic> json) =
      _$_HasAppointmentsResponse.fromJson;

  @override
  @JsonKey(name: "hasAppointments")
  bool? get hasAppointments;
  @override
  @JsonKey(ignore: true)
  _$HasAppointmentsResponseCopyWith<_HasAppointmentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
