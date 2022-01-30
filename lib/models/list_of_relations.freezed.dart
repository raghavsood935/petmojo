// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_of_relations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfRelationsResponse _$ListOfRelationsResponseFromJson(
    Map<String, dynamic> json) {
  return _ListOfRelationsResponse.fromJson(json);
}

/// @nodoc
class _$ListOfRelationsResponseTearOff {
  const _$ListOfRelationsResponseTearOff();

  _ListOfRelationsResponse call(
      {@JsonKey(name: "relatives") List<RelationsResponse>? listOfRelations}) {
    return _ListOfRelationsResponse(
      listOfRelations: listOfRelations,
    );
  }

  ListOfRelationsResponse fromJson(Map<String, Object?> json) {
    return ListOfRelationsResponse.fromJson(json);
  }
}

/// @nodoc
const $ListOfRelationsResponse = _$ListOfRelationsResponseTearOff();

/// @nodoc
mixin _$ListOfRelationsResponse {
  @JsonKey(name: "relatives")
  List<RelationsResponse>? get listOfRelations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfRelationsResponseCopyWith<ListOfRelationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfRelationsResponseCopyWith<$Res> {
  factory $ListOfRelationsResponseCopyWith(ListOfRelationsResponse value,
          $Res Function(ListOfRelationsResponse) then) =
      _$ListOfRelationsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "relatives") List<RelationsResponse>? listOfRelations});
}

/// @nodoc
class _$ListOfRelationsResponseCopyWithImpl<$Res>
    implements $ListOfRelationsResponseCopyWith<$Res> {
  _$ListOfRelationsResponseCopyWithImpl(this._value, this._then);

  final ListOfRelationsResponse _value;
  // ignore: unused_field
  final $Res Function(ListOfRelationsResponse) _then;

  @override
  $Res call({
    Object? listOfRelations = freezed,
  }) {
    return _then(_value.copyWith(
      listOfRelations: listOfRelations == freezed
          ? _value.listOfRelations
          : listOfRelations // ignore: cast_nullable_to_non_nullable
              as List<RelationsResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListOfRelationsResponseCopyWith<$Res>
    implements $ListOfRelationsResponseCopyWith<$Res> {
  factory _$ListOfRelationsResponseCopyWith(_ListOfRelationsResponse value,
          $Res Function(_ListOfRelationsResponse) then) =
      __$ListOfRelationsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "relatives") List<RelationsResponse>? listOfRelations});
}

/// @nodoc
class __$ListOfRelationsResponseCopyWithImpl<$Res>
    extends _$ListOfRelationsResponseCopyWithImpl<$Res>
    implements _$ListOfRelationsResponseCopyWith<$Res> {
  __$ListOfRelationsResponseCopyWithImpl(_ListOfRelationsResponse _value,
      $Res Function(_ListOfRelationsResponse) _then)
      : super(_value, (v) => _then(v as _ListOfRelationsResponse));

  @override
  _ListOfRelationsResponse get _value =>
      super._value as _ListOfRelationsResponse;

  @override
  $Res call({
    Object? listOfRelations = freezed,
  }) {
    return _then(_ListOfRelationsResponse(
      listOfRelations: listOfRelations == freezed
          ? _value.listOfRelations
          : listOfRelations // ignore: cast_nullable_to_non_nullable
              as List<RelationsResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfRelationsResponse extends _ListOfRelationsResponse {
  _$_ListOfRelationsResponse({@JsonKey(name: "relatives") this.listOfRelations})
      : super._();

  factory _$_ListOfRelationsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListOfRelationsResponseFromJson(json);

  @override
  @JsonKey(name: "relatives")
  final List<RelationsResponse>? listOfRelations;

  @override
  String toString() {
    return 'ListOfRelationsResponse(listOfRelations: $listOfRelations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListOfRelationsResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfRelations, listOfRelations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfRelations));

  @JsonKey(ignore: true)
  @override
  _$ListOfRelationsResponseCopyWith<_ListOfRelationsResponse> get copyWith =>
      __$ListOfRelationsResponseCopyWithImpl<_ListOfRelationsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfRelationsResponseToJson(this);
  }
}

abstract class _ListOfRelationsResponse extends ListOfRelationsResponse {
  factory _ListOfRelationsResponse(
          {@JsonKey(name: "relatives")
              List<RelationsResponse>? listOfRelations}) =
      _$_ListOfRelationsResponse;
  _ListOfRelationsResponse._() : super._();

  factory _ListOfRelationsResponse.fromJson(Map<String, dynamic> json) =
      _$_ListOfRelationsResponse.fromJson;

  @override
  @JsonKey(name: "relatives")
  List<RelationsResponse>? get listOfRelations;
  @override
  @JsonKey(ignore: true)
  _$ListOfRelationsResponseCopyWith<_ListOfRelationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RelationsResponse _$RelationsResponseFromJson(Map<String, dynamic> json) {
  return _RelationsResponse.fromJson(json);
}

/// @nodoc
class _$RelationsResponseTearOff {
  const _$RelationsResponseTearOff();

  _RelationsResponse call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "relation") String? relation,
      @JsonKey(name: "animal") AnimalProfileResponse? animal,
      @JsonKey(name: "status") int? status}) {
    return _RelationsResponse(
      confirmed: confirmed,
      relation: relation,
      animal: animal,
      status: status,
    );
  }

  RelationsResponse fromJson(Map<String, Object?> json) {
    return RelationsResponse.fromJson(json);
  }
}

/// @nodoc
const $RelationsResponse = _$RelationsResponseTearOff();

/// @nodoc
mixin _$RelationsResponse {
  @JsonKey(name: "confirmed")
  bool? get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "relation")
  String? get relation => throw _privateConstructorUsedError;
  @JsonKey(name: "animal")
  AnimalProfileResponse? get animal => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelationsResponseCopyWith<RelationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationsResponseCopyWith<$Res> {
  factory $RelationsResponseCopyWith(
          RelationsResponse value, $Res Function(RelationsResponse) then) =
      _$RelationsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "relation") String? relation,
      @JsonKey(name: "animal") AnimalProfileResponse? animal,
      @JsonKey(name: "status") int? status});

  $AnimalProfileResponseCopyWith<$Res>? get animal;
}

