// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_of_pending_relation_requests.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfRelationsRequestResponse _$ListOfRelationsRequestResponseFromJson(
    Map<String, dynamic> json) {
  return _ListOfRelationsRequestResponse.fromJson(json);
}

/// @nodoc
class _$ListOfRelationsRequestResponseTearOff {
  const _$ListOfRelationsRequestResponseTearOff();

  _ListOfRelationsRequestResponse call(
      {@JsonKey(name: "pendingIncomingRequests")
          List<RelationRequestResponse>? listOfRelationRequests}) {
    return _ListOfRelationsRequestResponse(
      listOfRelationRequests: listOfRelationRequests,
    );
  }

  ListOfRelationsRequestResponse fromJson(Map<String, Object?> json) {
    return ListOfRelationsRequestResponse.fromJson(json);
  }
}

/// @nodoc
const $ListOfRelationsRequestResponse =
    _$ListOfRelationsRequestResponseTearOff();

/// @nodoc
mixin _$ListOfRelationsRequestResponse {
  @JsonKey(name: "pendingIncomingRequests")
  List<RelationRequestResponse>? get listOfRelationRequests =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfRelationsRequestResponseCopyWith<ListOfRelationsRequestResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfRelationsRequestResponseCopyWith<$Res> {
  factory $ListOfRelationsRequestResponseCopyWith(
          ListOfRelationsRequestResponse value,
          $Res Function(ListOfRelationsRequestResponse) then) =
      _$ListOfRelationsRequestResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "pendingIncomingRequests")
          List<RelationRequestResponse>? listOfRelationRequests});
}

