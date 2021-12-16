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
      @JsonKey(name: "Userauthor")
          List<ProfileResponse>? userAuthor,
      @JsonKey(name: "authorType")
          String? authorType,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "votesCount")
          List<VotesCountResponse>? votesCounts,
      @JsonKey(name: "commentData")
          FeedPostCommentResponse? commentResponse,
      @JsonKey(name: "Animalauthor")
          List<AnimalAuthorResponse>? animalAuthorResponse}) {
    return _FeedPostResponse(
      Id: Id,
      hashtags: hashtags,
      image: image,
      thumbnail: thumbnail,
      filter: filter,
      caption: caption,
      userAuthor: userAuthor,
      authorType: authorType,
      date: date,
      votesCounts: votesCounts,
      commentResponse: commentResponse,
      animalAuthorResponse: animalAuthorResponse,
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
  @JsonKey(name: "Userauthor")
  List<ProfileResponse>? get userAuthor => throw _privateConstructorUsedError;
  @JsonKey(name: "authorType")
  String? get authorType => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "votesCount")
  List<VotesCountResponse>? get votesCounts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "commentData")
  FeedPostCommentResponse? get commentResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "Animalauthor")
  List<AnimalAuthorResponse>? get animalAuthorResponse =>
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
      @JsonKey(name: "Userauthor")
          List<ProfileResponse>? userAuthor,
      @JsonKey(name: "authorType")
          String? authorType,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "votesCount")
          List<VotesCountResponse>? votesCounts,
      @JsonKey(name: "commentData")
          FeedPostCommentResponse? commentResponse,
      @JsonKey(name: "Animalauthor")
          List<AnimalAuthorResponse>? animalAuthorResponse});

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
    Object? userAuthor = freezed,
    Object? authorType = freezed,
    Object? date = freezed,
    Object? votesCounts = freezed,
    Object? commentResponse = freezed,
    Object? animalAuthorResponse = freezed,
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
      userAuthor: userAuthor == freezed
          ? _value.userAuthor
          : userAuthor // ignore: cast_nullable_to_non_nullable
              as List<ProfileResponse>?,
      authorType: authorType == freezed
          ? _value.authorType
          : authorType // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      votesCounts: votesCounts == freezed
          ? _value.votesCounts
          : votesCounts // ignore: cast_nullable_to_non_nullable
              as List<VotesCountResponse>?,
      commentResponse: commentResponse == freezed
          ? _value.commentResponse
          : commentResponse // ignore: cast_nullable_to_non_nullable
              as FeedPostCommentResponse?,
      animalAuthorResponse: animalAuthorResponse == freezed
          ? _value.animalAuthorResponse
          : animalAuthorResponse // ignore: cast_nullable_to_non_nullable
              as List<AnimalAuthorResponse>?,
    ));
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
      @JsonKey(name: "Userauthor")
          List<ProfileResponse>? userAuthor,
      @JsonKey(name: "authorType")
          String? authorType,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "votesCount")
          List<VotesCountResponse>? votesCounts,
      @JsonKey(name: "commentData")
          FeedPostCommentResponse? commentResponse,
      @JsonKey(name: "Animalauthor")
          List<AnimalAuthorResponse>? animalAuthorResponse});

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
    Object? userAuthor = freezed,
    Object? authorType = freezed,
    Object? date = freezed,
    Object? votesCounts = freezed,
    Object? commentResponse = freezed,
    Object? animalAuthorResponse = freezed,
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
      userAuthor: userAuthor == freezed
          ? _value.userAuthor
          : userAuthor // ignore: cast_nullable_to_non_nullable
              as List<ProfileResponse>?,
      authorType: authorType == freezed
          ? _value.authorType
          : authorType // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      votesCounts: votesCounts == freezed
          ? _value.votesCounts
          : votesCounts // ignore: cast_nullable_to_non_nullable
              as List<VotesCountResponse>?,
      commentResponse: commentResponse == freezed
          ? _value.commentResponse
          : commentResponse // ignore: cast_nullable_to_non_nullable
              as FeedPostCommentResponse?,
      animalAuthorResponse: animalAuthorResponse == freezed
          ? _value.animalAuthorResponse
          : animalAuthorResponse // ignore: cast_nullable_to_non_nullable
              as List<AnimalAuthorResponse>?,
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
      @JsonKey(name: "Userauthor") this.userAuthor,
      @JsonKey(name: "authorType") this.authorType,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "votesCount") this.votesCounts,
      @JsonKey(name: "commentData") this.commentResponse,
      @JsonKey(name: "Animalauthor") this.animalAuthorResponse})
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
  @JsonKey(name: "Userauthor")
  final List<ProfileResponse>? userAuthor;
  @override
  @JsonKey(name: "authorType")
  final String? authorType;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "votesCount")
  final List<VotesCountResponse>? votesCounts;
  @override
  @JsonKey(name: "commentData")
  final FeedPostCommentResponse? commentResponse;
  @override
  @JsonKey(name: "Animalauthor")
  final List<AnimalAuthorResponse>? animalAuthorResponse;

  @override
  String toString() {
    return 'FeedPostResponse(Id: $Id, hashtags: $hashtags, image: $image, thumbnail: $thumbnail, filter: $filter, caption: $caption, userAuthor: $userAuthor, authorType: $authorType, date: $date, votesCounts: $votesCounts, commentResponse: $commentResponse, animalAuthorResponse: $animalAuthorResponse)';
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
            const DeepCollectionEquality()
                .equals(other.userAuthor, userAuthor) &&
            (identical(other.authorType, authorType) ||
                other.authorType == authorType) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other.votesCounts, votesCounts) &&
            (identical(other.commentResponse, commentResponse) ||
                other.commentResponse == commentResponse) &&
            const DeepCollectionEquality()
                .equals(other.animalAuthorResponse, animalAuthorResponse));
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
      const DeepCollectionEquality().hash(userAuthor),
      authorType,
      date,
      const DeepCollectionEquality().hash(votesCounts),
      commentResponse,
      const DeepCollectionEquality().hash(animalAuthorResponse));

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
          @JsonKey(name: "Userauthor")
              List<ProfileResponse>? userAuthor,
          @JsonKey(name: "authorType")
              String? authorType,
          @JsonKey(name: "date")
              String? date,
          @JsonKey(name: "votesCount")
              List<VotesCountResponse>? votesCounts,
          @JsonKey(name: "commentData")
              FeedPostCommentResponse? commentResponse,
          @JsonKey(name: "Animalauthor")
              List<AnimalAuthorResponse>? animalAuthorResponse}) =
      _$_FeedPostResponse;
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
  @JsonKey(name: "Userauthor")
  List<ProfileResponse>? get userAuthor;
  @override
  @JsonKey(name: "authorType")
  String? get authorType;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "votesCount")
  List<VotesCountResponse>? get votesCounts;
  @override
  @JsonKey(name: "commentData")
  FeedPostCommentResponse? get commentResponse;
  @override
  @JsonKey(name: "Animalauthor")
  List<AnimalAuthorResponse>? get animalAuthorResponse;
  @override
  @JsonKey(ignore: true)
  _$FeedPostResponseCopyWith<_FeedPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

