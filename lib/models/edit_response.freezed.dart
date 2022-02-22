// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditResponse _$EditResponseFromJson(Map<String, dynamic> json) {
  return _EditResponse.fromJson(json);
}

/// @nodoc
class _$EditResponseTearOff {
  const _$EditResponseTearOff();

  _EditResponse call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message}) {
    return _EditResponse(
      success: success,
      message: message,
    );
  }

  EditResponse fromJson(Map<String, Object?> json) {
    return EditResponse.fromJson(json);
  }
}

/// @nodoc
const $EditResponse = _$EditResponseTearOff();

/// @nodoc
mixin _$EditResponse {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditResponseCopyWith<EditResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditResponseCopyWith<$Res> {
  factory $EditResponseCopyWith(
          EditResponse value, $Res Function(EditResponse) then) =
      _$EditResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$EditResponseCopyWithImpl<$Res> implements $EditResponseCopyWith<$Res> {
  _$EditResponseCopyWithImpl(this._value, this._then);

  final EditResponse _value;
  // ignore: unused_field
  final $Res Function(EditResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EditResponseCopyWith<$Res>
    implements $EditResponseCopyWith<$Res> {
  factory _$EditResponseCopyWith(
          _EditResponse value, $Res Function(_EditResponse) then) =
      __$EditResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class __$EditResponseCopyWithImpl<$Res> extends _$EditResponseCopyWithImpl<$Res>
    implements _$EditResponseCopyWith<$Res> {
  __$EditResponseCopyWithImpl(
      _EditResponse _value, $Res Function(_EditResponse) _then)
      : super(_value, (v) => _then(v as _EditResponse));

  @override
  _EditResponse get _value => super._value as _EditResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_EditResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditResponse extends _EditResponse {
  _$_EditResponse(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message})
      : super._();

  factory _$_EditResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EditResponseFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'EditResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$EditResponseCopyWith<_EditResponse> get copyWith =>
      __$EditResponseCopyWithImpl<_EditResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditResponseToJson(this);
  }
}

abstract class _EditResponse extends EditResponse {
  factory _EditResponse(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message}) = _$_EditResponse;
  _EditResponse._() : super._();

  factory _EditResponse.fromJson(Map<String, dynamic> json) =
      _$_EditResponse.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$EditResponseCopyWith<_EditResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