/// @nodoc
class _$ListOfRelationsRequestResponseCopyWithImpl<$Res>
    implements $ListOfRelationsRequestResponseCopyWith<$Res> {
  _$ListOfRelationsRequestResponseCopyWithImpl(this._value, this._then);

  final ListOfRelationsRequestResponse _value;
  // ignore: unused_field
  final $Res Function(ListOfRelationsRequestResponse) _then;

  @override
  $Res call({
    Object? listOfRelationRequests = freezed,
  }) {
    return _then(_value.copyWith(
      listOfRelationRequests: listOfRelationRequests == freezed
          ? _value.listOfRelationRequests
          : listOfRelationRequests // ignore: cast_nullable_to_non_nullable
              as List<RelationRequestResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListOfRelationsRequestResponseCopyWith<$Res>
    implements $ListOfRelationsRequestResponseCopyWith<$Res> {
  factory _$ListOfRelationsRequestResponseCopyWith(
          _ListOfRelationsRequestResponse value,
          $Res Function(_ListOfRelationsRequestResponse) then) =
      __$ListOfRelationsRequestResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "pendingIncomingRequests")
          List<RelationRequestResponse>? listOfRelationRequests});
}

/// @nodoc
class __$ListOfRelationsRequestResponseCopyWithImpl<$Res>
    extends _$ListOfRelationsRequestResponseCopyWithImpl<$Res>
    implements _$ListOfRelationsRequestResponseCopyWith<$Res> {
  __$ListOfRelationsRequestResponseCopyWithImpl(
      _ListOfRelationsRequestResponse _value,
      $Res Function(_ListOfRelationsRequestResponse) _then)
      : super(_value, (v) => _then(v as _ListOfRelationsRequestResponse));

  @override
  _ListOfRelationsRequestResponse get _value =>
      super._value as _ListOfRelationsRequestResponse;

  @override
  $Res call({
    Object? listOfRelationRequests = freezed,
  }) {
    return _then(_ListOfRelationsRequestResponse(
      listOfRelationRequests: listOfRelationRequests == freezed
          ? _value.listOfRelationRequests
          : listOfRelationRequests // ignore: cast_nullable_to_non_nullable
              as List<RelationRequestResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfRelationsRequestResponse
    extends _ListOfRelationsRequestResponse {
  _$_ListOfRelationsRequestResponse(
      {@JsonKey(name: "pendingIncomingRequests") this.listOfRelationRequests})
      : super._();

  factory _$_ListOfRelationsRequestResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_ListOfRelationsRequestResponseFromJson(json);

  @override
  @JsonKey(name: "pendingIncomingRequests")
  final List<RelationRequestResponse>? listOfRelationRequests;

  @override
  String toString() {
    return 'ListOfRelationsRequestResponse(listOfRelationRequests: $listOfRelationRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListOfRelationsRequestResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfRelationRequests, listOfRelationRequests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfRelationRequests));

  @JsonKey(ignore: true)
  @override
  _$ListOfRelationsRequestResponseCopyWith<_ListOfRelationsRequestResponse>
      get copyWith => __$ListOfRelationsRequestResponseCopyWithImpl<
          _ListOfRelationsRequestResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfRelationsRequestResponseToJson(this);
  }
}

abstract class _ListOfRelationsRequestResponse
    extends ListOfRelationsRequestResponse {
  factory _ListOfRelationsRequestResponse(
          {@JsonKey(name: "pendingIncomingRequests")
              List<RelationRequestResponse>? listOfRelationRequests}) =
      _$_ListOfRelationsRequestResponse;
  _ListOfRelationsRequestResponse._() : super._();

  factory _ListOfRelationsRequestResponse.fromJson(Map<String, dynamic> json) =
      _$_ListOfRelationsRequestResponse.fromJson;

  @override
  @JsonKey(name: "pendingIncomingRequests")
  List<RelationRequestResponse>? get listOfRelationRequests;
  @override
  @JsonKey(ignore: true)
  _$ListOfRelationsRequestResponseCopyWith<_ListOfRelationsRequestResponse>
      get copyWith => throw _privateConstructorUsedError;
}

RelationRequestResponse _$RelationRequestResponseFromJson(
    Map<String, dynamic> json) {
  return _RelationRequestResponse.fromJson(json);
}

/// @nodoc
class _$RelationRequestResponseTearOff {
  const _$RelationRequestResponseTearOff();

  _RelationRequestResponse call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "relation") String? relation,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "animal") AnimalProfileResponse? animalProfile,
      @JsonKey(name: "status") int? status}) {
    return _RelationRequestResponse(
      confirmed: confirmed,
      relation: relation,
      Id: Id,
      animalProfile: animalProfile,
      status: status,
    );
  }

  RelationRequestResponse fromJson(Map<String, Object?> json) {
    return RelationRequestResponse.fromJson(json);
  }
}

/// @nodoc
const $RelationRequestResponse = _$RelationRequestResponseTearOff();

/// @nodoc
mixin _$RelationRequestResponse {
  @JsonKey(name: "confirmed")
  bool? get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "relation")
  String? get relation => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "animal")
  AnimalProfileResponse? get animalProfile =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelationRequestResponseCopyWith<RelationRequestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationRequestResponseCopyWith<$Res> {
  factory $RelationRequestResponseCopyWith(RelationRequestResponse value,
          $Res Function(RelationRequestResponse) then) =
      _$RelationRequestResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "relation") String? relation,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "animal") AnimalProfileResponse? animalProfile,
      @JsonKey(name: "status") int? status});

  $AnimalProfileResponseCopyWith<$Res>? get animalProfile;
}

/// @nodoc
class _$RelationRequestResponseCopyWithImpl<$Res>
    implements $RelationRequestResponseCopyWith<$Res> {
  _$RelationRequestResponseCopyWithImpl(this._value, this._then);

  final RelationRequestResponse _value;
  // ignore: unused_field
  final $Res Function(RelationRequestResponse) _then;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? relation = freezed,
    Object? Id = freezed,
    Object? animalProfile = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      relation: relation == freezed
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      animalProfile: animalProfile == freezed
          ? _value.animalProfile
          : animalProfile // ignore: cast_nullable_to_non_nullable
              as AnimalProfileResponse?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $AnimalProfileResponseCopyWith<$Res>? get animalProfile {
    if (_value.animalProfile == null) {
      return null;
    }

    return $AnimalProfileResponseCopyWith<$Res>(_value.animalProfile!, (value) {
      return _then(_value.copyWith(animalProfile: value));
    });
  }
}