VotesCountResponse _$VotesCountResponseFromJson(Map<String, dynamic> json) {
  return _VotesCountResponse.fromJson(json);
}

/// @nodoc
class _$VotesCountResponseTearOff {
  const _$VotesCountResponseTearOff();

  _VotesCountResponse call({@JsonKey(name: "count") int? count}) {
    return _VotesCountResponse(
      count: count,
    );
  }

  VotesCountResponse fromJson(Map<String, Object?> json) {
    return VotesCountResponse.fromJson(json);
  }
}

/// @nodoc
const $VotesCountResponse = _$VotesCountResponseTearOff();

/// @nodoc
mixin _$VotesCountResponse {
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VotesCountResponseCopyWith<VotesCountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VotesCountResponseCopyWith<$Res> {
  factory $VotesCountResponseCopyWith(
          VotesCountResponse value, $Res Function(VotesCountResponse) then) =
      _$VotesCountResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "count") int? count});
}

/// @nodoc
class _$VotesCountResponseCopyWithImpl<$Res>
    implements $VotesCountResponseCopyWith<$Res> {
  _$VotesCountResponseCopyWithImpl(this._value, this._then);

  final VotesCountResponse _value;
  // ignore: unused_field
  final $Res Function(VotesCountResponse) _then;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$VotesCountResponseCopyWith<$Res>
    implements $VotesCountResponseCopyWith<$Res> {
  factory _$VotesCountResponseCopyWith(
          _VotesCountResponse value, $Res Function(_VotesCountResponse) then) =
      __$VotesCountResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "count") int? count});
}

