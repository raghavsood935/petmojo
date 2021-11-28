// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_of_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfProfilesResponse _$ListOfProfilesResponseFromJson(
    Map<String, dynamic> json) {
  return _ListOfProfilesResponse.fromJson(json);
}

/// @nodoc
class _$ListOfProfilesResponseTearOff {
  const _$ListOfProfilesResponseTearOff();

  _ListOfProfilesResponse call(
      {@JsonKey(name: "profiles") List<ProfileResponse>? listOfProfiles}) {
    return _ListOfProfilesResponse(
      listOfProfiles: listOfProfiles,
    );
  }

  ListOfProfilesResponse fromJson(Map<String, Object?> json) {
    return ListOfProfilesResponse.fromJson(json);
  }
}

/// @nodoc
const $ListOfProfilesResponse = _$ListOfProfilesResponseTearOff();

/// @nodoc
mixin _$ListOfProfilesResponse {
  @JsonKey(name: "profiles")
  List<ProfileResponse>? get listOfProfiles =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfProfilesResponseCopyWith<ListOfProfilesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfProfilesResponseCopyWith<$Res> {
  factory $ListOfProfilesResponseCopyWith(ListOfProfilesResponse value,
          $Res Function(ListOfProfilesResponse) then) =
      _$ListOfProfilesResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "profiles") List<ProfileResponse>? listOfProfiles});
}

/// @nodoc
class _$ListOfProfilesResponseCopyWithImpl<$Res>
    implements $ListOfProfilesResponseCopyWith<$Res> {
  _$ListOfProfilesResponseCopyWithImpl(this._value, this._then);

  final ListOfProfilesResponse _value;
  // ignore: unused_field
  final $Res Function(ListOfProfilesResponse) _then;

  @override
  $Res call({
    Object? listOfProfiles = freezed,
  }) {
    return _then(_value.copyWith(
      listOfProfiles: listOfProfiles == freezed
          ? _value.listOfProfiles
          : listOfProfiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListOfProfilesResponseCopyWith<$Res>
    implements $ListOfProfilesResponseCopyWith<$Res> {
  factory _$ListOfProfilesResponseCopyWith(_ListOfProfilesResponse value,
          $Res Function(_ListOfProfilesResponse) then) =
      __$ListOfProfilesResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "profiles") List<ProfileResponse>? listOfProfiles});
}

/// @nodoc
class __$ListOfProfilesResponseCopyWithImpl<$Res>
    extends _$ListOfProfilesResponseCopyWithImpl<$Res>
    implements _$ListOfProfilesResponseCopyWith<$Res> {
  __$ListOfProfilesResponseCopyWithImpl(_ListOfProfilesResponse _value,
      $Res Function(_ListOfProfilesResponse) _then)
      : super(_value, (v) => _then(v as _ListOfProfilesResponse));

  @override
  _ListOfProfilesResponse get _value => super._value as _ListOfProfilesResponse;

  @override
  $Res call({
    Object? listOfProfiles = freezed,
  }) {
    return _then(_ListOfProfilesResponse(
      listOfProfiles: listOfProfiles == freezed
          ? _value.listOfProfiles
          : listOfProfiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfProfilesResponse extends _ListOfProfilesResponse {
  _$_ListOfProfilesResponse({@JsonKey(name: "profiles") this.listOfProfiles})
      : super._();

  factory _$_ListOfProfilesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListOfProfilesResponseFromJson(json);

  @override
  @JsonKey(name: "profiles")
  final List<ProfileResponse>? listOfProfiles;

  @override
  String toString() {
    return 'ListOfProfilesResponse(listOfProfiles: $listOfProfiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListOfProfilesResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfProfiles, listOfProfiles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfProfiles));

  @JsonKey(ignore: true)
  @override
  _$ListOfProfilesResponseCopyWith<_ListOfProfilesResponse> get copyWith =>
      __$ListOfProfilesResponseCopyWithImpl<_ListOfProfilesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfProfilesResponseToJson(this);
  }
}

abstract class _ListOfProfilesResponse extends ListOfProfilesResponse {
  factory _ListOfProfilesResponse(
          {@JsonKey(name: "profiles") List<ProfileResponse>? listOfProfiles}) =
      _$_ListOfProfilesResponse;
  _ListOfProfilesResponse._() : super._();

  factory _ListOfProfilesResponse.fromJson(Map<String, dynamic> json) =
      _$_ListOfProfilesResponse.fromJson;

  @override
  @JsonKey(name: "profiles")
  List<ProfileResponse>? get listOfProfiles;
  @override
  @JsonKey(ignore: true)
  _$ListOfProfilesResponseCopyWith<_ListOfProfilesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
