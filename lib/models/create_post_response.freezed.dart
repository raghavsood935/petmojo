// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePostResponse _$CreatePostResponseFromJson(Map<String, dynamic> json) {
  return _CreatePostResponse.fromJson(json);
}

/// @nodoc
class _$CreatePostResponseTearOff {
  const _$CreatePostResponseTearOff();

  _CreatePostResponse call(
      {@JsonKey(name: "post")
          CreatePostDetailsResponse? createPostDetailsResponse}) {
    return _CreatePostResponse(
      createPostDetailsResponse: createPostDetailsResponse,
    );
  }

  CreatePostResponse fromJson(Map<String, Object?> json) {
    return CreatePostResponse.fromJson(json);
  }
}

/// @nodoc
const $CreatePostResponse = _$CreatePostResponseTearOff();

/// @nodoc
mixin _$CreatePostResponse {
  @JsonKey(name: "post")
  CreatePostDetailsResponse? get createPostDetailsResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePostResponseCopyWith<CreatePostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostResponseCopyWith<$Res> {
  factory $CreatePostResponseCopyWith(
          CreatePostResponse value, $Res Function(CreatePostResponse) then) =
      _$CreatePostResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "post")
          CreatePostDetailsResponse? createPostDetailsResponse});

  $CreatePostDetailsResponseCopyWith<$Res>? get createPostDetailsResponse;
}

/// @nodoc
class _$CreatePostResponseCopyWithImpl<$Res>
    implements $CreatePostResponseCopyWith<$Res> {
  _$CreatePostResponseCopyWithImpl(this._value, this._then);

  final CreatePostResponse _value;
  // ignore: unused_field
  final $Res Function(CreatePostResponse) _then;

  @override
  $Res call({
    Object? createPostDetailsResponse = freezed,
  }) {
    return _then(_value.copyWith(
      createPostDetailsResponse: createPostDetailsResponse == freezed
          ? _value.createPostDetailsResponse
          : createPostDetailsResponse // ignore: cast_nullable_to_non_nullable
              as CreatePostDetailsResponse?,
    ));
  }

  @override
  $CreatePostDetailsResponseCopyWith<$Res>? get createPostDetailsResponse {
    if (_value.createPostDetailsResponse == null) {
      return null;
    }

    return $CreatePostDetailsResponseCopyWith<$Res>(
        _value.createPostDetailsResponse!, (value) {
      return _then(_value.copyWith(createPostDetailsResponse: value));
    });
  }
}

/// @nodoc
abstract class _$CreatePostResponseCopyWith<$Res>
    implements $CreatePostResponseCopyWith<$Res> {
  factory _$CreatePostResponseCopyWith(
          _CreatePostResponse value, $Res Function(_CreatePostResponse) then) =
      __$CreatePostResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "post")
          CreatePostDetailsResponse? createPostDetailsResponse});

  @override
  $CreatePostDetailsResponseCopyWith<$Res>? get createPostDetailsResponse;
}