/// @nodoc
class __$VotesCountResponseCopyWithImpl<$Res>
    extends _$VotesCountResponseCopyWithImpl<$Res>
    implements _$VotesCountResponseCopyWith<$Res> {
  __$VotesCountResponseCopyWithImpl(
      _VotesCountResponse _value, $Res Function(_VotesCountResponse) _then)
      : super(_value, (v) => _then(v as _VotesCountResponse));

  @override
  _VotesCountResponse get _value => super._value as _VotesCountResponse;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_VotesCountResponse(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VotesCountResponse extends _VotesCountResponse {
  _$_VotesCountResponse({@JsonKey(name: "count") this.count}) : super._();

  factory _$_VotesCountResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VotesCountResponseFromJson(json);

  @override
  @JsonKey(name: "count")
  final int? count;

  @override
  String toString() {
    return 'VotesCountResponse(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VotesCountResponse &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  _$VotesCountResponseCopyWith<_VotesCountResponse> get copyWith =>
      __$VotesCountResponseCopyWithImpl<_VotesCountResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VotesCountResponseToJson(this);
  }
}

abstract class _VotesCountResponse extends VotesCountResponse {
  factory _VotesCountResponse({@JsonKey(name: "count") int? count}) =
      _$_VotesCountResponse;
  _VotesCountResponse._() : super._();

  factory _VotesCountResponse.fromJson(Map<String, dynamic> json) =
      _$_VotesCountResponse.fromJson;

  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$VotesCountResponseCopyWith<_VotesCountResponse> get copyWith =>
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
      {@JsonKey(name: "comments") List<FeedPostInnerCommentResponse>? comments,
      @JsonKey(name: "commentCount") int? commentCount}) {
    return _FeedPostCommentResponse(
      comments: comments,
      commentCount: commentCount,
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
  @JsonKey(name: "commentCount")
  int? get commentCount => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "comments") List<FeedPostInnerCommentResponse>? comments,
      @JsonKey(name: "commentCount") int? commentCount});
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
    Object? commentCount = freezed,
  }) {
    return _then(_value.copyWith(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<FeedPostInnerCommentResponse>?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: "comments") List<FeedPostInnerCommentResponse>? comments,
      @JsonKey(name: "commentCount") int? commentCount});
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
    Object? commentCount = freezed,
  }) {
    return _then(_FeedPostCommentResponse(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<FeedPostInnerCommentResponse>?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedPostCommentResponse extends _FeedPostCommentResponse {
  _$_FeedPostCommentResponse(
      {@JsonKey(name: "comments") this.comments,
      @JsonKey(name: "commentCount") this.commentCount})
      : super._();

  factory _$_FeedPostCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedPostCommentResponseFromJson(json);

  @override
  @JsonKey(name: "comments")
  final List<FeedPostInnerCommentResponse>? comments;
  @override
  @JsonKey(name: "commentCount")
  final int? commentCount;

  @override
  String toString() {
    return 'FeedPostCommentResponse(comments: $comments, commentCount: $commentCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedPostCommentResponse &&
            const DeepCollectionEquality().equals(other.comments, comments) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(comments), commentCount);

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
          List<FeedPostInnerCommentResponse>? comments,
      @JsonKey(name: "commentCount")
          int? commentCount}) = _$_FeedPostCommentResponse;
  _FeedPostCommentResponse._() : super._();

  factory _FeedPostCommentResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedPostCommentResponse.fromJson;

  @override
  @JsonKey(name: "comments")
  List<FeedPostInnerCommentResponse>? get comments;
  @override
  @JsonKey(name: "commentCount")
  int? get commentCount;
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
      {@JsonKey(name: "post")
          String? postId,
      @JsonKey(name: "message")
          String? message,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "UserAuthor")
          List<ProfileResponse>? userAuthor,
      @JsonKey(name: "authorType")
          String? authorType,
      @JsonKey(name: "Animalauthor")
          List<AnimalAuthorResponse>? animalAuthor}) {
    return _FeedPostInnerCommentResponse(
      postId: postId,
      message: message,
      date: date,
      userAuthor: userAuthor,
      authorType: authorType,
      animalAuthor: animalAuthor,
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
  @JsonKey(name: "post")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "UserAuthor")
  List<ProfileResponse>? get userAuthor => throw _privateConstructorUsedError;
  @JsonKey(name: "authorType")
  String? get authorType => throw _privateConstructorUsedError;
  @JsonKey(name: "Animalauthor")
  List<AnimalAuthorResponse>? get animalAuthor =>
      throw _privateConstructorUsedError;

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
      {@JsonKey(name: "post") String? postId,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "UserAuthor") List<ProfileResponse>? userAuthor,
      @JsonKey(name: "authorType") String? authorType,
      @JsonKey(name: "Animalauthor") List<AnimalAuthorResponse>? animalAuthor});
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
    Object? postId = freezed,
    Object? message = freezed,
    Object? date = freezed,
    Object? userAuthor = freezed,
    Object? authorType = freezed,
    Object? animalAuthor = freezed,
  }) {
    return _then(_value.copyWith(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      userAuthor: userAuthor == freezed
          ? _value.userAuthor
          : userAuthor // ignore: cast_nullable_to_non_nullable
              as List<ProfileResponse>?,
      authorType: authorType == freezed
          ? _value.authorType
          : authorType // ignore: cast_nullable_to_non_nullable
              as String?,
      animalAuthor: animalAuthor == freezed
          ? _value.animalAuthor
          : animalAuthor // ignore: cast_nullable_to_non_nullable
              as List<AnimalAuthorResponse>?,
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
      {@JsonKey(name: "post") String? postId,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "UserAuthor") List<ProfileResponse>? userAuthor,
      @JsonKey(name: "authorType") String? authorType,
      @JsonKey(name: "Animalauthor") List<AnimalAuthorResponse>? animalAuthor});
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
    Object? postId = freezed,
    Object? message = freezed,
    Object? date = freezed,
    Object? userAuthor = freezed,
    Object? authorType = freezed,
    Object? animalAuthor = freezed,
  }) {
    return _then(_FeedPostInnerCommentResponse(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      userAuthor: userAuthor == freezed
          ? _value.userAuthor
          : userAuthor // ignore: cast_nullable_to_non_nullable
              as List<ProfileResponse>?,
      authorType: authorType == freezed
          ? _value.authorType
          : authorType // ignore: cast_nullable_to_non_nullable
              as String?,
      animalAuthor: animalAuthor == freezed
          ? _value.animalAuthor
          : animalAuthor // ignore: cast_nullable_to_non_nullable
              as List<AnimalAuthorResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedPostInnerCommentResponse extends _FeedPostInnerCommentResponse {
  _$_FeedPostInnerCommentResponse(
      {@JsonKey(name: "post") this.postId,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "UserAuthor") this.userAuthor,
      @JsonKey(name: "authorType") this.authorType,
      @JsonKey(name: "Animalauthor") this.animalAuthor})
      : super._();

  factory _$_FeedPostInnerCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedPostInnerCommentResponseFromJson(json);

  @override
  @JsonKey(name: "post")
  final String? postId;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "UserAuthor")
  final List<ProfileResponse>? userAuthor;
  @override
  @JsonKey(name: "authorType")
  final String? authorType;
  @override
  @JsonKey(name: "Animalauthor")
  final List<AnimalAuthorResponse>? animalAuthor;

  @override
  String toString() {
    return 'FeedPostInnerCommentResponse(postId: $postId, message: $message, date: $date, userAuthor: $userAuthor, authorType: $authorType, animalAuthor: $animalAuthor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedPostInnerCommentResponse &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other.userAuthor, userAuthor) &&
            (identical(other.authorType, authorType) ||
                other.authorType == authorType) &&
            const DeepCollectionEquality()
                .equals(other.animalAuthor, animalAuthor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      postId,
      message,
      date,
      const DeepCollectionEquality().hash(userAuthor),
      authorType,
      const DeepCollectionEquality().hash(animalAuthor));

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
          {@JsonKey(name: "post")
              String? postId,
          @JsonKey(name: "message")
              String? message,
          @JsonKey(name: "date")
              String? date,
          @JsonKey(name: "UserAuthor")
              List<ProfileResponse>? userAuthor,
          @JsonKey(name: "authorType")
              String? authorType,
          @JsonKey(name: "Animalauthor")
              List<AnimalAuthorResponse>? animalAuthor}) =
      _$_FeedPostInnerCommentResponse;
  _FeedPostInnerCommentResponse._() : super._();

  factory _FeedPostInnerCommentResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedPostInnerCommentResponse.fromJson;

  @override
  @JsonKey(name: "post")
  String? get postId;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "UserAuthor")
  List<ProfileResponse>? get userAuthor;
  @override
  @JsonKey(name: "authorType")
  String? get authorType;
  @override
  @JsonKey(name: "Animalauthor")
  List<AnimalAuthorResponse>? get animalAuthor;
  @override
  @JsonKey(ignore: true)
  _$FeedPostInnerCommentResponseCopyWith<_FeedPostInnerCommentResponse>
      get copyWith => throw _privateConstructorUsedError;
}

