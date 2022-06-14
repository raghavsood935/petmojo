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
          int? totalPosts,
      @JsonKey(name: "noOfAppointments")
          int? noOfAppointments,
      @JsonKey(name: "bookingId")
          String? bookingId,
      @JsonKey(name: "serviceType")
          int? serviceType}) {
    return _UserProfileDetailsResponse(
      userDetailsModel: userDetailsModel,
      totalFollowers: totalFollowers,
      totalFollowings: totalFollowings,
      totalLikes: totalLikes,
      totalPosts: totalPosts,
      noOfAppointments: noOfAppointments,
      bookingId: bookingId,
      serviceType: serviceType,
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
  @JsonKey(name: "noOfAppointments")
  int? get noOfAppointments => throw _privateConstructorUsedError;
  @JsonKey(name: "bookingId")
  String? get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: "serviceType")
  int? get serviceType => throw _privateConstructorUsedError;

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
          int? totalPosts,
      @JsonKey(name: "noOfAppointments")
          int? noOfAppointments,
      @JsonKey(name: "bookingId")
          String? bookingId,
      @JsonKey(name: "serviceType")
          int? serviceType});

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
    Object? noOfAppointments = freezed,
    Object? bookingId = freezed,
    Object? serviceType = freezed,
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
      noOfAppointments: noOfAppointments == freezed
          ? _value.noOfAppointments
          : noOfAppointments // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: serviceType == freezed
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
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
          int? totalPosts,
      @JsonKey(name: "noOfAppointments")
          int? noOfAppointments,
      @JsonKey(name: "bookingId")
          String? bookingId,
      @JsonKey(name: "serviceType")
          int? serviceType});

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
    Object? noOfAppointments = freezed,
    Object? bookingId = freezed,
    Object? serviceType = freezed,
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
      noOfAppointments: noOfAppointments == freezed
          ? _value.noOfAppointments
          : noOfAppointments // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingId: bookingId == freezed
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: serviceType == freezed
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "totalPosts") this.totalPosts,
      @JsonKey(name: "noOfAppointments") this.noOfAppointments,
      @JsonKey(name: "bookingId") this.bookingId,
      @JsonKey(name: "serviceType") this.serviceType})
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
  @JsonKey(name: "noOfAppointments")
  final int? noOfAppointments;
  @override
  @JsonKey(name: "bookingId")
  final String? bookingId;
  @override
  @JsonKey(name: "serviceType")
  final int? serviceType;

  @override
  String toString() {
    return 'UserProfileDetailsResponse(userDetailsModel: $userDetailsModel, totalFollowers: $totalFollowers, totalFollowings: $totalFollowings, totalLikes: $totalLikes, totalPosts: $totalPosts, noOfAppointments: $noOfAppointments, bookingId: $bookingId, serviceType: $serviceType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other.userDetailsModel, userDetailsModel) &&
            const DeepCollectionEquality()
                .equals(other.totalFollowers, totalFollowers) &&
            const DeepCollectionEquality()
                .equals(other.totalFollowings, totalFollowings) &&
            const DeepCollectionEquality()
                .equals(other.totalLikes, totalLikes) &&
            const DeepCollectionEquality()
                .equals(other.totalPosts, totalPosts) &&
            const DeepCollectionEquality()
                .equals(other.noOfAppointments, noOfAppointments) &&
            const DeepCollectionEquality().equals(other.bookingId, bookingId) &&
            const DeepCollectionEquality()
                .equals(other.serviceType, serviceType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userDetailsModel),
      const DeepCollectionEquality().hash(totalFollowers),
      const DeepCollectionEquality().hash(totalFollowings),
      const DeepCollectionEquality().hash(totalLikes),
      const DeepCollectionEquality().hash(totalPosts),
      const DeepCollectionEquality().hash(noOfAppointments),
      const DeepCollectionEquality().hash(bookingId),
      const DeepCollectionEquality().hash(serviceType));

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
          int? totalPosts,
      @JsonKey(name: "noOfAppointments")
          int? noOfAppointments,
      @JsonKey(name: "bookingId")
          String? bookingId,
      @JsonKey(name: "serviceType")
          int? serviceType}) = _$_UserProfileDetailsResponse;
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
  @JsonKey(name: "noOfAppointments")
  int? get noOfAppointments;
  @override
  @JsonKey(name: "bookingId")
  String? get bookingId;
  @override
  @JsonKey(name: "serviceType")
  int? get serviceType;
  @override
  @JsonKey(ignore: true)
  _$UserProfileDetailsResponseCopyWith<_UserProfileDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