/// @nodoc
class __$CreatePostResponseCopyWithImpl<$Res>
    extends _$CreatePostResponseCopyWithImpl<$Res>
    implements _$CreatePostResponseCopyWith<$Res> {
  __$CreatePostResponseCopyWithImpl(
      _CreatePostResponse _value, $Res Function(_CreatePostResponse) _then)
      : super(_value, (v) => _then(v as _CreatePostResponse));

  @override
  _CreatePostResponse get _value => super._value as _CreatePostResponse;

  @override
  $Res call({
    Object? createPostDetailsResponse = freezed,
  }) {
    return _then(_CreatePostResponse(
      createPostDetailsResponse: createPostDetailsResponse == freezed
          ? _value.createPostDetailsResponse
          : createPostDetailsResponse // ignore: cast_nullable_to_non_nullable
              as CreatePostDetailsResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatePostResponse extends _CreatePostResponse {
  _$_CreatePostResponse({@JsonKey(name: "post") this.createPostDetailsResponse})
      : super._();

  factory _$_CreatePostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreatePostResponseFromJson(json);

  @override
  @JsonKey(name: "post")
  final CreatePostDetailsResponse? createPostDetailsResponse;

  @override
  String toString() {
    return 'CreatePostResponse(createPostDetailsResponse: $createPostDetailsResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePostResponse &&
            const DeepCollectionEquality().equals(
                other.createPostDetailsResponse, createPostDetailsResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(createPostDetailsResponse));

  @JsonKey(ignore: true)
  @override
  _$CreatePostResponseCopyWith<_CreatePostResponse> get copyWith =>
      __$CreatePostResponseCopyWithImpl<_CreatePostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePostResponseToJson(this);
  }
}

abstract class _CreatePostResponse extends CreatePostResponse {
  factory _CreatePostResponse(
          {@JsonKey(name: "post")
              CreatePostDetailsResponse? createPostDetailsResponse}) =
      _$_CreatePostResponse;
  _CreatePostResponse._() : super._();

  factory _CreatePostResponse.fromJson(Map<String, dynamic> json) =
      _$_CreatePostResponse.fromJson;

  @override
  @JsonKey(name: "post")
  CreatePostDetailsResponse? get createPostDetailsResponse;
  @override
  @JsonKey(ignore: true)
  _$CreatePostResponseCopyWith<_CreatePostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatePostDetailsResponse _$CreatePostDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _CreatePostDetailsResponse.fromJson(json);
}

/// @nodoc
class _$CreatePostDetailsResponseTearOff {
  const _$CreatePostDetailsResponseTearOff();

  _CreatePostDetailsResponse call(
      {@JsonKey(name: "hashtags") List<String>? hashtags,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "filter") String? filter,
      @JsonKey(name: "caption") String? caption,
      @JsonKey(name: "Userauthor") String? Userauthor,
      @JsonKey(name: "authorType") String? authorType,
      @JsonKey(name: "date") String? date}) {
    return _CreatePostDetailsResponse(
      hashtags: hashtags,
      Id: Id,
      image: image,
      thumbnail: thumbnail,
      filter: filter,
      caption: caption,
      Userauthor: Userauthor,
      authorType: authorType,
      date: date,
    );
  }

  CreatePostDetailsResponse fromJson(Map<String, Object?> json) {
    return CreatePostDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $CreatePostDetailsResponse = _$CreatePostDetailsResponseTearOff();

/// @nodoc
mixin _$CreatePostDetailsResponse {
  @JsonKey(name: "hashtags")
  List<String>? get hashtags => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "filter")
  String? get filter => throw _privateConstructorUsedError;
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;
  @JsonKey(name: "Userauthor")
  String? get Userauthor => throw _privateConstructorUsedError;
  @JsonKey(name: "authorType")
  String? get authorType => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePostDetailsResponseCopyWith<CreatePostDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostDetailsResponseCopyWith<$Res> {
  factory $CreatePostDetailsResponseCopyWith(CreatePostDetailsResponse value,
          $Res Function(CreatePostDetailsResponse) then) =
      _$CreatePostDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "hashtags") List<String>? hashtags,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "filter") String? filter,
      @JsonKey(name: "caption") String? caption,
      @JsonKey(name: "Userauthor") String? Userauthor,
      @JsonKey(name: "authorType") String? authorType,
      @JsonKey(name: "date") String? date});
}

/// @nodoc
class _$CreatePostDetailsResponseCopyWithImpl<$Res>
    implements $CreatePostDetailsResponseCopyWith<$Res> {
  _$CreatePostDetailsResponseCopyWithImpl(this._value, this._then);

  final CreatePostDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(CreatePostDetailsResponse) _then;

  @override
  $Res call({
    Object? hashtags = freezed,
    Object? Id = freezed,
    Object? image = freezed,
    Object? thumbnail = freezed,
    Object? filter = freezed,
    Object? caption = freezed,
    Object? Userauthor = freezed,
    Object? authorType = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      hashtags: hashtags == freezed
          ? _value.hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      Userauthor: Userauthor == freezed
          ? _value.Userauthor
          : Userauthor // ignore: cast_nullable_to_non_nullable
              as String?,
      authorType: authorType == freezed
          ? _value.authorType
          : authorType // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CreatePostDetailsResponseCopyWith<$Res>
    implements $CreatePostDetailsResponseCopyWith<$Res> {
  factory _$CreatePostDetailsResponseCopyWith(_CreatePostDetailsResponse value,
          $Res Function(_CreatePostDetailsResponse) then) =
      __$CreatePostDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "hashtags") List<String>? hashtags,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "filter") String? filter,
      @JsonKey(name: "caption") String? caption,
      @JsonKey(name: "Userauthor") String? Userauthor,
      @JsonKey(name: "authorType") String? authorType,
      @JsonKey(name: "date") String? date});
}

