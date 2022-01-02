// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_all_groups_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAllGroupResponse _$GetAllGroupResponseFromJson(Map<String, dynamic> json) {
  return _GetAllGroupResponse.fromJson(json);
}

/// @nodoc
class _$GetAllGroupResponseTearOff {
  const _$GetAllGroupResponseTearOff();

  _GetAllGroupResponse call(
      {@JsonKey(name: "message") List<GroupBasicInfoResponse>? listOfGroups,
      @JsonKey(name: "success") bool? success}) {
    return _GetAllGroupResponse(
      listOfGroups: listOfGroups,
      success: success,
    );
  }

  GetAllGroupResponse fromJson(Map<String, Object?> json) {
    return GetAllGroupResponse.fromJson(json);
  }
}

/// @nodoc
const $GetAllGroupResponse = _$GetAllGroupResponseTearOff();

/// @nodoc
mixin _$GetAllGroupResponse {
  @JsonKey(name: "message")
  List<GroupBasicInfoResponse>? get listOfGroups =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllGroupResponseCopyWith<GetAllGroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllGroupResponseCopyWith<$Res> {
  factory $GetAllGroupResponseCopyWith(
          GetAllGroupResponse value, $Res Function(GetAllGroupResponse) then) =
      _$GetAllGroupResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "message") List<GroupBasicInfoResponse>? listOfGroups,
      @JsonKey(name: "success") bool? success});
}

/// @nodoc
class _$GetAllGroupResponseCopyWithImpl<$Res>
    implements $GetAllGroupResponseCopyWith<$Res> {
  _$GetAllGroupResponseCopyWithImpl(this._value, this._then);

  final GetAllGroupResponse _value;
  // ignore: unused_field
  final $Res Function(GetAllGroupResponse) _then;

  @override
  $Res call({
    Object? listOfGroups = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      listOfGroups: listOfGroups == freezed
          ? _value.listOfGroups
          : listOfGroups // ignore: cast_nullable_to_non_nullable
              as List<GroupBasicInfoResponse>?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$GetAllGroupResponseCopyWith<$Res>
    implements $GetAllGroupResponseCopyWith<$Res> {
  factory _$GetAllGroupResponseCopyWith(_GetAllGroupResponse value,
          $Res Function(_GetAllGroupResponse) then) =
      __$GetAllGroupResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "message") List<GroupBasicInfoResponse>? listOfGroups,
      @JsonKey(name: "success") bool? success});
}

/// @nodoc
class __$GetAllGroupResponseCopyWithImpl<$Res>
    extends _$GetAllGroupResponseCopyWithImpl<$Res>
    implements _$GetAllGroupResponseCopyWith<$Res> {
  __$GetAllGroupResponseCopyWithImpl(
      _GetAllGroupResponse _value, $Res Function(_GetAllGroupResponse) _then)
      : super(_value, (v) => _then(v as _GetAllGroupResponse));

  @override
  _GetAllGroupResponse get _value => super._value as _GetAllGroupResponse;

  @override
  $Res call({
    Object? listOfGroups = freezed,
    Object? success = freezed,
  }) {
    return _then(_GetAllGroupResponse(
      listOfGroups: listOfGroups == freezed
          ? _value.listOfGroups
          : listOfGroups // ignore: cast_nullable_to_non_nullable
              as List<GroupBasicInfoResponse>?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetAllGroupResponse extends _GetAllGroupResponse {
  _$_GetAllGroupResponse(
      {@JsonKey(name: "message") this.listOfGroups,
      @JsonKey(name: "success") this.success})
      : super._();

  factory _$_GetAllGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetAllGroupResponseFromJson(json);

  @override
  @JsonKey(name: "message")
  final List<GroupBasicInfoResponse>? listOfGroups;
  @override
  @JsonKey(name: "success")
  final bool? success;

  @override
  String toString() {
    return 'GetAllGroupResponse(listOfGroups: $listOfGroups, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAllGroupResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfGroups, listOfGroups) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfGroups), success);

  @JsonKey(ignore: true)
  @override
  _$GetAllGroupResponseCopyWith<_GetAllGroupResponse> get copyWith =>
      __$GetAllGroupResponseCopyWithImpl<_GetAllGroupResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetAllGroupResponseToJson(this);
  }
}

abstract class _GetAllGroupResponse extends GetAllGroupResponse {
  factory _GetAllGroupResponse(
      {@JsonKey(name: "message") List<GroupBasicInfoResponse>? listOfGroups,
      @JsonKey(name: "success") bool? success}) = _$_GetAllGroupResponse;
  _GetAllGroupResponse._() : super._();

  factory _GetAllGroupResponse.fromJson(Map<String, dynamic> json) =
      _$_GetAllGroupResponse.fromJson;

  @override
  @JsonKey(name: "message")
  List<GroupBasicInfoResponse>? get listOfGroups;
  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(ignore: true)
  _$GetAllGroupResponseCopyWith<_GetAllGroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