/// @nodoc
class _$RelationsResponseCopyWithImpl<$Res>
    implements $RelationsResponseCopyWith<$Res> {
  _$RelationsResponseCopyWithImpl(this._value, this._then);

  final RelationsResponse _value;
  // ignore: unused_field
  final $Res Function(RelationsResponse) _then;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? relation = freezed,
    Object? animal = freezed,
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
      animal: animal == freezed
          ? _value.animal
          : animal // ignore: cast_nullable_to_non_nullable
              as AnimalProfileResponse?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $AnimalProfileResponseCopyWith<$Res>? get animal {
    if (_value.animal == null) {
      return null;
    }

    return $AnimalProfileResponseCopyWith<$Res>(_value.animal!, (value) {
      return _then(_value.copyWith(animal: value));
    });
  }
}

/// @nodoc
abstract class _$RelationsResponseCopyWith<$Res>
    implements $RelationsResponseCopyWith<$Res> {
  factory _$RelationsResponseCopyWith(
          _RelationsResponse value, $Res Function(_RelationsResponse) then) =
      __$RelationsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "relation") String? relation,
      @JsonKey(name: "animal") AnimalProfileResponse? animal,
      @JsonKey(name: "status") int? status});

  @override
  $AnimalProfileResponseCopyWith<$Res>? get animal;
}

/// @nodoc
class __$RelationsResponseCopyWithImpl<$Res>
    extends _$RelationsResponseCopyWithImpl<$Res>
    implements _$RelationsResponseCopyWith<$Res> {
  __$RelationsResponseCopyWithImpl(
      _RelationsResponse _value, $Res Function(_RelationsResponse) _then)
      : super(_value, (v) => _then(v as _RelationsResponse));

  @override
  _RelationsResponse get _value => super._value as _RelationsResponse;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? relation = freezed,
    Object? animal = freezed,
    Object? status = freezed,
  }) {
    return _then(_RelationsResponse(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      relation: relation == freezed
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String?,
      animal: animal == freezed
          ? _value.animal
          : animal // ignore: cast_nullable_to_non_nullable
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
class _$_RelationsResponse extends _RelationsResponse {
  _$_RelationsResponse(
      {@JsonKey(name: "confirmed") this.confirmed,
      @JsonKey(name: "relation") this.relation,
      @JsonKey(name: "animal") this.animal,
      @JsonKey(name: "status") this.status})
      : super._();

  factory _$_RelationsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RelationsResponseFromJson(json);

  @override
  @JsonKey(name: "confirmed")
  final bool? confirmed;
  @override
  @JsonKey(name: "relation")
  final String? relation;
  @override
  @JsonKey(name: "animal")
  final AnimalProfileResponse? animal;
  @override
  @JsonKey(name: "status")
  final int? status;

  @override
  String toString() {
    return 'RelationsResponse(confirmed: $confirmed, relation: $relation, animal: $animal, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RelationsResponse &&
            const DeepCollectionEquality().equals(other.confirmed, confirmed) &&
            const DeepCollectionEquality().equals(other.relation, relation) &&
            const DeepCollectionEquality().equals(other.animal, animal) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(confirmed),
      const DeepCollectionEquality().hash(relation),
      const DeepCollectionEquality().hash(animal),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$RelationsResponseCopyWith<_RelationsResponse> get copyWith =>
      __$RelationsResponseCopyWithImpl<_RelationsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelationsResponseToJson(this);
  }
}

abstract class _RelationsResponse extends RelationsResponse {
  factory _RelationsResponse(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "relation") String? relation,
      @JsonKey(name: "animal") AnimalProfileResponse? animal,
      @JsonKey(name: "status") int? status}) = _$_RelationsResponse;
  _RelationsResponse._() : super._();

  factory _RelationsResponse.fromJson(Map<String, dynamic> json) =
      _$_RelationsResponse.fromJson;

  @override
  @JsonKey(name: "confirmed")
  bool? get confirmed;
  @override
  @JsonKey(name: "relation")
  String? get relation;
  @override
  @JsonKey(name: "animal")
  AnimalProfileResponse? get animal;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$RelationsResponseCopyWith<_RelationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
