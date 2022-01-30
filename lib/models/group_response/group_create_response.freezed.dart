// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_create_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupCreateResponse _$GroupCreateResponseFromJson(Map<String, dynamic> json) {
  return _GroupCreateResponse.fromJson(json);
}

/// @nodoc
class _$GroupCreateResponseTearOff {
  const _$GroupCreateResponseTearOff();

  _GroupCreateResponse call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "success") bool? success,
      @JsonKey(name: "groupId") String? groupId}) {
    return _GroupCreateResponse(
      message: message,
      success: success,
      groupId: groupId,
    );
  }

  GroupCreateResponse fromJson(Map<String, Object?> json) {
    return GroupCreateResponse.fromJson(json);
  }
}

/// @nodoc
const $GroupCreateResponse = _$GroupCreateResponseTearOff();

/// @nodoc
mixin _$GroupCreateResponse {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCreateResponseCopyWith<GroupCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCreateResponseCopyWith<$Res> {
  factory $GroupCreateResponseCopyWith(
          GroupCreateResponse value, $Res Function(GroupCreateResponse) then) =
      _$GroupCreateResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "success") bool? success,
      @JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class _$GroupCreateResponseCopyWithImpl<$Res>
    implements $GroupCreateResponseCopyWith<$Res> {
  _$GroupCreateResponseCopyWithImpl(this._value, this._then);

  final GroupCreateResponse _value;
  // ignore: unused_field
  final $Res Function(GroupCreateResponse) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? success = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GroupCreateResponseCopyWith<$Res>
    implements $GroupCreateResponseCopyWith<$Res> {
  factory _$GroupCreateResponseCopyWith(_GroupCreateResponse value,
          $Res Function(_GroupCreateResponse) then) =
      __$GroupCreateResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "success") bool? success,
      @JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class __$GroupCreateResponseCopyWithImpl<$Res>
    extends _$GroupCreateResponseCopyWithImpl<$Res>
    implements _$GroupCreateResponseCopyWith<$Res> {
  __$GroupCreateResponseCopyWithImpl(
      _GroupCreateResponse _value, $Res Function(_GroupCreateResponse) _then)
      : super(_value, (v) => _then(v as _GroupCreateResponse));

  @override
  _GroupCreateResponse get _value => super._value as _GroupCreateResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? success = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_GroupCreateResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupCreateResponse extends _GroupCreateResponse {
  _$_GroupCreateResponse(
      {@JsonKey(name: "message") this.message,
      @JsonKey(name: "success") this.success,
      @JsonKey(name: "groupId") this.groupId})
      : super._();

  factory _$_GroupCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GroupCreateResponseFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "groupId")
  final String? groupId;

  @override
  String toString() {
    return 'GroupCreateResponse(message: $message, success: $success, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupCreateResponse &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.groupId, groupId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(groupId));

  @JsonKey(ignore: true)
  @override
  _$GroupCreateResponseCopyWith<_GroupCreateResponse> get copyWith =>
      __$GroupCreateResponseCopyWithImpl<_GroupCreateResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupCreateResponseToJson(this);
  }
}

abstract class _GroupCreateResponse extends GroupCreateResponse {
  factory _GroupCreateResponse(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "success") bool? success,
      @JsonKey(name: "groupId") String? groupId}) = _$_GroupCreateResponse;
  _GroupCreateResponse._() : super._();

  factory _GroupCreateResponse.fromJson(Map<String, dynamic> json) =
      _$_GroupCreateResponse.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(ignore: true)
  _$GroupCreateResponseCopyWith<_GroupCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
