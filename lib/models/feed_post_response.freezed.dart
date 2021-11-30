// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedPostResponse _$FeedPostResponseFromJson(Map<String, dynamic> json) {
  return _FeedPostResponse.fromJson(json);
}

/// @nodoc
class _$FeedPostResponseTearOff {
  const _$FeedPostResponseTearOff();

  _FeedPostResponse call(
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
          List<ProfileResponse>? author,
      @JsonKey(name: "postOwnerDetails")
          PostOwnerDetailsResponse? postOwnerDetails,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "commentData")
          FeedPostCommentResponse? commentResponse}) {
    return _FeedPostResponse(
      Id: Id,
      hashtags: hashtags,
      image: image,
      thumbnail: thumbnail,
      filter: filter,
      caption: caption,
      author: author,
      postOwnerDetails: postOwnerDetails,
      date: date,
      commentResponse: commentResponse,
    );
  }

  FeedPostResponse fromJson(Map<String, Object?> json) {
    return FeedPostResponse.fromJson(json);
  }
}

/// @nodoc
const $FeedPostResponse = _$FeedPostResponseTearOff();

/// @nodoc
mixin _$FeedPostResponse {
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
  List<ProfileResponse>? get author => throw _privateConstructorUsedError;
  @JsonKey(name: "postOwnerDetails")
  PostOwnerDetailsResponse? get postOwnerDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date =>
      throw _privateConstructorUsedError; // @JsonKey(name: "postVotes") List<String>? postVotes,
// @JsonKey(name: "votesCount") List<String>? votesCounts,
  @JsonKey(name: "commentData")
  FeedPostCommentResponse? get commentResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedPostResponseCopyWith<FeedPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedPostResponseCopyWith<$Res> {
  factory $FeedPostResponseCopyWith(
          FeedPostResponse value, $Res Function(FeedPostResponse) then) =
      _$FeedPostResponseCopyWithImpl<$Res>;
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
          List<ProfileResponse>? author,
      @JsonKey(name: "postOwnerDetails")
          PostOwnerDetailsResponse? postOwnerDetails,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "commentData")
          FeedPostCommentResponse? commentResponse});

  $PostOwnerDetailsResponseCopyWith<$Res>? get postOwnerDetails;
  $FeedPostCommentResponseCopyWith<$Res>? get commentResponse;
}

/// @nodoc
class _$FeedPostResponseCopyWithImpl<$Res>
    implements $FeedPostResponseCopyWith<$Res> {
  _$FeedPostResponseCopyWithImpl(this._value, this._then);

  final FeedPostResponse _value;
  // ignore: unused_field
  final $Res Function(FeedPostResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? hashtags = freezed,
    Object? image = freezed,
    Object? thumbnail = freezed,
    Object? filter = freezed,
    Object? caption = freezed,
    Object? author = freezed,
    Object? postOwnerDetails = freezed,
    Object? date = freezed,
    Object? commentResponse = freezed,
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
              as List<ProfileResponse>?,
      postOwnerDetails: postOwnerDetails == freezed
          ? _value.postOwnerDetails
          : postOwnerDetails // ignore: cast_nullable_to_non_nullable
              as PostOwnerDetailsResponse?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      commentResponse: commentResponse == freezed
          ? _value.commentResponse
          : commentResponse // ignore: cast_nullable_to_non_nullable
              as FeedPostCommentResponse?,
    ));
  }

  @override
  $PostOwnerDetailsResponseCopyWith<$Res>? get postOwnerDetails {
    if (_value.postOwnerDetails == null) {
      return null;
    }

    return $PostOwnerDetailsResponseCopyWith<$Res>(_value.postOwnerDetails!,
        (value) {
      return _then(_value.copyWith(postOwnerDetails: value));
    });
  }

  @override
  $FeedPostCommentResponseCopyWith<$Res>? get commentResponse {
    if (_value.commentResponse == null) {
      return null;
    }

    return $FeedPostCommentResponseCopyWith<$Res>(_value.commentResponse!,
        (value) {
      return _then(_value.copyWith(commentResponse: value));
    });
  }
}

/// @nodoc
abstract class _$FeedPostResponseCopyWith<$Res>
    implements $FeedPostResponseCopyWith<$Res> {
  factory _$FeedPostResponseCopyWith(
          _FeedPostResponse value, $Res Function(_FeedPostResponse) then) =
      __$FeedPostResponseCopyWithImpl<$Res>;
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
          List<ProfileResponse>? author,
      @JsonKey(name: "postOwnerDetails")
          PostOwnerDetailsResponse? postOwnerDetails,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "commentData")
          FeedPostCommentResponse? commentResponse});

  @override
  $PostOwnerDetailsResponseCopyWith<$Res>? get postOwnerDetails;
  @override
  $FeedPostCommentResponseCopyWith<$Res>? get commentResponse;
}

