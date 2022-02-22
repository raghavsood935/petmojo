// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostResponse _$PostResponseFromJson(Map<String, dynamic> json) {
  return _PostResponse.fromJson(json);
}

/// @nodoc
class _$PostResponseTearOff {
  const _$PostResponseTearOff();

  _PostResponse call(
      {@JsonKey(name: "_id")
          String? Id,
      @JsonKey(name: "hashtags")
          List<String>? hashtags,
      @JsonKey(name: "image")
          String? image,
      @JsonKey(name: "thumbnail")
          String? thumbnail,
      @JsonKey(name: "filter")
          String? filter,
      @JsonKey(name: "caption")
          String? caption,
      @JsonKey(name: "author")
          String? author,
      @JsonKey(name: "postOwnerDetails")
          PostOwnerDetailsResponse? postOwnerDetailsResponse,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "__v")
          int? v,
      @JsonKey(name: "totalVotes")
          int? totalVotes,
      @JsonKey(name: "totalComments")
          int? totalComments}) {
    return _PostResponse(
      Id: Id,
      hashtags: hashtags,
      image: image,
      thumbnail: thumbnail,
      filter: filter,
      caption: caption,
      author: author,
      postOwnerDetailsResponse: postOwnerDetailsResponse,
      date: date,
      v: v,
      totalVotes: totalVotes,
      totalComments: totalComments,
    );
  }

  PostResponse fromJson(Map<String, Object?> json) {
    return PostResponse.fromJson(json);
  }
}

/// @nodoc
const $PostResponse = _$PostResponseTearOff();

/// @nodoc
mixin _$PostResponse {
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "hashtags")
  List<String>? get hashtags => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "filter")
  String? get filter => throw _privateConstructorUsedError;
  @JsonKey(name: "caption")
  String? get caption => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: "postOwnerDetails")
  PostOwnerDetailsResponse? get postOwnerDetailsResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;
  @JsonKey(name: "totalVotes")
  int? get totalVotes => throw _privateConstructorUsedError;
  @JsonKey(name: "totalComments")
  int? get totalComments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostResponseCopyWith<PostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostResponseCopyWith<$Res> {
  factory $PostResponseCopyWith(
          PostResponse value, $Res Function(PostResponse) then) =
      _$PostResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id")
          String? Id,
      @JsonKey(name: "hashtags")
          List<String>? hashtags,
      @JsonKey(name: "image")
          String? image,
      @JsonKey(name: "thumbnail")
          String? thumbnail,
      @JsonKey(name: "filter")
          String? filter,
      @JsonKey(name: "caption")
          String? caption,
      @JsonKey(name: "author")
          String? author,
      @JsonKey(name: "postOwnerDetails")
          PostOwnerDetailsResponse? postOwnerDetailsResponse,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "__v")
          int? v,
      @JsonKey(name: "totalVotes")
          int? totalVotes,
      @JsonKey(name: "totalComments")
          int? totalComments});

  $PostOwnerDetailsResponseCopyWith<$Res>? get postOwnerDetailsResponse;
}

/// @nodoc
class _$PostResponseCopyWithImpl<$Res> implements $PostResponseCopyWith<$Res> {
  _$PostResponseCopyWithImpl(this._value, this._then);

  final PostResponse _value;
  // ignore: unused_field
  final $Res Function(PostResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? hashtags = freezed,
    Object? image = freezed,
    Object? thumbnail = freezed,
    Object? filter = freezed,
    Object? caption = freezed,
    Object? author = freezed,
    Object? postOwnerDetailsResponse = freezed,
    Object? date = freezed,
    Object? v = freezed,
    Object? totalVotes = freezed,
    Object? totalComments = freezed,
  }) {
    return _then(_value.copyWith(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      hashtags: hashtags == freezed
          ? _value.hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      postOwnerDetailsResponse: postOwnerDetailsResponse == freezed
          ? _value.postOwnerDetailsResponse
          : postOwnerDetailsResponse // ignore: cast_nullable_to_non_nullable
              as PostOwnerDetailsResponse?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      v: v == freezed
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      totalVotes: totalVotes == freezed
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalComments: totalComments == freezed
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $PostOwnerDetailsResponseCopyWith<$Res>? get postOwnerDetailsResponse {
    if (_value.postOwnerDetailsResponse == null) {
      return null;
    }

    return $PostOwnerDetailsResponseCopyWith<$Res>(
        _value.postOwnerDetailsResponse!, (value) {
      return _then(_value.copyWith(postOwnerDetailsResponse: value));
    });
  }
}

/// @nodoc
abstract class _$PostResponseCopyWith<$Res>
    implements $PostResponseCopyWith<$Res> {
  factory _$PostResponseCopyWith(
          _PostResponse value, $Res Function(_PostResponse) then) =
      __$PostResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id")
          String? Id,
      @JsonKey(name: "hashtags")
          List<String>? hashtags,
      @JsonKey(name: "image")
          String? image,
      @JsonKey(name: "thumbnail")
          String? thumbnail,
      @JsonKey(name: "filter")
          String? filter,
      @JsonKey(name: "caption")
          String? caption,
      @JsonKey(name: "author")
          String? author,
      @JsonKey(name: "postOwnerDetails")
          PostOwnerDetailsResponse? postOwnerDetailsResponse,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "__v")
          int? v,
      @JsonKey(name: "totalVotes")
          int? totalVotes,
      @JsonKey(name: "totalComments")
          int? totalComments});

  @override
  $PostOwnerDetailsResponseCopyWith<$Res>? get postOwnerDetailsResponse;
}

