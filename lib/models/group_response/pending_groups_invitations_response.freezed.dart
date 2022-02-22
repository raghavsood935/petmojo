// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pending_groups_invitations_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PendingGroupInvitationResponse _$PendingGroupInvitationResponseFromJson(
    Map<String, dynamic> json) {
  return _PendingGroupInvitationResponse.fromJson(json);
}

/// @nodoc
class _$PendingGroupInvitationResponseTearOff {
  const _$PendingGroupInvitationResponseTearOff();

  _PendingGroupInvitationResponse call(
      {@JsonKey(name: "message")
          List<GroupInvitationResponse>? listOfInvitations,
      @JsonKey(name: "success")
          bool? success}) {
    return _PendingGroupInvitationResponse(
      listOfInvitations: listOfInvitations,
      success: success,
    );
  }

  PendingGroupInvitationResponse fromJson(Map<String, Object?> json) {
    return PendingGroupInvitationResponse.fromJson(json);
  }
}

/// @nodoc
const $PendingGroupInvitationResponse =
    _$PendingGroupInvitationResponseTearOff();

/// @nodoc
mixin _$PendingGroupInvitationResponse {
  @JsonKey(name: "message")
  List<GroupInvitationResponse>? get listOfInvitations =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PendingGroupInvitationResponseCopyWith<PendingGroupInvitationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingGroupInvitationResponseCopyWith<$Res> {
  factory $PendingGroupInvitationResponseCopyWith(
          PendingGroupInvitationResponse value,
          $Res Function(PendingGroupInvitationResponse) then) =
      _$PendingGroupInvitationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "message")
          List<GroupInvitationResponse>? listOfInvitations,
      @JsonKey(name: "success")
          bool? success});
}

/// @nodoc
class _$PendingGroupInvitationResponseCopyWithImpl<$Res>
    implements $PendingGroupInvitationResponseCopyWith<$Res> {
  _$PendingGroupInvitationResponseCopyWithImpl(this._value, this._then);

  final PendingGroupInvitationResponse _value;
  // ignore: unused_field
  final $Res Function(PendingGroupInvitationResponse) _then;

  @override
  $Res call({
    Object? listOfInvitations = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      listOfInvitations: listOfInvitations == freezed
          ? _value.listOfInvitations
          : listOfInvitations // ignore: cast_nullable_to_non_nullable
              as List<GroupInvitationResponse>?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$PendingGroupInvitationResponseCopyWith<$Res>
    implements $PendingGroupInvitationResponseCopyWith<$Res> {
  factory _$PendingGroupInvitationResponseCopyWith(
          _PendingGroupInvitationResponse value,
          $Res Function(_PendingGroupInvitationResponse) then) =
      __$PendingGroupInvitationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "message")
          List<GroupInvitationResponse>? listOfInvitations,
      @JsonKey(name: "success")
          bool? success});
}

