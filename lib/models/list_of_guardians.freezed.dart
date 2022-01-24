// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_of_guardians.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfGuardiansResponse _$ListOfGuardiansResponseFromJson(
    Map<String, dynamic> json) {
  return _ListOfGuardiansResponse.fromJson(json);
}

/// @nodoc
class _$ListOfGuardiansResponseTearOff {
  const _$ListOfGuardiansResponseTearOff();

  _ListOfGuardiansResponse call(
      {@JsonKey(name: "guardians") List<GuardianResponse>? listOfGuardians}) {
    return _ListOfGuardiansResponse(
      listOfGuardians: listOfGuardians,
    );
  }

  ListOfGuardiansResponse fromJson(Map<String, Object?> json) {
    return ListOfGuardiansResponse.fromJson(json);
  }
}

/// @nodoc
const $ListOfGuardiansResponse = _$ListOfGuardiansResponseTearOff();

/// @nodoc
mixin _$ListOfGuardiansResponse {
  @JsonKey(name: "guardians")
  List<GuardianResponse>? get listOfGuardians =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfGuardiansResponseCopyWith<ListOfGuardiansResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfGuardiansResponseCopyWith<$Res> {
  factory $ListOfGuardiansResponseCopyWith(ListOfGuardiansResponse value,
          $Res Function(ListOfGuardiansResponse) then) =
      _$ListOfGuardiansResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "guardians") List<GuardianResponse>? listOfGuardians});
}

/// @nodoc
class _$ListOfGuardiansResponseCopyWithImpl<$Res>
    implements $ListOfGuardiansResponseCopyWith<$Res> {
  _$ListOfGuardiansResponseCopyWithImpl(this._value, this._then);

  final ListOfGuardiansResponse _value;
  // ignore: unused_field
  final $Res Function(ListOfGuardiansResponse) _then;

  @override
  $Res call({
    Object? listOfGuardians = freezed,
  }) {
    return _then(_value.copyWith(
      listOfGuardians: listOfGuardians == freezed
          ? _value.listOfGuardians
          : listOfGuardians // ignore: cast_nullable_to_non_nullable
              as List<GuardianResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListOfGuardiansResponseCopyWith<$Res>
    implements $ListOfGuardiansResponseCopyWith<$Res> {
  factory _$ListOfGuardiansResponseCopyWith(_ListOfGuardiansResponse value,
          $Res Function(_ListOfGuardiansResponse) then) =
      __$ListOfGuardiansResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "guardians") List<GuardianResponse>? listOfGuardians});
}

/// @nodoc
class __$ListOfGuardiansResponseCopyWithImpl<$Res>
    extends _$ListOfGuardiansResponseCopyWithImpl<$Res>
    implements _$ListOfGuardiansResponseCopyWith<$Res> {
  __$ListOfGuardiansResponseCopyWithImpl(_ListOfGuardiansResponse _value,
      $Res Function(_ListOfGuardiansResponse) _then)
      : super(_value, (v) => _then(v as _ListOfGuardiansResponse));

  @override
  _ListOfGuardiansResponse get _value =>
      super._value as _ListOfGuardiansResponse;

  @override
  $Res call({
    Object? listOfGuardians = freezed,
  }) {
    return _then(_ListOfGuardiansResponse(
      listOfGuardians: listOfGuardians == freezed
          ? _value.listOfGuardians
          : listOfGuardians // ignore: cast_nullable_to_non_nullable
              as List<GuardianResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfGuardiansResponse extends _ListOfGuardiansResponse {
  _$_ListOfGuardiansResponse({@JsonKey(name: "guardians") this.listOfGuardians})
      : super._();

  factory _$_ListOfGuardiansResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListOfGuardiansResponseFromJson(json);

  @override
  @JsonKey(name: "guardians")
  final List<GuardianResponse>? listOfGuardians;

  @override
  String toString() {
    return 'ListOfGuardiansResponse(listOfGuardians: $listOfGuardians)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListOfGuardiansResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfGuardians, listOfGuardians));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfGuardians));

  @JsonKey(ignore: true)
  @override
  _$ListOfGuardiansResponseCopyWith<_ListOfGuardiansResponse> get copyWith =>
      __$ListOfGuardiansResponseCopyWithImpl<_ListOfGuardiansResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfGuardiansResponseToJson(this);
  }
}

abstract class _ListOfGuardiansResponse extends ListOfGuardiansResponse {
  factory _ListOfGuardiansResponse(
          {@JsonKey(name: "guardians")
              List<GuardianResponse>? listOfGuardians}) =
      _$_ListOfGuardiansResponse;
  _ListOfGuardiansResponse._() : super._();

  factory _ListOfGuardiansResponse.fromJson(Map<String, dynamic> json) =
      _$_ListOfGuardiansResponse.fromJson;

  @override
  @JsonKey(name: "guardians")
  List<GuardianResponse>? get listOfGuardians;
  @override
  @JsonKey(ignore: true)
  _$ListOfGuardiansResponseCopyWith<_ListOfGuardiansResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GuardianResponse _$GuardianResponseFromJson(Map<String, dynamic> json) {
  return _GuardianResponse.fromJson(json);
}

/// @nodoc
class _$GuardianResponseTearOff {
  const _$GuardianResponseTearOff();

  _GuardianResponse call(
      {@JsonKey(name: "confirmed")
          bool? confirmed,
      @JsonKey(name: "user")
          GuardianDetailsResponse? guardianDetailsResponse}) {
    return _GuardianResponse(
      confirmed: confirmed,
      guardianDetailsResponse: guardianDetailsResponse,
    );
  }

  GuardianResponse fromJson(Map<String, Object?> json) {
    return GuardianResponse.fromJson(json);
  }
}

/// @nodoc
const $GuardianResponse = _$GuardianResponseTearOff();

/// @nodoc
mixin _$GuardianResponse {
  @JsonKey(name: "confirmed")
  bool? get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  GuardianDetailsResponse? get guardianDetailsResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuardianResponseCopyWith<GuardianResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuardianResponseCopyWith<$Res> {
  factory $GuardianResponseCopyWith(
          GuardianResponse value, $Res Function(GuardianResponse) then) =
      _$GuardianResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "user") GuardianDetailsResponse? guardianDetailsResponse});

  $GuardianDetailsResponseCopyWith<$Res>? get guardianDetailsResponse;
}

/// @nodoc
class _$GuardianResponseCopyWithImpl<$Res>
    implements $GuardianResponseCopyWith<$Res> {
  _$GuardianResponseCopyWithImpl(this._value, this._then);

  final GuardianResponse _value;
  // ignore: unused_field
  final $Res Function(GuardianResponse) _then;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? guardianDetailsResponse = freezed,
  }) {
    return _then(_value.copyWith(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      guardianDetailsResponse: guardianDetailsResponse == freezed
          ? _value.guardianDetailsResponse
          : guardianDetailsResponse // ignore: cast_nullable_to_non_nullable
              as GuardianDetailsResponse?,
    ));
  }

  @override
  $GuardianDetailsResponseCopyWith<$Res>? get guardianDetailsResponse {
    if (_value.guardianDetailsResponse == null) {
      return null;
    }

    return $GuardianDetailsResponseCopyWith<$Res>(
        _value.guardianDetailsResponse!, (value) {
      return _then(_value.copyWith(guardianDetailsResponse: value));
    });
  }
}

/// @nodoc
abstract class _$GuardianResponseCopyWith<$Res>
    implements $GuardianResponseCopyWith<$Res> {
  factory _$GuardianResponseCopyWith(
          _GuardianResponse value, $Res Function(_GuardianResponse) then) =
      __$GuardianResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "user") GuardianDetailsResponse? guardianDetailsResponse});

  @override
  $GuardianDetailsResponseCopyWith<$Res>? get guardianDetailsResponse;
}

