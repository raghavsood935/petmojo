// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_joined_groups_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetJoinedGroupResponse _$GetJoinedGroupResponseFromJson(
    Map<String, dynamic> json) {
  return _GetJoinedGroupResponse.fromJson(json);
}

/// @nodoc
class _$GetJoinedGroupResponseTearOff {
  const _$GetJoinedGroupResponseTearOff();

  _GetJoinedGroupResponse call(
      {@JsonKey(name: "message")
          List<GetJoinedGroupInfoResponse>? listOfJoinedGroup,
      @JsonKey(name: "success")
          bool? success}) {
    return _GetJoinedGroupResponse(
      listOfJoinedGroup: listOfJoinedGroup,
      success: success,
    );
  }

  GetJoinedGroupResponse fromJson(Map<String, Object?> json) {
    return GetJoinedGroupResponse.fromJson(json);
  }
}

/// @nodoc
const $GetJoinedGroupResponse = _$GetJoinedGroupResponseTearOff();

/// @nodoc
mixin _$GetJoinedGroupResponse {
  @JsonKey(name: "message")
  List<GetJoinedGroupInfoResponse>? get listOfJoinedGroup =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetJoinedGroupResponseCopyWith<GetJoinedGroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetJoinedGroupResponseCopyWith<$Res> {
  factory $GetJoinedGroupResponseCopyWith(GetJoinedGroupResponse value,
          $Res Function(GetJoinedGroupResponse) then) =
      _$GetJoinedGroupResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "message")
          List<GetJoinedGroupInfoResponse>? listOfJoinedGroup,
      @JsonKey(name: "success")
          bool? success});
}

/// @nodoc
class _$GetJoinedGroupResponseCopyWithImpl<$Res>
    implements $GetJoinedGroupResponseCopyWith<$Res> {
  _$GetJoinedGroupResponseCopyWithImpl(this._value, this._then);

  final GetJoinedGroupResponse _value;
  // ignore: unused_field
  final $Res Function(GetJoinedGroupResponse) _then;

  @override
  $Res call({
    Object? listOfJoinedGroup = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      listOfJoinedGroup: listOfJoinedGroup == freezed
          ? _value.listOfJoinedGroup
          : listOfJoinedGroup // ignore: cast_nullable_to_non_nullable
              as List<GetJoinedGroupInfoResponse>?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$GetJoinedGroupResponseCopyWith<$Res>
    implements $GetJoinedGroupResponseCopyWith<$Res> {
  factory _$GetJoinedGroupResponseCopyWith(_GetJoinedGroupResponse value,
          $Res Function(_GetJoinedGroupResponse) then) =
      __$GetJoinedGroupResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "message")
          List<GetJoinedGroupInfoResponse>? listOfJoinedGroup,
      @JsonKey(name: "success")
          bool? success});
}