/// @nodoc
abstract class _$RelationRequestResponseCopyWith<$Res>
    implements $RelationRequestResponseCopyWith<$Res> {
  factory _$RelationRequestResponseCopyWith(_RelationRequestResponse value,
          $Res Function(_RelationRequestResponse) then) =
      __$RelationRequestResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "relation") String? relation,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "animal") AnimalProfileResponse? animalProfile,
      @JsonKey(name: "status") int? status});

  @override
  $AnimalProfileResponseCopyWith<$Res>? get animalProfile;
}

/// @nodoc
class __$RelationRequestResponseCopyWithImpl<$Res>
    extends _$RelationRequestResponseCopyWithImpl<$Res>
    implements _$RelationRequestResponseCopyWith<$Res> {
  __$RelationRequestResponseCopyWithImpl(_RelationRequestResponse _value,
      $Res Function(_RelationRequestResponse) _then)
      : super(_value, (v) => _then(v as _RelationRequestResponse));

  @override
  _RelationRequestResponse get _value =>
      super._value as _RelationRequestResponse;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? relation = freezed,
    Object? Id = freezed,
    Object? animalProfile = freezed,
    Object? status = freezed,
  }) {
    return _then(_RelationRequestResponse(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      relation: relation == freezed
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      animalProfile: animalProfile == freezed
          ? _value.animalProfile
          : animalProfile // ignore: cast_nullable_to_non_nullable
              as AnimalProfileResponse?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelationRequestResponse extends _RelationRequestResponse {
  _$_RelationRequestResponse(
      {@JsonKey(name: "confirmed") this.confirmed,
      @JsonKey(name: "relation") this.relation,
      @JsonKey(name: "_id") this.Id,
      @JsonKey(name: "animal") this.animalProfile,
      @JsonKey(name: "status") this.status})
      : super._();

  factory _$_RelationRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RelationRequestResponseFromJson(json);

  @override
  @JsonKey(name: "confirmed")
  final bool? confirmed;
  @override
  @JsonKey(name: "relation")
  final String? relation;
  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "animal")
  final AnimalProfileResponse? animalProfile;
  @override
  @JsonKey(name: "status")
  final int? status;

  @override
  String toString() {
    return 'RelationRequestResponse(confirmed: $confirmed, relation: $relation, Id: $Id, animalProfile: $animalProfile, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RelationRequestResponse &&
            const DeepCollectionEquality().equals(other.confirmed, confirmed) &&
            const DeepCollectionEquality().equals(other.relation, relation) &&
            const DeepCollectionEquality().equals(other.Id, Id) &&
            const DeepCollectionEquality()
                .equals(other.animalProfile, animalProfile) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(confirmed),
      const DeepCollectionEquality().hash(relation),
      const DeepCollectionEquality().hash(Id),
      const DeepCollectionEquality().hash(animalProfile),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$RelationRequestResponseCopyWith<_RelationRequestResponse> get copyWith =>
      __$RelationRequestResponseCopyWithImpl<_RelationRequestResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelationRequestResponseToJson(this);
  }
}

abstract class _RelationRequestResponse extends RelationRequestResponse {
  factory _RelationRequestResponse(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "relation") String? relation,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "animal") AnimalProfileResponse? animalProfile,
      @JsonKey(name: "status") int? status}) = _$_RelationRequestResponse;
  _RelationRequestResponse._() : super._();

  factory _RelationRequestResponse.fromJson(Map<String, dynamic> json) =
      _$_RelationRequestResponse.fromJson;

  @override
  @JsonKey(name: "confirmed")
  bool? get confirmed;
  @override
  @JsonKey(name: "relation")
  String? get relation;
  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "animal")
  AnimalProfileResponse? get animalProfile;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$RelationRequestResponseCopyWith<_RelationRequestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