/// @nodoc
class __$GuardianResponseCopyWithImpl<$Res>
    extends _$GuardianResponseCopyWithImpl<$Res>
    implements _$GuardianResponseCopyWith<$Res> {
  __$GuardianResponseCopyWithImpl(
      _GuardianResponse _value, $Res Function(_GuardianResponse) _then)
      : super(_value, (v) => _then(v as _GuardianResponse));

  @override
  _GuardianResponse get _value => super._value as _GuardianResponse;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? guardianDetailsResponse = freezed,
  }) {
    return _then(_GuardianResponse(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      guardianDetailsResponse: guardianDetailsResponse == freezed
          ? _value.guardianDetailsResponse
          : guardianDetailsResponse // ignore: cast_nullable_to_non_nullable
              as GuardianDetailsResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GuardianResponse extends _GuardianResponse {
  _$_GuardianResponse(
      {@JsonKey(name: "confirmed") this.confirmed,
      @JsonKey(name: "user") this.guardianDetailsResponse})
      : super._();

  factory _$_GuardianResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GuardianResponseFromJson(json);

  @override
  @JsonKey(name: "confirmed")
  final bool? confirmed;
  @override
  @JsonKey(name: "user")
  final GuardianDetailsResponse? guardianDetailsResponse;

  @override
  String toString() {
    return 'GuardianResponse(confirmed: $confirmed, guardianDetailsResponse: $guardianDetailsResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GuardianResponse &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(
                    other.guardianDetailsResponse, guardianDetailsResponse) ||
                other.guardianDetailsResponse == guardianDetailsResponse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, confirmed, guardianDetailsResponse);

  @JsonKey(ignore: true)
  @override
  _$GuardianResponseCopyWith<_GuardianResponse> get copyWith =>
      __$GuardianResponseCopyWithImpl<_GuardianResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuardianResponseToJson(this);
  }
}

abstract class _GuardianResponse extends GuardianResponse {
  factory _GuardianResponse(
          {@JsonKey(name: "confirmed")
              bool? confirmed,
          @JsonKey(name: "user")
              GuardianDetailsResponse? guardianDetailsResponse}) =
      _$_GuardianResponse;
  _GuardianResponse._() : super._();

  factory _GuardianResponse.fromJson(Map<String, dynamic> json) =
      _$_GuardianResponse.fromJson;

  @override
  @JsonKey(name: "confirmed")
  bool? get confirmed;
  @override
  @JsonKey(name: "user")
  GuardianDetailsResponse? get guardianDetailsResponse;
  @override
  @JsonKey(ignore: true)
  _$GuardianResponseCopyWith<_GuardianResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GuardianDetailsResponse _$GuardianDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _GuardianDetailsResponse.fromJson(json);
}

/// @nodoc
class _$GuardianDetailsResponseTearOff {
  const _$GuardianDetailsResponseTearOff();

  _GuardianDetailsResponse call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "avatar") String? avatar}) {
    return _GuardianDetailsResponse(
      confirmed: confirmed,
      Id: Id,
      email: email,
      username: username,
      fullName: fullName,
      avatar: avatar,
    );
  }

  GuardianDetailsResponse fromJson(Map<String, Object?> json) {
    return GuardianDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $GuardianDetailsResponse = _$GuardianDetailsResponseTearOff();

/// @nodoc
mixin _$GuardianDetailsResponse {
  @JsonKey(name: "confirmed")
  bool? get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "fullName")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuardianDetailsResponseCopyWith<GuardianDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuardianDetailsResponseCopyWith<$Res> {
  factory $GuardianDetailsResponseCopyWith(GuardianDetailsResponse value,
          $Res Function(GuardianDetailsResponse) then) =
      _$GuardianDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "avatar") String? avatar});
}

