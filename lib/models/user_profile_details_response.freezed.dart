// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileDetailsResponse _$UserProfileDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _UserProfileDetailsResponse.fromJson(json);
}

/// @nodoc
class _$UserProfileDetailsResponseTearOff {
  const _$UserProfileDetailsResponseTearOff();

  _UserProfileDetailsResponse call(
      {@JsonKey(name: "user_details")
          UserDetailsModelResponse? userDetailsModel,
      @JsonKey(name: "totalFollowers")
          int? totalFollowers,
      @JsonKey(name: "totalFollowings")
          int? totalFollowings,
      @JsonKey(name: "totalLikes")
          int? totalLikes,
      @JsonKey(name: "totalPosts")
          int? totalPosts}) {
    return _UserProfileDetailsResponse(
      userDetailsModel: userDetailsModel,
      totalFollowers: totalFollowers,
      totalFollowings: totalFollowings,
      totalLikes: totalLikes,
      totalPosts: totalPosts,
    );
  }

  UserProfileDetailsResponse fromJson(Map<String, Object?> json) {
    return UserProfileDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $UserProfileDetailsResponse = _$UserProfileDetailsResponseTearOff();

/// @nodoc
mixin _$UserProfileDetailsResponse {
  @JsonKey(name: "user_details")
  UserDetailsModelResponse? get userDetailsModel =>
      throw _privateConstructorUsedError;
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
  $UserProfileDetailsResponseCopyWith<UserProfileDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDetailsResponseCopyWith<$Res> {
  factory $UserProfileDetailsResponseCopyWith(UserProfileDetailsResponse value,
          $Res Function(UserProfileDetailsResponse) then) =
      _$UserProfileDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "user_details")
          UserDetailsModelResponse? userDetailsModel,
      @JsonKey(name: "totalFollowers")
          int? totalFollowers,
      @JsonKey(name: "totalFollowings")
          int? totalFollowings,
      @JsonKey(name: "totalLikes")
          int? totalLikes,
      @JsonKey(name: "totalPosts")
          int? totalPosts});

  $UserDetailsModelResponseCopyWith<$Res>? get userDetailsModel;
}

/// @nodoc
class _$UserProfileDetailsResponseCopyWithImpl<$Res>
    implements $UserProfileDetailsResponseCopyWith<$Res> {
  _$UserProfileDetailsResponseCopyWithImpl(this._value, this._then);

  final UserProfileDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(UserProfileDetailsResponse) _then;

  @override
  $Res call({
    Object? userDetailsModel = freezed,
    Object? totalFollowers = freezed,
    Object? totalFollowings = freezed,
    Object? totalLikes = freezed,
    Object? totalPosts = freezed,
  }) {
    return _then(_value.copyWith(
      userDetailsModel: userDetailsModel == freezed
          ? _value.userDetailsModel
          : userDetailsModel // ignore: cast_nullable_to_non_nullable
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
  $UserDetailsModelResponseCopyWith<$Res>? get userDetailsModel {
    if (_value.userDetailsModel == null) {
      return null;
    }

    return $UserDetailsModelResponseCopyWith<$Res>(_value.userDetailsModel!,
        (value) {
      return _then(_value.copyWith(userDetailsModel: value));
    });
  }
}

/// @nodoc
abstract class _$UserProfileDetailsResponseCopyWith<$Res>
    implements $UserProfileDetailsResponseCopyWith<$Res> {
  factory _$UserProfileDetailsResponseCopyWith(
          _UserProfileDetailsResponse value,
          $Res Function(_UserProfileDetailsResponse) then) =
      __$UserProfileDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "user_details")
          UserDetailsModelResponse? userDetailsModel,
      @JsonKey(name: "totalFollowers")
          int? totalFollowers,
      @JsonKey(name: "totalFollowings")
          int? totalFollowings,
      @JsonKey(name: "totalLikes")
          int? totalLikes,
      @JsonKey(name: "totalPosts")
          int? totalPosts});

  @override
  $UserDetailsModelResponseCopyWith<$Res>? get userDetailsModel;
}

/// @nodoc
class __$UserProfileDetailsResponseCopyWithImpl<$Res>
    extends _$UserProfileDetailsResponseCopyWithImpl<$Res>
    implements _$UserProfileDetailsResponseCopyWith<$Res> {
  __$UserProfileDetailsResponseCopyWithImpl(_UserProfileDetailsResponse _value,
      $Res Function(_UserProfileDetailsResponse) _then)
      : super(_value, (v) => _then(v as _UserProfileDetailsResponse));

  @override
  _UserProfileDetailsResponse get _value =>
      super._value as _UserProfileDetailsResponse;

  @override
  $Res call({
    Object? userDetailsModel = freezed,
    Object? totalFollowers = freezed,
    Object? totalFollowings = freezed,
    Object? totalLikes = freezed,
    Object? totalPosts = freezed,
  }) {
    return _then(_UserProfileDetailsResponse(
      userDetailsModel: userDetailsModel == freezed
          ? _value.userDetailsModel
          : userDetailsModel // ignore: cast_nullable_to_non_nullable
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
class _$_UserProfileDetailsResponse extends _UserProfileDetailsResponse {
  _$_UserProfileDetailsResponse(
      {@JsonKey(name: "user_details") this.userDetailsModel,
      @JsonKey(name: "totalFollowers") this.totalFollowers,
      @JsonKey(name: "totalFollowings") this.totalFollowings,
      @JsonKey(name: "totalLikes") this.totalLikes,
      @JsonKey(name: "totalPosts") this.totalPosts})
      : super._();

  factory _$_UserProfileDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "user_details")
  final UserDetailsModelResponse? userDetailsModel;
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
    return 'UserProfileDetailsResponse(userDetailsModel: $userDetailsModel, totalFollowers: $totalFollowers, totalFollowings: $totalFollowings, totalLikes: $totalLikes, totalPosts: $totalPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileDetailsResponse &&
            (identical(other.userDetailsModel, userDetailsModel) ||
                other.userDetailsModel == userDetailsModel) &&
            (identical(other.totalFollowers, totalFollowers) ||
                other.totalFollowers == totalFollowers) &&
            (identical(other.totalFollowings, totalFollowings) ||
                other.totalFollowings == totalFollowings) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes) &&
            (identical(other.totalPosts, totalPosts) ||
                other.totalPosts == totalPosts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDetailsModel, totalFollowers,
      totalFollowings, totalLikes, totalPosts);

  @JsonKey(ignore: true)
  @override
  _$UserProfileDetailsResponseCopyWith<_UserProfileDetailsResponse>
      get copyWith => __$UserProfileDetailsResponseCopyWithImpl<
          _UserProfileDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileDetailsResponseToJson(this);
  }
}

abstract class _UserProfileDetailsResponse extends UserProfileDetailsResponse {
  factory _UserProfileDetailsResponse(
      {@JsonKey(name: "user_details")
          UserDetailsModelResponse? userDetailsModel,
      @JsonKey(name: "totalFollowers")
          int? totalFollowers,
      @JsonKey(name: "totalFollowings")
          int? totalFollowings,
      @JsonKey(name: "totalLikes")
          int? totalLikes,
      @JsonKey(name: "totalPosts")
          int? totalPosts}) = _$_UserProfileDetailsResponse;
  _UserProfileDetailsResponse._() : super._();

  factory _UserProfileDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_UserProfileDetailsResponse.fromJson;

  @override
  @JsonKey(name: "user_details")
  UserDetailsModelResponse? get userDetailsModel;
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
  _$UserProfileDetailsResponseCopyWith<_UserProfileDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
