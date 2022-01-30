// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_blogs_like_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetBlogLikeDetailsResponse _$GetBlogLikeDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetBlogLikeDetailsResponse.fromJson(json);
}

/// @nodoc
class _$GetBlogLikeDetailsResponseTearOff {
  const _$GetBlogLikeDetailsResponseTearOff();

  _GetBlogLikeDetailsResponse call(
      {@JsonKey(name: "like") List<BlogLikeDetails>? like,
      @JsonKey(name: "success") bool? success}) {
    return _GetBlogLikeDetailsResponse(
      like: like,
      success: success,
    );
  }

  GetBlogLikeDetailsResponse fromJson(Map<String, Object?> json) {
    return GetBlogLikeDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetBlogLikeDetailsResponse = _$GetBlogLikeDetailsResponseTearOff();

/// @nodoc
mixin _$GetBlogLikeDetailsResponse {
  @JsonKey(name: "like")
  List<BlogLikeDetails>? get like => throw _privateConstructorUsedError;
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBlogLikeDetailsResponseCopyWith<GetBlogLikeDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBlogLikeDetailsResponseCopyWith<$Res> {
  factory $GetBlogLikeDetailsResponseCopyWith(GetBlogLikeDetailsResponse value,
          $Res Function(GetBlogLikeDetailsResponse) then) =
      _$GetBlogLikeDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "like") List<BlogLikeDetails>? like,
      @JsonKey(name: "success") bool? success});
}

/// @nodoc
class _$GetBlogLikeDetailsResponseCopyWithImpl<$Res>
    implements $GetBlogLikeDetailsResponseCopyWith<$Res> {
  _$GetBlogLikeDetailsResponseCopyWithImpl(this._value, this._then);

  final GetBlogLikeDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(GetBlogLikeDetailsResponse) _then;

  @override
  $Res call({
    Object? like = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      like: like == freezed
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as List<BlogLikeDetails>?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$GetBlogLikeDetailsResponseCopyWith<$Res>
    implements $GetBlogLikeDetailsResponseCopyWith<$Res> {
  factory _$GetBlogLikeDetailsResponseCopyWith(
          _GetBlogLikeDetailsResponse value,
          $Res Function(_GetBlogLikeDetailsResponse) then) =
      __$GetBlogLikeDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "like") List<BlogLikeDetails>? like,
      @JsonKey(name: "success") bool? success});
}

/// @nodoc
class __$GetBlogLikeDetailsResponseCopyWithImpl<$Res>
    extends _$GetBlogLikeDetailsResponseCopyWithImpl<$Res>
    implements _$GetBlogLikeDetailsResponseCopyWith<$Res> {
  __$GetBlogLikeDetailsResponseCopyWithImpl(_GetBlogLikeDetailsResponse _value,
      $Res Function(_GetBlogLikeDetailsResponse) _then)
      : super(_value, (v) => _then(v as _GetBlogLikeDetailsResponse));

  @override
  _GetBlogLikeDetailsResponse get _value =>
      super._value as _GetBlogLikeDetailsResponse;

  @override
  $Res call({
    Object? like = freezed,
    Object? success = freezed,
  }) {
    return _then(_GetBlogLikeDetailsResponse(
      like: like == freezed
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as List<BlogLikeDetails>?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetBlogLikeDetailsResponse extends _GetBlogLikeDetailsResponse {
  _$_GetBlogLikeDetailsResponse(
      {@JsonKey(name: "like") this.like,
      @JsonKey(name: "success") this.success})
      : super._();

  factory _$_GetBlogLikeDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetBlogLikeDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "like")
  final List<BlogLikeDetails>? like;
  @override
  @JsonKey(name: "success")
  final bool? success;

  @override
  String toString() {
    return 'GetBlogLikeDetailsResponse(like: $like, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetBlogLikeDetailsResponse &&
            const DeepCollectionEquality().equals(other.like, like) &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(like),
      const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  _$GetBlogLikeDetailsResponseCopyWith<_GetBlogLikeDetailsResponse>
      get copyWith => __$GetBlogLikeDetailsResponseCopyWithImpl<
          _GetBlogLikeDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetBlogLikeDetailsResponseToJson(this);
  }
}

abstract class _GetBlogLikeDetailsResponse extends GetBlogLikeDetailsResponse {
  factory _GetBlogLikeDetailsResponse(
      {@JsonKey(name: "like") List<BlogLikeDetails>? like,
      @JsonKey(name: "success") bool? success}) = _$_GetBlogLikeDetailsResponse;
  _GetBlogLikeDetailsResponse._() : super._();

  factory _GetBlogLikeDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetBlogLikeDetailsResponse.fromJson;

  @override
  @JsonKey(name: "like")
  List<BlogLikeDetails>? get like;
  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(ignore: true)
  _$GetBlogLikeDetailsResponseCopyWith<_GetBlogLikeDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

BlogLikeDetails _$BlogLikeDetailsFromJson(Map<String, dynamic> json) {
  return _BlogLikeDetails.fromJson(json);
}

/// @nodoc
class _$BlogLikeDetailsTearOff {
  const _$BlogLikeDetailsTearOff();

  _BlogLikeDetails call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "person") ProfileResponse? person,
      @JsonKey(name: "personType") String? personType}) {
    return _BlogLikeDetails(
      sId: sId,
      person: person,
      personType: personType,
    );
  }

  BlogLikeDetails fromJson(Map<String, Object?> json) {
    return BlogLikeDetails.fromJson(json);
  }
}

/// @nodoc
const $BlogLikeDetails = _$BlogLikeDetailsTearOff();

/// @nodoc
mixin _$BlogLikeDetails {
  @JsonKey(name: "_id")
  String? get sId => throw _privateConstructorUsedError;
  @JsonKey(name: "person")
  ProfileResponse? get person => throw _privateConstructorUsedError;
  @JsonKey(name: "personType")
  String? get personType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogLikeDetailsCopyWith<BlogLikeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogLikeDetailsCopyWith<$Res> {
  factory $BlogLikeDetailsCopyWith(
          BlogLikeDetails value, $Res Function(BlogLikeDetails) then) =
      _$BlogLikeDetailsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "person") ProfileResponse? person,
      @JsonKey(name: "personType") String? personType});

  $ProfileResponseCopyWith<$Res>? get person;
}