/// @nodoc
class __$FeedPostResponseCopyWithImpl<$Res>
    extends _$FeedPostResponseCopyWithImpl<$Res>
    implements _$FeedPostResponseCopyWith<$Res> {
  __$FeedPostResponseCopyWithImpl(
      _FeedPostResponse _value, $Res Function(_FeedPostResponse) _then)
      : super(_value, (v) => _then(v as _FeedPostResponse));

  @override
  _FeedPostResponse get _value => super._value as _FeedPostResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? hashtags = freezed,
    Object? image = freezed,
    Object? thumbnail = freezed,
    Object? filter = freezed,
    Object? caption = freezed,
    Object? author = freezed,
    Object? postOwnerDetails = freezed,
    Object? date = freezed,
    Object? commentResponse = freezed,
  }) {
    return _then(_FeedPostResponse(
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
              as List<ProfileResponse>?,
      postOwnerDetails: postOwnerDetails == freezed
          ? _value.postOwnerDetails
          : postOwnerDetails // ignore: cast_nullable_to_non_nullable
              as PostOwnerDetailsResponse?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      commentResponse: commentResponse == freezed
          ? _value.commentResponse
          : commentResponse // ignore: cast_nullable_to_non_nullable
              as FeedPostCommentResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedPostResponse extends _FeedPostResponse {
  _$_FeedPostResponse(
      {@JsonKey(name: "_id") this.Id,
      @JsonKey(name: "hashtags") this.hashtags,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "thumbnail") this.thumbnail,
      @JsonKey(name: "filter") this.filter,
      @JsonKey(name: "caption") this.caption,
      @JsonKey(name: "author") this.author,
      @JsonKey(name: "postOwnerDetails") this.postOwnerDetails,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "commentData") this.commentResponse})
      : super._();

  factory _$_FeedPostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedPostResponseFromJson(json);

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
  final List<ProfileResponse>? author;
  @override
  @JsonKey(name: "postOwnerDetails")
  final PostOwnerDetailsResponse? postOwnerDetails;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override // @JsonKey(name: "postVotes") List<String>? postVotes,
// @JsonKey(name: "votesCount") List<String>? votesCounts,
  @JsonKey(name: "commentData")
  final FeedPostCommentResponse? commentResponse;

  @override
  String toString() {
    return 'FeedPostResponse(Id: $Id, hashtags: $hashtags, image: $image, thumbnail: $thumbnail, filter: $filter, caption: $caption, author: $author, postOwnerDetails: $postOwnerDetails, date: $date, commentResponse: $commentResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedPostResponse &&
            (identical(other.Id, Id) || other.Id == Id) &&
            const DeepCollectionEquality().equals(other.hashtags, hashtags) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            (identical(other.postOwnerDetails, postOwnerDetails) ||
                other.postOwnerDetails == postOwnerDetails) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.commentResponse, commentResponse) ||
                other.commentResponse == commentResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      Id,
      const DeepCollectionEquality().hash(hashtags),
      image,
      thumbnail,
      filter,
      caption,
      const DeepCollectionEquality().hash(author),
      postOwnerDetails,
      date,
      commentResponse);

  @JsonKey(ignore: true)
  @override
  _$FeedPostResponseCopyWith<_FeedPostResponse> get copyWith =>
      __$FeedPostResponseCopyWithImpl<_FeedPostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedPostResponseToJson(this);
  }
}

abstract class _FeedPostResponse extends FeedPostResponse {
  factory _FeedPostResponse(
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
          List<ProfileResponse>? author,
      @JsonKey(name: "postOwnerDetails")
          PostOwnerDetailsResponse? postOwnerDetails,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "commentData")
          FeedPostCommentResponse? commentResponse}) = _$_FeedPostResponse;
  _FeedPostResponse._() : super._();

  factory _FeedPostResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedPostResponse.fromJson;

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
  List<ProfileResponse>? get author;
  @override
  @JsonKey(name: "postOwnerDetails")
  PostOwnerDetailsResponse? get postOwnerDetails;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override // @JsonKey(name: "postVotes") List<String>? postVotes,
// @JsonKey(name: "votesCount") List<String>? votesCounts,
  @JsonKey(name: "commentData")
  FeedPostCommentResponse? get commentResponse;
  @override
  @JsonKey(ignore: true)
  _$FeedPostResponseCopyWith<_FeedPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedPostCommentResponse _$FeedPostCommentResponseFromJson(
    Map<String, dynamic> json) {
  return _FeedPostCommentResponse.fromJson(json);
}

/// @nodoc
class _$FeedPostCommentResponseTearOff {
  const _$FeedPostCommentResponseTearOff();

