// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_details_by_id_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileDetailsByIdResponse _$ProfileDetailsByIdResponseFromJson(
    Map<String, dynamic> json) {
  return _ProfileDetailsByIdResponse.fromJson(json);
}

/// @nodoc
class _$ProfileDetailsByIdResponseTearOff {
  const _$ProfileDetailsByIdResponseTearOff();

  _ProfileDetailsByIdResponse call(
      {@JsonKey(name: "user") UserDetailsModelResponse? user,
      @JsonKey(name: "totalFollowers") int? totalFollowers,
      @JsonKey(name: "totalFollowings") int? totalFollowings,
      @JsonKey(name: "totalLikes") int? totalLikes,
      @JsonKey(name: "totalPosts") int? totalPosts}) {
    return _ProfileDetailsByIdResponse(
      user: user,
      totalFollowers: totalFollowers,
      totalFollowings: totalFollowings,
      totalLikes: totalLikes,
      totalPosts: totalPosts,
    );
  }

  ProfileDetailsByIdResponse fromJson(Map<String, Object?> json) {
    return ProfileDetailsByIdResponse.fromJson(json);
  }
}

/// @nodoc
const $ProfileDetailsByIdResponse = _$ProfileDetailsByIdResponseTearOff();

/// @nodoc
mixin _$ProfileDetailsByIdResponse {
  @JsonKey(name: "user")
  UserDetailsModelResponse? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "totalFollowers")
  int? get totalFollowers => throw _privateConstructorUsedError;
  @JsonKey(name: "totalFollowings")
  int? get totalFollowings => throw _privateConstructorUsedError;
  @JsonKey(name: "totalLikes")
  int? get totalLikes => throw _privateConstructorUsedError;
  @JsonKey(name: "totalPosts")
  int? get totalPosts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDetailsByIdResponseCopyWith<ProfileDetailsByIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDetailsByIdResponseCopyWith<$Res> {
  factory $ProfileDetailsByIdResponseCopyWith(ProfileDetailsByIdResponse value,
          $Res Function(ProfileDetailsByIdResponse) then) =
      _$ProfileDetailsByIdResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "user") UserDetailsModelResponse? user,
      @JsonKey(name: "totalFollowers") int? totalFollowers,
      @JsonKey(name: "totalFollowings") int? totalFollowings,
      @JsonKey(name: "totalLikes") int? totalLikes,
      @JsonKey(name: "totalPosts") int? totalPosts});

  $UserDetailsModelResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileDetailsByIdResponseCopyWithImpl<$Res>
    implements $ProfileDetailsByIdResponseCopyWith<$Res> {
  _$ProfileDetailsByIdResponseCopyWithImpl(this._value, this._then);

  final ProfileDetailsByIdResponse _value;
  // ignore: unused_field
  final $Res Function(ProfileDetailsByIdResponse) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? totalFollowers = freezed,
    Object? totalFollowings = freezed,
    Object? totalLikes = freezed,
    Object? totalPosts = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetailsModelResponse?,
      totalFollowers: totalFollowers == freezed
          ? _value.totalFollowers
          : totalFollowers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFollowings: totalFollowings == freezed
          ? _value.totalFollowings
          : totalFollowings // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLikes: totalLikes == freezed
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPosts: totalPosts == freezed
          ? _value.totalPosts
          : totalPosts // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $UserDetailsModelResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDetailsModelResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileDetailsByIdResponseCopyWith<$Res>
    implements $ProfileDetailsByIdResponseCopyWith<$Res> {
  factory _$ProfileDetailsByIdResponseCopyWith(
          _ProfileDetailsByIdResponse value,
          $Res Function(_ProfileDetailsByIdResponse) then) =
      __$ProfileDetailsByIdResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "user") UserDetailsModelResponse? user,
      @JsonKey(name: "totalFollowers") int? totalFollowers,
      @JsonKey(name: "totalFollowings") int? totalFollowings,
      @JsonKey(name: "totalLikes") int? totalLikes,
      @JsonKey(name: "totalPosts") int? totalPosts});

  @override
  $UserDetailsModelResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$ProfileDetailsByIdResponseCopyWithImpl<$Res>
    extends _$ProfileDetailsByIdResponseCopyWithImpl<$Res>
    implements _$ProfileDetailsByIdResponseCopyWith<$Res> {
  __$ProfileDetailsByIdResponseCopyWithImpl(_ProfileDetailsByIdResponse _value,
      $Res Function(_ProfileDetailsByIdResponse) _then)
      : super(_value, (v) => _then(v as _ProfileDetailsByIdResponse));

  @override
  _ProfileDetailsByIdResponse get _value =>
      super._value as _ProfileDetailsByIdResponse;

  @override
  $Res call({
    Object? user = freezed,
    Object? totalFollowers = freezed,
    Object? totalFollowings = freezed,
    Object? totalLikes = freezed,
    Object? totalPosts = freezed,
  }) {
    return _then(_ProfileDetailsByIdResponse(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetailsModelResponse?,
      totalFollowers: totalFollowers == freezed
          ? _value.totalFollowers
          : totalFollowers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFollowings: totalFollowings == freezed
          ? _value.totalFollowings
          : totalFollowings // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLikes: totalLikes == freezed
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPosts: totalPosts == freezed
          ? _value.totalPosts
          : totalPosts // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileDetailsByIdResponse extends _ProfileDetailsByIdResponse {
  _$_ProfileDetailsByIdResponse(
      {@JsonKey(name: "user") this.user,
      @JsonKey(name: "totalFollowers") this.totalFollowers,
      @JsonKey(name: "totalFollowings") this.totalFollowings,
      @JsonKey(name: "totalLikes") this.totalLikes,
      @JsonKey(name: "totalPosts") this.totalPosts})
      : super._();

  factory _$_ProfileDetailsByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileDetailsByIdResponseFromJson(json);

  @override
  @JsonKey(name: "user")
  final UserDetailsModelResponse? user;
  @override
  @JsonKey(name: "totalFollowers")
  final int? totalFollowers;
  @override
  @JsonKey(name: "totalFollowings")
  final int? totalFollowings;
  @override
  @JsonKey(name: "totalLikes")
  final int? totalLikes;
  @override
  @JsonKey(name: "totalPosts")
  final int? totalPosts;

  @override
  String toString() {
    return 'ProfileDetailsByIdResponse(user: $user, totalFollowers: $totalFollowers, totalFollowings: $totalFollowings, totalLikes: $totalLikes, totalPosts: $totalPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileDetailsByIdResponse &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.totalFollowers, totalFollowers) &&
            const DeepCollectionEquality()
                .equals(other.totalFollowings, totalFollowings) &&
            const DeepCollectionEquality()
                .equals(other.totalLikes, totalLikes) &&
            const DeepCollectionEquality()
                .equals(other.totalPosts, totalPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(totalFollowers),
      const DeepCollectionEquality().hash(totalFollowings),
      const DeepCollectionEquality().hash(totalLikes),
      const DeepCollectionEquality().hash(totalPosts));

  @JsonKey(ignore: true)
  @override
  _$ProfileDetailsByIdResponseCopyWith<_ProfileDetailsByIdResponse>
      get copyWith => __$ProfileDetailsByIdResponseCopyWithImpl<
          _ProfileDetailsByIdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileDetailsByIdResponseToJson(this);
  }
}

abstract class _ProfileDetailsByIdResponse extends ProfileDetailsByIdResponse {
  factory _ProfileDetailsByIdResponse(
          {@JsonKey(name: "user") UserDetailsModelResponse? user,
          @JsonKey(name: "totalFollowers") int? totalFollowers,
          @JsonKey(name: "totalFollowings") int? totalFollowings,
          @JsonKey(name: "totalLikes") int? totalLikes,
          @JsonKey(name: "totalPosts") int? totalPosts}) =
      _$_ProfileDetailsByIdResponse;
  _ProfileDetailsByIdResponse._() : super._();

  factory _ProfileDetailsByIdResponse.fromJson(Map<String, dynamic> json) =
      _$_ProfileDetailsByIdResponse.fromJson;

  @override
  @JsonKey(name: "user")
  UserDetailsModelResponse? get user;
  @override
  @JsonKey(name: "totalFollowers")
  int? get totalFollowers;
  @override
  @JsonKey(name: "totalFollowings")
  int? get totalFollowings;
  @override
  @JsonKey(name: "totalLikes")
  int? get totalLikes;
  @override
  @JsonKey(name: "totalPosts")
  int? get totalPosts;
  @override
  @JsonKey(ignore: true)
  _$ProfileDetailsByIdResponseCopyWith<_ProfileDetailsByIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}