/// @nodoc
class _$BlogLikeDetailsCopyWithImpl<$Res>
    implements $BlogLikeDetailsCopyWith<$Res> {
  _$BlogLikeDetailsCopyWithImpl(this._value, this._then);

  final BlogLikeDetails _value;
  // ignore: unused_field
  final $Res Function(BlogLikeDetails) _then;

  @override
  $Res call({
    Object? sId = freezed,
    Object? person = freezed,
    Object? personType = freezed,
  }) {
    return _then(_value.copyWith(
      sId: sId == freezed
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
      personType: personType == freezed
          ? _value.personType
          : personType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ProfileResponseCopyWith<$Res>? get person {
    if (_value.person == null) {
      return null;
    }

    return $ProfileResponseCopyWith<$Res>(_value.person!, (value) {
      return _then(_value.copyWith(person: value));
    });
  }
}

/// @nodoc
abstract class _$BlogLikeDetailsCopyWith<$Res>
    implements $BlogLikeDetailsCopyWith<$Res> {
  factory _$BlogLikeDetailsCopyWith(
          _BlogLikeDetails value, $Res Function(_BlogLikeDetails) then) =
      __$BlogLikeDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "person") ProfileResponse? person,
      @JsonKey(name: "personType") String? personType});

  @override
  $ProfileResponseCopyWith<$Res>? get person;
}

/// @nodoc
class __$BlogLikeDetailsCopyWithImpl<$Res>
    extends _$BlogLikeDetailsCopyWithImpl<$Res>
    implements _$BlogLikeDetailsCopyWith<$Res> {
  __$BlogLikeDetailsCopyWithImpl(
      _BlogLikeDetails _value, $Res Function(_BlogLikeDetails) _then)
      : super(_value, (v) => _then(v as _BlogLikeDetails));

  @override
  _BlogLikeDetails get _value => super._value as _BlogLikeDetails;

  @override
  $Res call({
    Object? sId = freezed,
    Object? person = freezed,
    Object? personType = freezed,
  }) {
    return _then(_BlogLikeDetails(
      sId: sId == freezed
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
      personType: personType == freezed
          ? _value.personType
          : personType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlogLikeDetails extends _BlogLikeDetails {
  _$_BlogLikeDetails(
      {@JsonKey(name: "_id") this.sId,
      @JsonKey(name: "person") this.person,
      @JsonKey(name: "personType") this.personType})
      : super._();

  factory _$_BlogLikeDetails.fromJson(Map<String, dynamic> json) =>
      _$$_BlogLikeDetailsFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? sId;
  @override
  @JsonKey(name: "person")
  final ProfileResponse? person;
  @override
  @JsonKey(name: "personType")
  final String? personType;

  @override
  String toString() {
    return 'BlogLikeDetails(sId: $sId, person: $person, personType: $personType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BlogLikeDetails &&
            const DeepCollectionEquality().equals(other.sId, sId) &&
            const DeepCollectionEquality().equals(other.person, person) &&
            const DeepCollectionEquality()
                .equals(other.personType, personType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sId),
      const DeepCollectionEquality().hash(person),
      const DeepCollectionEquality().hash(personType));

  @JsonKey(ignore: true)
  @override
  _$BlogLikeDetailsCopyWith<_BlogLikeDetails> get copyWith =>
      __$BlogLikeDetailsCopyWithImpl<_BlogLikeDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlogLikeDetailsToJson(this);
  }
}

abstract class _BlogLikeDetails extends BlogLikeDetails {
  factory _BlogLikeDetails(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "person") ProfileResponse? person,
      @JsonKey(name: "personType") String? personType}) = _$_BlogLikeDetails;
  _BlogLikeDetails._() : super._();

  factory _BlogLikeDetails.fromJson(Map<String, dynamic> json) =
      _$_BlogLikeDetails.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get sId;
  @override
  @JsonKey(name: "person")
  ProfileResponse? get person;
  @override
  @JsonKey(name: "personType")
  String? get personType;
  @override
  @JsonKey(ignore: true)
  _$BlogLikeDetailsCopyWith<_BlogLikeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