  _FeedPostCommentResponse call(
      {@JsonKey(name: "comments")
          List<FeedPostInnerCommentResponse>? comments}) {
    return _FeedPostCommentResponse(
      comments: comments,
    );
  }

  FeedPostCommentResponse fromJson(Map<String, Object?> json) {
    return FeedPostCommentResponse.fromJson(json);
  }
}

/// @nodoc
const $FeedPostCommentResponse = _$FeedPostCommentResponseTearOff();

/// @nodoc
mixin _$FeedPostCommentResponse {
  @JsonKey(name: "comments")
  List<FeedPostInnerCommentResponse>? get comments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedPostCommentResponseCopyWith<FeedPostCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedPostCommentResponseCopyWith<$Res> {
  factory $FeedPostCommentResponseCopyWith(FeedPostCommentResponse value,
          $Res Function(FeedPostCommentResponse) then) =
      _$FeedPostCommentResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "comments")
          List<FeedPostInnerCommentResponse>? comments});
}

/// @nodoc
class _$FeedPostCommentResponseCopyWithImpl<$Res>
    implements $FeedPostCommentResponseCopyWith<$Res> {
  _$FeedPostCommentResponseCopyWithImpl(this._value, this._then);

  final FeedPostCommentResponse _value;
  // ignore: unused_field
  final $Res Function(FeedPostCommentResponse) _then;

  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<FeedPostInnerCommentResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$FeedPostCommentResponseCopyWith<$Res>
    implements $FeedPostCommentResponseCopyWith<$Res> {
  factory _$FeedPostCommentResponseCopyWith(_FeedPostCommentResponse value,
          $Res Function(_FeedPostCommentResponse) then) =
      __$FeedPostCommentResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "comments")
          List<FeedPostInnerCommentResponse>? comments});
}

/// @nodoc
class __$FeedPostCommentResponseCopyWithImpl<$Res>
    extends _$FeedPostCommentResponseCopyWithImpl<$Res>
    implements _$FeedPostCommentResponseCopyWith<$Res> {
  __$FeedPostCommentResponseCopyWithImpl(_FeedPostCommentResponse _value,
      $Res Function(_FeedPostCommentResponse) _then)
      : super(_value, (v) => _then(v as _FeedPostCommentResponse));

  @override
  _FeedPostCommentResponse get _value =>
      super._value as _FeedPostCommentResponse;

  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_FeedPostCommentResponse(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<FeedPostInnerCommentResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedPostCommentResponse extends _FeedPostCommentResponse {
  _$_FeedPostCommentResponse({@JsonKey(name: "comments") this.comments})
      : super._();

  factory _$_FeedPostCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedPostCommentResponseFromJson(json);

  @override
  @JsonKey(name: "comments")
  final List<FeedPostInnerCommentResponse>? comments;

  @override
  String toString() {
    return 'FeedPostCommentResponse(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedPostCommentResponse &&
            const DeepCollectionEquality().equals(other.comments, comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(comments));

  @JsonKey(ignore: true)
  @override
  _$FeedPostCommentResponseCopyWith<_FeedPostCommentResponse> get copyWith =>
      __$FeedPostCommentResponseCopyWithImpl<_FeedPostCommentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedPostCommentResponseToJson(this);
  }
}

abstract class _FeedPostCommentResponse extends FeedPostCommentResponse {
  factory _FeedPostCommentResponse(
          {@JsonKey(name: "comments")
              List<FeedPostInnerCommentResponse>? comments}) =
      _$_FeedPostCommentResponse;
  _FeedPostCommentResponse._() : super._();

  factory _FeedPostCommentResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedPostCommentResponse.fromJson;

  @override
  @JsonKey(name: "comments")
  List<FeedPostInnerCommentResponse>? get comments;
  @override
  @JsonKey(ignore: true)
  _$FeedPostCommentResponseCopyWith<_FeedPostCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedPostInnerCommentResponse _$FeedPostInnerCommentResponseFromJson(
    Map<String, dynamic> json) {
  return _FeedPostInnerCommentResponse.fromJson(json);
}

/// @nodoc
class _$FeedPostInnerCommentResponseTearOff {
  const _$FeedPostInnerCommentResponseTearOff();

  _FeedPostInnerCommentResponse call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "post") String? postId,
      @JsonKey(name: "author") List<ProfileResponse>? author,
      @JsonKey(name: "Animalauthor") List<String>? comments}) {
    return _FeedPostInnerCommentResponse(
      Id: Id,
      message: message,
      postId: postId,
      author: author,
      comments: comments,
    );
  }

  FeedPostInnerCommentResponse fromJson(Map<String, Object?> json) {
    return FeedPostInnerCommentResponse.fromJson(json);
  }
}

/// @nodoc
const $FeedPostInnerCommentResponse = _$FeedPostInnerCommentResponseTearOff();