/// @nodoc
class __$CreatePostDetailsResponseCopyWithImpl<$Res>
    extends _$CreatePostDetailsResponseCopyWithImpl<$Res>
    implements _$CreatePostDetailsResponseCopyWith<$Res> {
  __$CreatePostDetailsResponseCopyWithImpl(_CreatePostDetailsResponse _value,
      $Res Function(_CreatePostDetailsResponse) _then)
      : super(_value, (v) => _then(v as _CreatePostDetailsResponse));

  @override
  _CreatePostDetailsResponse get _value =>
      super._value as _CreatePostDetailsResponse;

  @override
  $Res call({
    Object? hashtags = freezed,
    Object? Id = freezed,
    Object? image = freezed,
    Object? thumbnail = freezed,
    Object? filter = freezed,
    Object? caption = freezed,
    Object? Userauthor = freezed,
    Object? authorType = freezed,
    Object? date = freezed,
  }) {
    return _then(_CreatePostDetailsResponse(
      hashtags: hashtags == freezed
          ? _value.hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      Userauthor: Userauthor == freezed
          ? _value.Userauthor
          : Userauthor // ignore: cast_nullable_to_non_nullable
              as String?,
      authorType: authorType == freezed
          ? _value.authorType
          : authorType // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatePostDetailsResponse extends _CreatePostDetailsResponse {
  _$_CreatePostDetailsResponse(
      {@JsonKey(name: "hashtags") this.hashtags,
      @JsonKey(name: "_id") this.Id,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "thumbnail") this.thumbnail,
      @JsonKey(name: "filter") this.filter,
      @JsonKey(name: "caption") this.caption,
      @JsonKey(name: "Userauthor") this.Userauthor,
      @JsonKey(name: "authorType") this.authorType,
      @JsonKey(name: "date") this.date})
      : super._();

  factory _$_CreatePostDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreatePostDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "hashtags")
  final List<String>? hashtags;
  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "thumbnail")
  final String? thumbnail;
  @override
  @JsonKey(name: "filter")
  final String? filter;
  @override
  @JsonKey(name: "caption")
  final String? caption;
  @override
  @JsonKey(name: "Userauthor")
  final String? Userauthor;
  @override
  @JsonKey(name: "authorType")
  final String? authorType;
  @override
  @JsonKey(name: "date")
  final String? date;

  @override
  String toString() {
    return 'CreatePostDetailsResponse(hashtags: $hashtags, Id: $Id, image: $image, thumbnail: $thumbnail, filter: $filter, caption: $caption, Userauthor: $Userauthor, authorType: $authorType, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePostDetailsResponse &&
            const DeepCollectionEquality().equals(other.hashtags, hashtags) &&
            const DeepCollectionEquality().equals(other.Id, Id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality().equals(other.caption, caption) &&
            const DeepCollectionEquality()
                .equals(other.Userauthor, Userauthor) &&
            const DeepCollectionEquality()
                .equals(other.authorType, authorType) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hashtags),
      const DeepCollectionEquality().hash(Id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(caption),
      const DeepCollectionEquality().hash(Userauthor),
      const DeepCollectionEquality().hash(authorType),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$CreatePostDetailsResponseCopyWith<_CreatePostDetailsResponse>
      get copyWith =>
          __$CreatePostDetailsResponseCopyWithImpl<_CreatePostDetailsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePostDetailsResponseToJson(this);
  }
}

abstract class _CreatePostDetailsResponse extends CreatePostDetailsResponse {
  factory _CreatePostDetailsResponse(
      {@JsonKey(name: "hashtags") List<String>? hashtags,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "filter") String? filter,
      @JsonKey(name: "caption") String? caption,
      @JsonKey(name: "Userauthor") String? Userauthor,
      @JsonKey(name: "authorType") String? authorType,
      @JsonKey(name: "date") String? date}) = _$_CreatePostDetailsResponse;
  _CreatePostDetailsResponse._() : super._();

  factory _CreatePostDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_CreatePostDetailsResponse.fromJson;

  @override
  @JsonKey(name: "hashtags")
  List<String>? get hashtags;
  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "thumbnail")
  String? get thumbnail;
  @override
  @JsonKey(name: "filter")
  String? get filter;
  @override
  @JsonKey(name: "caption")
  String? get caption;
  @override
  @JsonKey(name: "Userauthor")
  String? get Userauthor;
  @override
  @JsonKey(name: "authorType")
  String? get authorType;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$CreatePostDetailsResponseCopyWith<_CreatePostDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