AuthorDetailsResponse _$AuthorDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthorDetailsResponse.fromJson(json);
}

/// @nodoc
class _$AuthorDetailsResponseTearOff {
  const _$AuthorDetailsResponseTearOff();

  _AuthorDetailsResponse call(
      {@JsonKey(name: "authorDetails") String? authorDetails,
      @JsonKey(name: "authorId") String? authorId}) {
    return _AuthorDetailsResponse(
      authorDetails: authorDetails,
      authorId: authorId,
    );
  }

  AuthorDetailsResponse fromJson(Map<String, Object?> json) {
    return AuthorDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $AuthorDetailsResponse = _$AuthorDetailsResponseTearOff();

/// @nodoc
mixin _$AuthorDetailsResponse {
  @JsonKey(name: "authorDetails")
  String? get authorDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "authorId")
  String? get authorId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorDetailsResponseCopyWith<AuthorDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorDetailsResponseCopyWith<$Res> {
  factory $AuthorDetailsResponseCopyWith(AuthorDetailsResponse value,
          $Res Function(AuthorDetailsResponse) then) =
      _$AuthorDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "authorDetails") String? authorDetails,
      @JsonKey(name: "authorId") String? authorId});
}

/// @nodoc
class _$AuthorDetailsResponseCopyWithImpl<$Res>
    implements $AuthorDetailsResponseCopyWith<$Res> {
  _$AuthorDetailsResponseCopyWithImpl(this._value, this._then);

  final AuthorDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(AuthorDetailsResponse) _then;

  @override
  $Res call({
    Object? authorDetails = freezed,
    Object? authorId = freezed,
  }) {
    return _then(_value.copyWith(
      authorDetails: authorDetails == freezed
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AuthorDetailsResponseCopyWith<$Res>
    implements $AuthorDetailsResponseCopyWith<$Res> {
  factory _$AuthorDetailsResponseCopyWith(_AuthorDetailsResponse value,
          $Res Function(_AuthorDetailsResponse) then) =
      __$AuthorDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "authorDetails") String? authorDetails,
      @JsonKey(name: "authorId") String? authorId});
}

/// @nodoc
class __$AuthorDetailsResponseCopyWithImpl<$Res>
    extends _$AuthorDetailsResponseCopyWithImpl<$Res>
    implements _$AuthorDetailsResponseCopyWith<$Res> {
  __$AuthorDetailsResponseCopyWithImpl(_AuthorDetailsResponse _value,
      $Res Function(_AuthorDetailsResponse) _then)
      : super(_value, (v) => _then(v as _AuthorDetailsResponse));

  @override
  _AuthorDetailsResponse get _value => super._value as _AuthorDetailsResponse;

  @override
  $Res call({
    Object? authorDetails = freezed,
    Object? authorId = freezed,
  }) {
    return _then(_AuthorDetailsResponse(
      authorDetails: authorDetails == freezed
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorDetailsResponse extends _AuthorDetailsResponse {
  _$_AuthorDetailsResponse(
      {@JsonKey(name: "authorDetails") this.authorDetails,
      @JsonKey(name: "authorId") this.authorId})
      : super._();

  factory _$_AuthorDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "authorDetails")
  final String? authorDetails;
  @override
  @JsonKey(name: "authorId")
  final String? authorId;

  @override
  String toString() {
    return 'AuthorDetailsResponse(authorDetails: $authorDetails, authorId: $authorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthorDetailsResponse &&
            (identical(other.authorDetails, authorDetails) ||
                other.authorDetails == authorDetails) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authorDetails, authorId);

  @JsonKey(ignore: true)
  @override
  _$AuthorDetailsResponseCopyWith<_AuthorDetailsResponse> get copyWith =>
      __$AuthorDetailsResponseCopyWithImpl<_AuthorDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorDetailsResponseToJson(this);
  }
}

abstract class _AuthorDetailsResponse extends AuthorDetailsResponse {
  factory _AuthorDetailsResponse(
      {@JsonKey(name: "authorDetails") String? authorDetails,
      @JsonKey(name: "authorId") String? authorId}) = _$_AuthorDetailsResponse;
  _AuthorDetailsResponse._() : super._();

  factory _AuthorDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthorDetailsResponse.fromJson;

  @override
  @JsonKey(name: "authorDetails")
  String? get authorDetails;
  @override
  @JsonKey(name: "authorId")
  String? get authorId;
  @override
  @JsonKey(ignore: true)
  _$AuthorDetailsResponseCopyWith<_AuthorDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimalAuthorResponse _$AnimalAuthorResponseFromJson(Map<String, dynamic> json) {
  return _AnimalAuthorResponse.fromJson(json);
}

/// @nodoc
class _$AnimalAuthorResponseTearOff {
  const _$AnimalAuthorResponseTearOff();

  _AnimalAuthorResponse call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "category") String? token}) {
    return _AnimalAuthorResponse(
      Id: Id,
      name: name,
      avatar: avatar,
      token: token,
    );
  }

  AnimalAuthorResponse fromJson(Map<String, Object?> json) {
    return AnimalAuthorResponse.fromJson(json);
  }
}

/// @nodoc
const $AnimalAuthorResponse = _$AnimalAuthorResponseTearOff();

/// @nodoc
mixin _$AnimalAuthorResponse {
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimalAuthorResponseCopyWith<AnimalAuthorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalAuthorResponseCopyWith<$Res> {
  factory $AnimalAuthorResponseCopyWith(AnimalAuthorResponse value,
          $Res Function(AnimalAuthorResponse) then) =
      _$AnimalAuthorResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "category") String? token});
}