/// @nodoc
mixin _$FeedPostInnerCommentResponse {
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "post")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  List<ProfileResponse>? get author => throw _privateConstructorUsedError;
  @JsonKey(name: "Animalauthor")
  List<String>? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedPostInnerCommentResponseCopyWith<FeedPostInnerCommentResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedPostInnerCommentResponseCopyWith<$Res> {
  factory $FeedPostInnerCommentResponseCopyWith(
          FeedPostInnerCommentResponse value,
          $Res Function(FeedPostInnerCommentResponse) then) =
      _$FeedPostInnerCommentResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "post") String? postId,
      @JsonKey(name: "author") List<ProfileResponse>? author,
      @JsonKey(name: "Animalauthor") List<String>? comments});
}

/// @nodoc
class _$FeedPostInnerCommentResponseCopyWithImpl<$Res>
    implements $FeedPostInnerCommentResponseCopyWith<$Res> {
  _$FeedPostInnerCommentResponseCopyWithImpl(this._value, this._then);

  final FeedPostInnerCommentResponse _value;
  // ignore: unused_field
  final $Res Function(FeedPostInnerCommentResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? message = freezed,
    Object? postId = freezed,
    Object? author = freezed,
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as List<ProfileResponse>?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$FeedPostInnerCommentResponseCopyWith<$Res>
    implements $FeedPostInnerCommentResponseCopyWith<$Res> {
  factory _$FeedPostInnerCommentResponseCopyWith(
          _FeedPostInnerCommentResponse value,
          $Res Function(_FeedPostInnerCommentResponse) then) =
      __$FeedPostInnerCommentResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "post") String? postId,
      @JsonKey(name: "author") List<ProfileResponse>? author,
      @JsonKey(name: "Animalauthor") List<String>? comments});
}

/// @nodoc
class __$FeedPostInnerCommentResponseCopyWithImpl<$Res>
    extends _$FeedPostInnerCommentResponseCopyWithImpl<$Res>
    implements _$FeedPostInnerCommentResponseCopyWith<$Res> {
  __$FeedPostInnerCommentResponseCopyWithImpl(
      _FeedPostInnerCommentResponse _value,
      $Res Function(_FeedPostInnerCommentResponse) _then)
      : super(_value, (v) => _then(v as _FeedPostInnerCommentResponse));

  @override
  _FeedPostInnerCommentResponse get _value =>
      super._value as _FeedPostInnerCommentResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? message = freezed,
    Object? postId = freezed,
    Object? author = freezed,
    Object? comments = freezed,
  }) {
    return _then(_FeedPostInnerCommentResponse(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as List<ProfileResponse>?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedPostInnerCommentResponse extends _FeedPostInnerCommentResponse {
  _$_FeedPostInnerCommentResponse(
      {@JsonKey(name: "_id") this.Id,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "post") this.postId,
      @JsonKey(name: "author") this.author,
      @JsonKey(name: "Animalauthor") this.comments})
      : super._();

  factory _$_FeedPostInnerCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedPostInnerCommentResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "post")
  final String? postId;
  @override
  @JsonKey(name: "author")
  final List<ProfileResponse>? author;
  @override
  @JsonKey(name: "Animalauthor")
  final List<String>? comments;

  @override
  String toString() {
    return 'FeedPostInnerCommentResponse(Id: $Id, message: $message, postId: $postId, author: $author, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedPostInnerCommentResponse &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.comments, comments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      Id,
      message,
      postId,
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(comments));

  @JsonKey(ignore: true)
  @override
  _$FeedPostInnerCommentResponseCopyWith<_FeedPostInnerCommentResponse>
      get copyWith => __$FeedPostInnerCommentResponseCopyWithImpl<
          _FeedPostInnerCommentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedPostInnerCommentResponseToJson(this);
  }
}

abstract class _FeedPostInnerCommentResponse
    extends FeedPostInnerCommentResponse {
  factory _FeedPostInnerCommentResponse(
          {@JsonKey(name: "_id") String? Id,
          @JsonKey(name: "message") String? message,
          @JsonKey(name: "post") String? postId,
          @JsonKey(name: "author") List<ProfileResponse>? author,
          @JsonKey(name: "Animalauthor") List<String>? comments}) =
      _$_FeedPostInnerCommentResponse;
  _FeedPostInnerCommentResponse._() : super._();

  factory _FeedPostInnerCommentResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedPostInnerCommentResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "post")
  String? get postId;
  @override
  @JsonKey(name: "author")
  List<ProfileResponse>? get author;
  @override
  @JsonKey(name: "Animalauthor")
  List<String>? get comments;
  @override
  @JsonKey(ignore: true)
  _$FeedPostInnerCommentResponseCopyWith<_FeedPostInnerCommentResponse>
      get copyWith => throw _privateConstructorUsedError;
}