/// @nodoc
class __$GetJoinedGroupResponseCopyWithImpl<$Res>
    extends _$GetJoinedGroupResponseCopyWithImpl<$Res>
    implements _$GetJoinedGroupResponseCopyWith<$Res> {
  __$GetJoinedGroupResponseCopyWithImpl(_GetJoinedGroupResponse _value,
      $Res Function(_GetJoinedGroupResponse) _then)
      : super(_value, (v) => _then(v as _GetJoinedGroupResponse));

  @override
  _GetJoinedGroupResponse get _value => super._value as _GetJoinedGroupResponse;

  @override
  $Res call({
    Object? listOfJoinedGroup = freezed,
    Object? success = freezed,
  }) {
    return _then(_GetJoinedGroupResponse(
      listOfJoinedGroup: listOfJoinedGroup == freezed
          ? _value.listOfJoinedGroup
          : listOfJoinedGroup // ignore: cast_nullable_to_non_nullable
              as List<GetJoinedGroupInfoResponse>?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetJoinedGroupResponse extends _GetJoinedGroupResponse {
  _$_GetJoinedGroupResponse(
      {@JsonKey(name: "message") this.listOfJoinedGroup,
      @JsonKey(name: "success") this.success})
      : super._();

  factory _$_GetJoinedGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetJoinedGroupResponseFromJson(json);

  @override
  @JsonKey(name: "message")
  final List<GetJoinedGroupInfoResponse>? listOfJoinedGroup;
  @override
  @JsonKey(name: "success")
  final bool? success;

  @override
  String toString() {
    return 'GetJoinedGroupResponse(listOfJoinedGroup: $listOfJoinedGroup, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetJoinedGroupResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfJoinedGroup, listOfJoinedGroup) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(listOfJoinedGroup), success);

  @JsonKey(ignore: true)
  @override
  _$GetJoinedGroupResponseCopyWith<_GetJoinedGroupResponse> get copyWith =>
      __$GetJoinedGroupResponseCopyWithImpl<_GetJoinedGroupResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetJoinedGroupResponseToJson(this);
  }
}

abstract class _GetJoinedGroupResponse extends GetJoinedGroupResponse {
  factory _GetJoinedGroupResponse(
      {@JsonKey(name: "message")
          List<GetJoinedGroupInfoResponse>? listOfJoinedGroup,
      @JsonKey(name: "success")
          bool? success}) = _$_GetJoinedGroupResponse;
  _GetJoinedGroupResponse._() : super._();

  factory _GetJoinedGroupResponse.fromJson(Map<String, dynamic> json) =
      _$_GetJoinedGroupResponse.fromJson;

  @override
  @JsonKey(name: "message")
  List<GetJoinedGroupInfoResponse>? get listOfJoinedGroup;
  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(ignore: true)
  _$GetJoinedGroupResponseCopyWith<_GetJoinedGroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GetJoinedGroupInfoResponse _$GetJoinedGroupInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _GetJoinedGroupInfoResponse.fromJson(json);
}

/// @nodoc
class _$GetJoinedGroupInfoResponseTearOff {
  const _$GetJoinedGroupInfoResponseTearOff();

  _GetJoinedGroupInfoResponse call(
      {@JsonKey(name: "isAdmin") bool? isAdmin,
      @JsonKey(name: "group") GroupBasicInfoResponse? group}) {
    return _GetJoinedGroupInfoResponse(
      isAdmin: isAdmin,
      group: group,
    );
  }

  GetJoinedGroupInfoResponse fromJson(Map<String, Object?> json) {
    return GetJoinedGroupInfoResponse.fromJson(json);
  }
}

/// @nodoc
const $GetJoinedGroupInfoResponse = _$GetJoinedGroupInfoResponseTearOff();

/// @nodoc
mixin _$GetJoinedGroupInfoResponse {
  @JsonKey(name: "isAdmin")
  bool? get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: "group")
  GroupBasicInfoResponse? get group => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetJoinedGroupInfoResponseCopyWith<GetJoinedGroupInfoResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetJoinedGroupInfoResponseCopyWith<$Res> {
  factory $GetJoinedGroupInfoResponseCopyWith(GetJoinedGroupInfoResponse value,
          $Res Function(GetJoinedGroupInfoResponse) then) =
      _$GetJoinedGroupInfoResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "isAdmin") bool? isAdmin,
      @JsonKey(name: "group") GroupBasicInfoResponse? group});

  $GroupBasicInfoResponseCopyWith<$Res>? get group;
}

/// @nodoc
class _$GetJoinedGroupInfoResponseCopyWithImpl<$Res>
    implements $GetJoinedGroupInfoResponseCopyWith<$Res> {
  _$GetJoinedGroupInfoResponseCopyWithImpl(this._value, this._then);

  final GetJoinedGroupInfoResponse _value;
  // ignore: unused_field
  final $Res Function(GetJoinedGroupInfoResponse) _then;

  @override
  $Res call({
    Object? isAdmin = freezed,
    Object? group = freezed,
  }) {
    return _then(_value.copyWith(
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$GetJoinedGroupInfoResponseCopyWith<$Res>
    implements $GetJoinedGroupInfoResponseCopyWith<$Res> {
  factory _$GetJoinedGroupInfoResponseCopyWith(
          _GetJoinedGroupInfoResponse value,
          $Res Function(_GetJoinedGroupInfoResponse) then) =
      __$GetJoinedGroupInfoResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "isAdmin") bool? isAdmin,
      @JsonKey(name: "group") GroupBasicInfoResponse? group});

  @override
  $GroupBasicInfoResponseCopyWith<$Res>? get group;
}

/// @nodoc
class __$GetJoinedGroupInfoResponseCopyWithImpl<$Res>
    extends _$GetJoinedGroupInfoResponseCopyWithImpl<$Res>
    implements _$GetJoinedGroupInfoResponseCopyWith<$Res> {
  __$GetJoinedGroupInfoResponseCopyWithImpl(_GetJoinedGroupInfoResponse _value,
      $Res Function(_GetJoinedGroupInfoResponse) _then)
      : super(_value, (v) => _then(v as _GetJoinedGroupInfoResponse));

  @override
  _GetJoinedGroupInfoResponse get _value =>
      super._value as _GetJoinedGroupInfoResponse;

  @override
  $Res call({
    Object? isAdmin = freezed,
    Object? group = freezed,
  }) {
    return _then(_GetJoinedGroupInfoResponse(
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupBasicInfoResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetJoinedGroupInfoResponse extends _GetJoinedGroupInfoResponse {
  _$_GetJoinedGroupInfoResponse(
      {@JsonKey(name: "isAdmin") this.isAdmin,
      @JsonKey(name: "group") this.group})
      : super._();

  factory _$_GetJoinedGroupInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetJoinedGroupInfoResponseFromJson(json);

  @override
  @JsonKey(name: "isAdmin")
  final bool? isAdmin;
  @override
  @JsonKey(name: "group")
  final GroupBasicInfoResponse? group;

  @override
  String toString() {
    return 'GetJoinedGroupInfoResponse(isAdmin: $isAdmin, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetJoinedGroupInfoResponse &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.group, group) || other.group == group));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAdmin, group);

  @JsonKey(ignore: true)
  @override
  _$GetJoinedGroupInfoResponseCopyWith<_GetJoinedGroupInfoResponse>
      get copyWith => __$GetJoinedGroupInfoResponseCopyWithImpl<
          _GetJoinedGroupInfoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetJoinedGroupInfoResponseToJson(this);
  }
}

abstract class _GetJoinedGroupInfoResponse extends GetJoinedGroupInfoResponse {
  factory _GetJoinedGroupInfoResponse(
          {@JsonKey(name: "isAdmin") bool? isAdmin,
          @JsonKey(name: "group") GroupBasicInfoResponse? group}) =
      _$_GetJoinedGroupInfoResponse;
  _GetJoinedGroupInfoResponse._() : super._();

  factory _GetJoinedGroupInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_GetJoinedGroupInfoResponse.fromJson;

  @override
  @JsonKey(name: "isAdmin")
  bool? get isAdmin;
  @override
  @JsonKey(name: "group")
  GroupBasicInfoResponse? get group;
  @override
  @JsonKey(ignore: true)
  _$GetJoinedGroupInfoResponseCopyWith<_GetJoinedGroupInfoResponse>
      get copyWith => throw _privateConstructorUsedError;
}
