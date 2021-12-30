// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetailsModelResponse _$UserDetailsModelResponseFromJson(
    Map<String, dynamic> json) {
  return _UserDetailsModelResponse.fromJson(json);
}

/// @nodoc
class _$UserDetailsModelResponseTearOff {
  const _$UserDetailsModelResponseTearOff();

  _UserDetailsModelResponse call(
      {@JsonKey(name: "private") bool? private,
      @JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "bio") String? bio,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "pets") List<PetBasicDetailsResponse>? listOfPets}) {
    return _UserDetailsModelResponse(
      private: private,
      confirmed: confirmed,
      Id: Id,
      email: email,
      username: username,
      avatar: avatar,
      bio: bio,
      fullName: fullName,
      listOfPets: listOfPets,
    );
  }

  UserDetailsModelResponse fromJson(Map<String, Object?> json) {
    return UserDetailsModelResponse.fromJson(json);
  }
}

/// @nodoc
const $UserDetailsModelResponse = _$UserDetailsModelResponseTearOff();

/// @nodoc
mixin _$UserDetailsModelResponse {
  @JsonKey(name: "private")
  bool? get private => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmed")
  bool? get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "bio")
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: "fullName")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "pets")
  List<PetBasicDetailsResponse>? get listOfPets =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsModelResponseCopyWith<UserDetailsModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsModelResponseCopyWith<$Res> {
  factory $UserDetailsModelResponseCopyWith(UserDetailsModelResponse value,
          $Res Function(UserDetailsModelResponse) then) =
      _$UserDetailsModelResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "private") bool? private,
      @JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "bio") String? bio,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "pets") List<PetBasicDetailsResponse>? listOfPets});
}

/// @nodoc
class _$UserDetailsModelResponseCopyWithImpl<$Res>
    implements $UserDetailsModelResponseCopyWith<$Res> {
  _$UserDetailsModelResponseCopyWithImpl(this._value, this._then);

  final UserDetailsModelResponse _value;
  // ignore: unused_field
  final $Res Function(UserDetailsModelResponse) _then;

  @override
  $Res call({
    Object? private = freezed,
    Object? confirmed = freezed,
    Object? Id = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? fullName = freezed,
    Object? listOfPets = freezed,
  }) {
    return _then(_value.copyWith(
      private: private == freezed
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      listOfPets: listOfPets == freezed
          ? _value.listOfPets
          : listOfPets // ignore: cast_nullable_to_non_nullable
              as List<PetBasicDetailsResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$UserDetailsModelResponseCopyWith<$Res>
    implements $UserDetailsModelResponseCopyWith<$Res> {
  factory _$UserDetailsModelResponseCopyWith(_UserDetailsModelResponse value,
          $Res Function(_UserDetailsModelResponse) then) =
      __$UserDetailsModelResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "private") bool? private,
      @JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "bio") String? bio,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "pets") List<PetBasicDetailsResponse>? listOfPets});
}

/// @nodoc
class __$UserDetailsModelResponseCopyWithImpl<$Res>
    extends _$UserDetailsModelResponseCopyWithImpl<$Res>
    implements _$UserDetailsModelResponseCopyWith<$Res> {
  __$UserDetailsModelResponseCopyWithImpl(_UserDetailsModelResponse _value,
      $Res Function(_UserDetailsModelResponse) _then)
      : super(_value, (v) => _then(v as _UserDetailsModelResponse));

  @override
  _UserDetailsModelResponse get _value =>
      super._value as _UserDetailsModelResponse;

  @override
  $Res call({
    Object? private = freezed,
    Object? confirmed = freezed,
    Object? Id = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? fullName = freezed,
    Object? listOfPets = freezed,
  }) {
    return _then(_UserDetailsModelResponse(
      private: private == freezed
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      listOfPets: listOfPets == freezed
          ? _value.listOfPets
          : listOfPets // ignore: cast_nullable_to_non_nullable
              as List<PetBasicDetailsResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetailsModelResponse extends _UserDetailsModelResponse {
  _$_UserDetailsModelResponse(
      {@JsonKey(name: "private") this.private,
      @JsonKey(name: "confirmed") this.confirmed,
      @JsonKey(name: "_id") this.Id,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "avatar") this.avatar,
      @JsonKey(name: "bio") this.bio,
      @JsonKey(name: "fullName") this.fullName,
      @JsonKey(name: "pets") this.listOfPets})
      : super._();

  factory _$_UserDetailsModelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailsModelResponseFromJson(json);

  @override
  @JsonKey(name: "private")
  final bool? private;
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
  @JsonKey(name: "avatar")
  final String? avatar;
  @override
  @JsonKey(name: "bio")
  final String? bio;
  @override
  @JsonKey(name: "fullName")
  final String? fullName;
  @override
  @JsonKey(name: "pets")
  final List<PetBasicDetailsResponse>? listOfPets;

  @override
  String toString() {
    return 'UserDetailsModelResponse(private: $private, confirmed: $confirmed, Id: $Id, email: $email, username: $username, avatar: $avatar, bio: $bio, fullName: $fullName, listOfPets: $listOfPets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetailsModelResponse &&
            (identical(other.private, private) || other.private == private) &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            const DeepCollectionEquality()
                .equals(other.listOfPets, listOfPets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      private,
      confirmed,
      Id,
      email,
      username,
      avatar,
      bio,
      fullName,
      const DeepCollectionEquality().hash(listOfPets));

  @JsonKey(ignore: true)
  @override
  _$UserDetailsModelResponseCopyWith<_UserDetailsModelResponse> get copyWith =>
      __$UserDetailsModelResponseCopyWithImpl<_UserDetailsModelResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailsModelResponseToJson(this);
  }
}

abstract class _UserDetailsModelResponse extends UserDetailsModelResponse {
  factory _UserDetailsModelResponse(
          {@JsonKey(name: "private") bool? private,
          @JsonKey(name: "confirmed") bool? confirmed,
          @JsonKey(name: "_id") String? Id,
          @JsonKey(name: "email") String? email,
          @JsonKey(name: "username") String? username,
          @JsonKey(name: "avatar") String? avatar,
          @JsonKey(name: "bio") String? bio,
          @JsonKey(name: "fullName") String? fullName,
          @JsonKey(name: "pets") List<PetBasicDetailsResponse>? listOfPets}) =
      _$_UserDetailsModelResponse;
  _UserDetailsModelResponse._() : super._();

  factory _UserDetailsModelResponse.fromJson(Map<String, dynamic> json) =
      _$_UserDetailsModelResponse.fromJson;

  @override
  @JsonKey(name: "private")
  bool? get private;
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
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(name: "bio")
  String? get bio;
  @override
  @JsonKey(name: "fullName")
  String? get fullName;
  @override
  @JsonKey(name: "pets")
  List<PetBasicDetailsResponse>? get listOfPets;
  @override
  @JsonKey(ignore: true)
  _$UserDetailsModelResponseCopyWith<_UserDetailsModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