/// @nodoc
class _$GuardianDetailsResponseCopyWithImpl<$Res>
    implements $GuardianDetailsResponseCopyWith<$Res> {
  _$GuardianDetailsResponseCopyWithImpl(this._value, this._then);

  final GuardianDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(GuardianDetailsResponse) _then;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? Id = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GuardianDetailsResponseCopyWith<$Res>
    implements $GuardianDetailsResponseCopyWith<$Res> {
  factory _$GuardianDetailsResponseCopyWith(_GuardianDetailsResponse value,
          $Res Function(_GuardianDetailsResponse) then) =
      __$GuardianDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "avatar") String? avatar});
}

/// @nodoc
class __$GuardianDetailsResponseCopyWithImpl<$Res>
    extends _$GuardianDetailsResponseCopyWithImpl<$Res>
    implements _$GuardianDetailsResponseCopyWith<$Res> {
  __$GuardianDetailsResponseCopyWithImpl(_GuardianDetailsResponse _value,
      $Res Function(_GuardianDetailsResponse) _then)
      : super(_value, (v) => _then(v as _GuardianDetailsResponse));

  @override
  _GuardianDetailsResponse get _value =>
      super._value as _GuardianDetailsResponse;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? Id = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_GuardianDetailsResponse(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GuardianDetailsResponse extends _GuardianDetailsResponse {
  _$_GuardianDetailsResponse(
      {@JsonKey(name: "confirmed") this.confirmed,
      @JsonKey(name: "_id") this.Id,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "fullName") this.fullName,
      @JsonKey(name: "avatar") this.avatar})
      : super._();

  factory _$_GuardianDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GuardianDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "confirmed")
  final bool? confirmed;
  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "fullName")
  final String? fullName;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;

  @override
  String toString() {
    return 'GuardianDetailsResponse(confirmed: $confirmed, Id: $Id, email: $email, username: $username, fullName: $fullName, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GuardianDetailsResponse &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, confirmed, Id, email, username, fullName, avatar);

  @JsonKey(ignore: true)
  @override
  _$GuardianDetailsResponseCopyWith<_GuardianDetailsResponse> get copyWith =>
      __$GuardianDetailsResponseCopyWithImpl<_GuardianDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuardianDetailsResponseToJson(this);
  }
}

abstract class _GuardianDetailsResponse extends GuardianDetailsResponse {
  factory _GuardianDetailsResponse(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "avatar") String? avatar}) = _$_GuardianDetailsResponse;
  _GuardianDetailsResponse._() : super._();

  factory _GuardianDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_GuardianDetailsResponse.fromJson;

  @override
  @JsonKey(name: "confirmed")
  bool? get confirmed;
  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "fullName")
  String? get fullName;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$GuardianDetailsResponseCopyWith<_GuardianDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
