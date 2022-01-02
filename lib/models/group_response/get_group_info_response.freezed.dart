// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_group_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetGroupInfoResponse _$GetGroupInfoResponseFromJson(Map<String, dynamic> json) {
  return _GetGroupInfoResponse.fromJson(json);
}

/// @nodoc
class _$GetGroupInfoResponseTearOff {
  const _$GetGroupInfoResponseTearOff();

  _GetGroupInfoResponse call(
      {@JsonKey(name: "group") GroupBasicInfoResponse? group}) {
    return _GetGroupInfoResponse(
      group: group,
    );
  }

  GetGroupInfoResponse fromJson(Map<String, Object?> json) {
    return GetGroupInfoResponse.fromJson(json);
  }
}

/// @nodoc
const $GetGroupInfoResponse = _$GetGroupInfoResponseTearOff();

/// @nodoc
mixin _$GetGroupInfoResponse {
  @JsonKey(name: "group")
  GroupBasicInfoResponse? get group => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetGroupInfoResponseCopyWith<GetGroupInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGroupInfoResponseCopyWith<$Res> {
  factory $GetGroupInfoResponseCopyWith(GetGroupInfoResponse value,
          $Res Function(GetGroupInfoResponse) then) =
      _$GetGroupInfoResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "group") GroupBasicInfoResponse? group});

  $GroupBasicInfoResponseCopyWith<$Res>? get group;
}

/// @nodoc
class _$GetGroupInfoResponseCopyWithImpl<$Res>
    implements $GetGroupInfoResponseCopyWith<$Res> {
  _$GetGroupInfoResponseCopyWithImpl(this._value, this._then);

  final GetGroupInfoResponse _value;
  // ignore: unused_field
  final $Res Function(GetGroupInfoResponse) _then;

  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(_value.copyWith(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupBasicInfoResponse?,
    ));
  }

  @override
  $GroupBasicInfoResponseCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupBasicInfoResponseCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc
abstract class _$GetGroupInfoResponseCopyWith<$Res>
    implements $GetGroupInfoResponseCopyWith<$Res> {
  factory _$GetGroupInfoResponseCopyWith(_GetGroupInfoResponse value,
          $Res Function(_GetGroupInfoResponse) then) =
      __$GetGroupInfoResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "group") GroupBasicInfoResponse? group});

  @override
  $GroupBasicInfoResponseCopyWith<$Res>? get group;
}

/// @nodoc
class __$GetGroupInfoResponseCopyWithImpl<$Res>
    extends _$GetGroupInfoResponseCopyWithImpl<$Res>
    implements _$GetGroupInfoResponseCopyWith<$Res> {
  __$GetGroupInfoResponseCopyWithImpl(
      _GetGroupInfoResponse _value, $Res Function(_GetGroupInfoResponse) _then)
      : super(_value, (v) => _then(v as _GetGroupInfoResponse));

  @override
  _GetGroupInfoResponse get _value => super._value as _GetGroupInfoResponse;

  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(_GetGroupInfoResponse(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupBasicInfoResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetGroupInfoResponse extends _GetGroupInfoResponse {
  _$_GetGroupInfoResponse({@JsonKey(name: "group") this.group}) : super._();

  factory _$_GetGroupInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetGroupInfoResponseFromJson(json);

  @override
  @JsonKey(name: "group")
  final GroupBasicInfoResponse? group;

  @override
  String toString() {
    return 'GetGroupInfoResponse(group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetGroupInfoResponse &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group);

  @JsonKey(ignore: true)
  @override
  _$GetGroupInfoResponseCopyWith<_GetGroupInfoResponse> get copyWith =>
      __$GetGroupInfoResponseCopyWithImpl<_GetGroupInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetGroupInfoResponseToJson(this);
  }
}

abstract class _GetGroupInfoResponse extends GetGroupInfoResponse {
  factory _GetGroupInfoResponse(
          {@JsonKey(name: "group") GroupBasicInfoResponse? group}) =
      _$_GetGroupInfoResponse;
  _GetGroupInfoResponse._() : super._();

  factory _GetGroupInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_GetGroupInfoResponse.fromJson;

  @override
  @JsonKey(name: "group")
  GroupBasicInfoResponse? get group;
  @override
  @JsonKey(ignore: true)
  _$GetGroupInfoResponseCopyWith<_GetGroupInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