/// @nodoc
class __$PendingGroupInvitationResponseCopyWithImpl<$Res>
    extends _$PendingGroupInvitationResponseCopyWithImpl<$Res>
    implements _$PendingGroupInvitationResponseCopyWith<$Res> {
  __$PendingGroupInvitationResponseCopyWithImpl(
      _PendingGroupInvitationResponse _value,
      $Res Function(_PendingGroupInvitationResponse) _then)
      : super(_value, (v) => _then(v as _PendingGroupInvitationResponse));

  @override
  _PendingGroupInvitationResponse get _value =>
      super._value as _PendingGroupInvitationResponse;

  @override
  $Res call({
    Object? listOfInvitations = freezed,
    Object? success = freezed,
  }) {
    return _then(_PendingGroupInvitationResponse(
      listOfInvitations: listOfInvitations == freezed
          ? _value.listOfInvitations
          : listOfInvitations // ignore: cast_nullable_to_non_nullable
              as List<GroupInvitationResponse>?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PendingGroupInvitationResponse
    extends _PendingGroupInvitationResponse {
  _$_PendingGroupInvitationResponse(
      {@JsonKey(name: "message") this.listOfInvitations,
      @JsonKey(name: "success") this.success})
      : super._();

  factory _$_PendingGroupInvitationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_PendingGroupInvitationResponseFromJson(json);

  @override
  @JsonKey(name: "message")
  final List<GroupInvitationResponse>? listOfInvitations;
  @override
  @JsonKey(name: "success")
  final bool? success;

  @override
  String toString() {
    return 'PendingGroupInvitationResponse(listOfInvitations: $listOfInvitations, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PendingGroupInvitationResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfInvitations, listOfInvitations) &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listOfInvitations),
      const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  _$PendingGroupInvitationResponseCopyWith<_PendingGroupInvitationResponse>
      get copyWith => __$PendingGroupInvitationResponseCopyWithImpl<
          _PendingGroupInvitationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PendingGroupInvitationResponseToJson(this);
  }
}

abstract class _PendingGroupInvitationResponse
    extends PendingGroupInvitationResponse {
  factory _PendingGroupInvitationResponse(
      {@JsonKey(name: "message")
          List<GroupInvitationResponse>? listOfInvitations,
      @JsonKey(name: "success")
          bool? success}) = _$_PendingGroupInvitationResponse;
  _PendingGroupInvitationResponse._() : super._();

  factory _PendingGroupInvitationResponse.fromJson(Map<String, dynamic> json) =
      _$_PendingGroupInvitationResponse.fromJson;

  @override
  @JsonKey(name: "message")
  List<GroupInvitationResponse>? get listOfInvitations;
  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(ignore: true)
  _$PendingGroupInvitationResponseCopyWith<_PendingGroupInvitationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GroupInvitationResponse _$GroupInvitationResponseFromJson(
    Map<String, dynamic> json) {
  return _GroupInvitationResponse.fromJson(json);
}

/// @nodoc
class _$GroupInvitationResponseTearOff {
  const _$GroupInvitationResponseTearOff();

  _GroupInvitationResponse call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "group") GroupBasicInfoResponse? group,
      @JsonKey(name: "personType") String? personType,
      @JsonKey(name: "personInvited") ProfileResponse? personInvited,
      @JsonKey(name: "date") String? date}) {
    return _GroupInvitationResponse(
      Id: Id,
      group: group,
      personType: personType,
      personInvited: personInvited,
      date: date,
    );
  }

  GroupInvitationResponse fromJson(Map<String, Object?> json) {
    return GroupInvitationResponse.fromJson(json);
  }
}

/// @nodoc
const $GroupInvitationResponse = _$GroupInvitationResponseTearOff();

/// @nodoc
mixin _$GroupInvitationResponse {
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "group")
  GroupBasicInfoResponse? get group => throw _privateConstructorUsedError;
  @JsonKey(name: "personType")
  String? get personType => throw _privateConstructorUsedError;
  @JsonKey(name: "personInvited")
  ProfileResponse? get personInvited => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupInvitationResponseCopyWith<GroupInvitationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupInvitationResponseCopyWith<$Res> {
  factory $GroupInvitationResponseCopyWith(GroupInvitationResponse value,
          $Res Function(GroupInvitationResponse) then) =
      _$GroupInvitationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "group") GroupBasicInfoResponse? group,
      @JsonKey(name: "personType") String? personType,
      @JsonKey(name: "personInvited") ProfileResponse? personInvited,
      @JsonKey(name: "date") String? date});

  $GroupBasicInfoResponseCopyWith<$Res>? get group;
  $ProfileResponseCopyWith<$Res>? get personInvited;
}