/// @nodoc
class _$AnimalAuthorResponseCopyWithImpl<$Res>
    implements $AnimalAuthorResponseCopyWith<$Res> {
  _$AnimalAuthorResponseCopyWithImpl(this._value, this._then);

  final AnimalAuthorResponse _value;
  // ignore: unused_field
  final $Res Function(AnimalAuthorResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AnimalAuthorResponseCopyWith<$Res>
    implements $AnimalAuthorResponseCopyWith<$Res> {
  factory _$AnimalAuthorResponseCopyWith(_AnimalAuthorResponse value,
          $Res Function(_AnimalAuthorResponse) then) =
      __$AnimalAuthorResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "category") String? token});
}

/// @nodoc
class __$AnimalAuthorResponseCopyWithImpl<$Res>
    extends _$AnimalAuthorResponseCopyWithImpl<$Res>
    implements _$AnimalAuthorResponseCopyWith<$Res> {
  __$AnimalAuthorResponseCopyWithImpl(
      _AnimalAuthorResponse _value, $Res Function(_AnimalAuthorResponse) _then)
      : super(_value, (v) => _then(v as _AnimalAuthorResponse));

  @override
  _AnimalAuthorResponse get _value => super._value as _AnimalAuthorResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? token = freezed,
  }) {
    return _then(_AnimalAuthorResponse(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimalAuthorResponse extends _AnimalAuthorResponse {
  _$_AnimalAuthorResponse(
      {@JsonKey(name: "_id") this.Id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "avatar") this.avatar,
      @JsonKey(name: "category") this.token})
      : super._();

  factory _$_AnimalAuthorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AnimalAuthorResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;
  @override
  @JsonKey(name: "category")
  final String? token;

  @override
  String toString() {
    return 'AnimalAuthorResponse(Id: $Id, name: $name, avatar: $avatar, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimalAuthorResponse &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Id, name, avatar, token);

  @JsonKey(ignore: true)
  @override
  _$AnimalAuthorResponseCopyWith<_AnimalAuthorResponse> get copyWith =>
      __$AnimalAuthorResponseCopyWithImpl<_AnimalAuthorResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimalAuthorResponseToJson(this);
  }
}

abstract class _AnimalAuthorResponse extends AnimalAuthorResponse {
  factory _AnimalAuthorResponse(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "category") String? token}) = _$_AnimalAuthorResponse;
  _AnimalAuthorResponse._() : super._();

  factory _AnimalAuthorResponse.fromJson(Map<String, dynamic> json) =
      _$_AnimalAuthorResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(name: "category")
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$AnimalAuthorResponseCopyWith<_AnimalAuthorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