/// @nodoc
class __$PostResponseCopyWithImpl<$Res> extends _$PostResponseCopyWithImpl<$Res>
    implements _$PostResponseCopyWith<$Res> {
  __$PostResponseCopyWithImpl(
      _PostResponse _value, $Res Function(_PostResponse) _then)
      : super(_value, (v) => _then(v as _PostResponse));

  @override
  _PostResponse get _value => super._value as _PostResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? hashtags = freezed,
    Object? image = freezed,
    Object? thumbnail = freezed,
    Object? filter = freezed,
    Object? caption = freezed,
    Object? author = freezed,
    Object? postOwnerDetailsResponse = freezed,
    Object? date = freezed,
    Object? v = freezed,
    Object? totalVotes = freezed,
    Object? totalComments = freezed,
  }) {
    return _then(_PostResponse(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      hashtags: hashtags == freezed
          ? _value.hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      postOwnerDetailsResponse: postOwnerDetailsResponse == freezed
          ? _value.postOwnerDetailsResponse
          : postOwnerDetailsResponse // ignore: cast_nullable_to_non_nullable
              as PostOwnerDetailsResponse?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      v: v == freezed
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      totalVotes: totalVotes == freezed
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalComments: totalComments == freezed
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostResponse extends _PostResponse {
  _$_PostResponse(
      {@JsonKey(name: "_id") this.Id,
      @JsonKey(name: "hashtags") this.hashtags,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "thumbnail") this.thumbnail,
      @JsonKey(name: "filter") this.filter,
      @JsonKey(name: "caption") this.caption,
      @JsonKey(name: "author") this.author,
      @JsonKey(name: "postOwnerDetails") this.postOwnerDetailsResponse,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "totalVotes") this.totalVotes,
      @JsonKey(name: "totalComments") this.totalComments})
      : super._();

  factory _$_PostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PostResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "hashtags")
  final List<String>? hashtags;
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
  @JsonKey(name: "author")
  final String? author;
  @override
  @JsonKey(name: "postOwnerDetails")
  final PostOwnerDetailsResponse? postOwnerDetailsResponse;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  @JsonKey(name: "totalVotes")
  final int? totalVotes;
  @override
  @JsonKey(name: "totalComments")
  final int? totalComments;

  @override
  String toString() {
    return 'PostResponse(Id: $Id, hashtags: $hashtags, image: $image, thumbnail: $thumbnail, filter: $filter, caption: $caption, author: $author, postOwnerDetailsResponse: $postOwnerDetailsResponse, date: $date, v: $v, totalVotes: $totalVotes, totalComments: $totalComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostResponse &&
            const DeepCollectionEquality().equals(other.Id, Id) &&
            const DeepCollectionEquality().equals(other.hashtags, hashtags) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality().equals(other.caption, caption) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(
                other.postOwnerDetailsResponse, postOwnerDetailsResponse) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.v, v) &&
            const DeepCollectionEquality()
                .equals(other.totalVotes, totalVotes) &&
            const DeepCollectionEquality()
                .equals(other.totalComments, totalComments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(Id),
      const DeepCollectionEquality().hash(hashtags),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(caption),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(postOwnerDetailsResponse),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(v),
      const DeepCollectionEquality().hash(totalVotes),
      const DeepCollectionEquality().hash(totalComments));

  @JsonKey(ignore: true)
  @override
  _$PostResponseCopyWith<_PostResponse> get copyWith =>
      __$PostResponseCopyWithImpl<_PostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostResponseToJson(this);
  }
}

abstract class _PostResponse extends PostResponse {
  factory _PostResponse(
      {@JsonKey(name: "_id")
          String? Id,
      @JsonKey(name: "hashtags")
          List<String>? hashtags,
      @JsonKey(name: "image")
          String? image,
      @JsonKey(name: "thumbnail")
          String? thumbnail,
      @JsonKey(name: "filter")
          String? filter,
      @JsonKey(name: "caption")
          String? caption,
      @JsonKey(name: "author")
          String? author,
      @JsonKey(name: "postOwnerDetails")
          PostOwnerDetailsResponse? postOwnerDetailsResponse,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "__v")
          int? v,
      @JsonKey(name: "totalVotes")
          int? totalVotes,
      @JsonKey(name: "totalComments")
          int? totalComments}) = _$_PostResponse;
  _PostResponse._() : super._();

  factory _PostResponse.fromJson(Map<String, dynamic> json) =
      _$_PostResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "hashtags")
  List<String>? get hashtags;
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
  @JsonKey(name: "author")
  String? get author;
  @override
  @JsonKey(name: "postOwnerDetails")
  PostOwnerDetailsResponse? get postOwnerDetailsResponse;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(name: "totalVotes")
  int? get totalVotes;
  @override
  @JsonKey(name: "totalComments")
  int? get totalComments;
  @override
  @JsonKey(ignore: true)
  _$PostResponseCopyWith<_PostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