/// @nodoc
class _$GroupInvitationResponseCopyWithImpl<$Res>
    implements $GroupInvitationResponseCopyWith<$Res> {
  _$GroupInvitationResponseCopyWithImpl(this._value, this._then);

  final GroupInvitationResponse _value;
  // ignore: unused_field
  final $Res Function(GroupInvitationResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? group = freezed,
    Object? personType = freezed,
    Object? personInvited = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupBasicInfoResponse?,
      personType: personType == freezed
          ? _value.personType
          : personType // ignore: cast_nullable_to_non_nullable
              as String?,
      personInvited: personInvited == freezed
          ? _value.personInvited
          : personInvited // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
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

  @override
  $ProfileResponseCopyWith<$Res>? get personInvited {
    if (_value.personInvited == null) {
      return null;
    }

    return $ProfileResponseCopyWith<$Res>(_value.personInvited!, (value) {
      return _then(_value.copyWith(personInvited: value));
    });
  }
}

/// @nodoc
abstract class _$GroupInvitationResponseCopyWith<$Res>
    implements $GroupInvitationResponseCopyWith<$Res> {
  factory _$GroupInvitationResponseCopyWith(_GroupInvitationResponse value,
          $Res Function(_GroupInvitationResponse) then) =
      __$GroupInvitationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "group") GroupBasicInfoResponse? group,
      @JsonKey(name: "personType") String? personType,
      @JsonKey(name: "personInvited") ProfileResponse? personInvited,
      @JsonKey(name: "date") String? date});

  @override
  $GroupBasicInfoResponseCopyWith<$Res>? get group;
  @override
  $ProfileResponseCopyWith<$Res>? get personInvited;
}

/// @nodoc
class __$GroupInvitationResponseCopyWithImpl<$Res>
    extends _$GroupInvitationResponseCopyWithImpl<$Res>
    implements _$GroupInvitationResponseCopyWith<$Res> {
  __$GroupInvitationResponseCopyWithImpl(_GroupInvitationResponse _value,
      $Res Function(_GroupInvitationResponse) _then)
      : super(_value, (v) => _then(v as _GroupInvitationResponse));

  @override
  _GroupInvitationResponse get _value =>
      super._value as _GroupInvitationResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? group = freezed,
    Object? personType = freezed,
    Object? personInvited = freezed,
    Object? date = freezed,
  }) {
    return _then(_GroupInvitationResponse(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupBasicInfoResponse?,
      personType: personType == freezed
          ? _value.personType
          : personType // ignore: cast_nullable_to_non_nullable
              as String?,
      personInvited: personInvited == freezed
          ? _value.personInvited
          : personInvited // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupInvitationResponse extends _GroupInvitationResponse {
  _$_GroupInvitationResponse(
      {@JsonKey(name: "_id") this.Id,
      @JsonKey(name: "group") this.group,
      @JsonKey(name: "personType") this.personType,
      @JsonKey(name: "personInvited") this.personInvited,
      @JsonKey(name: "date") this.date})
      : super._();

  factory _$_GroupInvitationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GroupInvitationResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "group")
  final GroupBasicInfoResponse? group;
  @override
  @JsonKey(name: "personType")
  final String? personType;
  @override
  @JsonKey(name: "personInvited")
  final ProfileResponse? personInvited;
  @override
  @JsonKey(name: "date")
  final String? date;

  @override
  String toString() {
    return 'GroupInvitationResponse(Id: $Id, group: $group, personType: $personType, personInvited: $personInvited, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupInvitationResponse &&
            const DeepCollectionEquality().equals(other.Id, Id) &&
            const DeepCollectionEquality().equals(other.group, group) &&
            const DeepCollectionEquality()
                .equals(other.personType, personType) &&
            const DeepCollectionEquality()
                .equals(other.personInvited, personInvited) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(Id),
      const DeepCollectionEquality().hash(group),
      const DeepCollectionEquality().hash(personType),
      const DeepCollectionEquality().hash(personInvited),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$GroupInvitationResponseCopyWith<_GroupInvitationResponse> get copyWith =>
      __$GroupInvitationResponseCopyWithImpl<_GroupInvitationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupInvitationResponseToJson(this);
  }
}

abstract class _GroupInvitationResponse extends GroupInvitationResponse {
  factory _GroupInvitationResponse(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "group") GroupBasicInfoResponse? group,
      @JsonKey(name: "personType") String? personType,
      @JsonKey(name: "personInvited") ProfileResponse? personInvited,
      @JsonKey(name: "date") String? date}) = _$_GroupInvitationResponse;
  _GroupInvitationResponse._() : super._();

  factory _GroupInvitationResponse.fromJson(Map<String, dynamic> json) =
      _$_GroupInvitationResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "group")
  GroupBasicInfoResponse? get group;
  @override
  @JsonKey(name: "personType")
  String? get personType;
  @override
  @JsonKey(name: "personInvited")
  ProfileResponse? get personInvited;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$GroupInvitationResponseCopyWith<_GroupInvitationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
