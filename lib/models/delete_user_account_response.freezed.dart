// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delete_user_account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteAccountResponse _$DeleteAccountResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteAccountResponse.fromJson(json);
}

/// @nodoc
class _$DeleteAccountResponseTearOff {
  const _$DeleteAccountResponseTearOff();

  _DeleteAccountResponse call({@JsonKey(name: "success") bool? success}) {
    return _DeleteAccountResponse(
      success: success,
    );
  }

  DeleteAccountResponse fromJson(Map<String, Object?> json) {
    return DeleteAccountResponse.fromJson(json);
  }
}

/// @nodoc
const $DeleteAccountResponse = _$DeleteAccountResponseTearOff();

/// @nodoc
mixin _$DeleteAccountResponse {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteAccountResponseCopyWith<DeleteAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountResponseCopyWith<$Res> {
  factory $DeleteAccountResponseCopyWith(DeleteAccountResponse value,
          $Res Function(DeleteAccountResponse) then) =
      _$DeleteAccountResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "success") bool? success});
}

/// @nodoc
class _$DeleteAccountResponseCopyWithImpl<$Res>
    implements $DeleteAccountResponseCopyWith<$Res> {
  _$DeleteAccountResponseCopyWithImpl(this._value, this._then);

  final DeleteAccountResponse _value;
  // ignore: unused_field
  final $Res Function(DeleteAccountResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$DeleteAccountResponseCopyWith<$Res>
    implements $DeleteAccountResponseCopyWith<$Res> {
  factory _$DeleteAccountResponseCopyWith(_DeleteAccountResponse value,
          $Res Function(_DeleteAccountResponse) then) =
      __$DeleteAccountResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "success") bool? success});
}

/// @nodoc
class __$DeleteAccountResponseCopyWithImpl<$Res>
    extends _$DeleteAccountResponseCopyWithImpl<$Res>
    implements _$DeleteAccountResponseCopyWith<$Res> {
  __$DeleteAccountResponseCopyWithImpl(_DeleteAccountResponse _value,
      $Res Function(_DeleteAccountResponse) _then)
      : super(_value, (v) => _then(v as _DeleteAccountResponse));

  @override
  _DeleteAccountResponse get _value => super._value as _DeleteAccountResponse;

  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_DeleteAccountResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteAccountResponse extends _DeleteAccountResponse {
  _$_DeleteAccountResponse({@JsonKey(name: "success") this.success})
      : super._();

  factory _$_DeleteAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteAccountResponseFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;

  @override
  String toString() {
    return 'DeleteAccountResponse(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteAccountResponse &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  _$DeleteAccountResponseCopyWith<_DeleteAccountResponse> get copyWith =>
      __$DeleteAccountResponseCopyWithImpl<_DeleteAccountResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteAccountResponseToJson(this);
  }
}

abstract class _DeleteAccountResponse extends DeleteAccountResponse {
  factory _DeleteAccountResponse({@JsonKey(name: "success") bool? success}) =
      _$_DeleteAccountResponse;
  _DeleteAccountResponse._() : super._();

  factory _DeleteAccountResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteAccountResponse.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(ignore: true)
  _$DeleteAccountResponseCopyWith<_DeleteAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
