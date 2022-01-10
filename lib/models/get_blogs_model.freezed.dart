// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_blogs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

getBlogs _$getBlogsFromJson(Map<String, dynamic> json) {
  return _getBlogs.fromJson(json);
}

/// @nodoc
class _$getBlogsTearOff {
  const _$getBlogsTearOff();

  _getBlogs call({@JsonKey(name: "blogs") List<blogDetails>? blogs}) {
    return _getBlogs(
      blogs: blogs,
    );
  }

  getBlogs fromJson(Map<String, Object?> json) {
    return getBlogs.fromJson(json);
  }
}

/// @nodoc
const $getBlogs = _$getBlogsTearOff();

/// @nodoc
mixin _$getBlogs {
  @JsonKey(name: "blogs")
  List<blogDetails>? get blogs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $getBlogsCopyWith<getBlogs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $getBlogsCopyWith<$Res> {
  factory $getBlogsCopyWith(getBlogs value, $Res Function(getBlogs) then) =
      _$getBlogsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "blogs") List<blogDetails>? blogs});
}

/// @nodoc
class _$getBlogsCopyWithImpl<$Res> implements $getBlogsCopyWith<$Res> {
  _$getBlogsCopyWithImpl(this._value, this._then);

  final getBlogs _value;
  // ignore: unused_field
  final $Res Function(getBlogs) _then;

  @override
  $Res call({
    Object? blogs = freezed,
  }) {
    return _then(_value.copyWith(
      blogs: blogs == freezed
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<blogDetails>?,
    ));
  }
}

/// @nodoc
abstract class _$getBlogsCopyWith<$Res> implements $getBlogsCopyWith<$Res> {
  factory _$getBlogsCopyWith(_getBlogs value, $Res Function(_getBlogs) then) =
      __$getBlogsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "blogs") List<blogDetails>? blogs});
}

/// @nodoc
class __$getBlogsCopyWithImpl<$Res> extends _$getBlogsCopyWithImpl<$Res>
    implements _$getBlogsCopyWith<$Res> {
  __$getBlogsCopyWithImpl(_getBlogs _value, $Res Function(_getBlogs) _then)
      : super(_value, (v) => _then(v as _getBlogs));

  @override
  _getBlogs get _value => super._value as _getBlogs;

  @override
  $Res call({
    Object? blogs = freezed,
  }) {
    return _then(_getBlogs(
      blogs: blogs == freezed
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<blogDetails>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_getBlogs extends _getBlogs {
  _$_getBlogs({@JsonKey(name: "blogs") this.blogs}) : super._();

  factory _$_getBlogs.fromJson(Map<String, dynamic> json) =>
      _$$_getBlogsFromJson(json);

  @override
  @JsonKey(name: "blogs")
  final List<blogDetails>? blogs;

  @override
  String toString() {
    return 'getBlogs(blogs: $blogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _getBlogs &&
            const DeepCollectionEquality().equals(other.blogs, blogs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(blogs));

  @JsonKey(ignore: true)
  @override
  _$getBlogsCopyWith<_getBlogs> get copyWith =>
      __$getBlogsCopyWithImpl<_getBlogs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_getBlogsToJson(this);
  }
}

abstract class _getBlogs extends getBlogs {
  factory _getBlogs({@JsonKey(name: "blogs") List<blogDetails>? blogs}) =
      _$_getBlogs;
  _getBlogs._() : super._();

  factory _getBlogs.fromJson(Map<String, dynamic> json) = _$_getBlogs.fromJson;

  @override
  @JsonKey(name: "blogs")
  List<blogDetails>? get blogs;
  @override
  @JsonKey(ignore: true)
  _$getBlogsCopyWith<_getBlogs> get copyWith =>
      throw _privateConstructorUsedError;
}

blogDetails _$blogDetailsFromJson(Map<String, dynamic> json) {
  return _blogDetails.fromJson(json);
}

/// @nodoc
class _$blogDetailsTearOff {
  const _$blogDetailsTearOff();

  _blogDetails call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "images") List<dynamic>? images,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "likes") int? likes,
      @JsonKey(name: "text") String? text,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "authorType") String? authorType,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "peopleLiked") List<dynamic>? peopleLiked,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "isLiked") bool? isLiked}) {
    return _blogDetails(
      sId: sId,
      images: images,
      thumbnail: thumbnail,
      likes: likes,
      text: text,
      author: author,
      authorType: authorType,
      title: title,
      peopleLiked: peopleLiked,
      date: date,
      isLiked: isLiked,
    );
  }

  blogDetails fromJson(Map<String, Object?> json) {
    return blogDetails.fromJson(json);
  }
}

/// @nodoc
const $blogDetails = _$blogDetailsTearOff();

/// @nodoc
mixin _$blogDetails {
  @JsonKey(name: "_id")
  String? get sId => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<dynamic>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "likes")
  int? get likes => throw _privateConstructorUsedError;
  @JsonKey(name: "text")
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: "authorType")
  String? get authorType => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "peopleLiked")
  List<dynamic>? get peopleLiked => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "isLiked")
  bool? get isLiked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $blogDetailsCopyWith<blogDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $blogDetailsCopyWith<$Res> {
  factory $blogDetailsCopyWith(
          blogDetails value, $Res Function(blogDetails) then) =
      _$blogDetailsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "images") List<dynamic>? images,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "likes") int? likes,
      @JsonKey(name: "text") String? text,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "authorType") String? authorType,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "peopleLiked") List<dynamic>? peopleLiked,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "isLiked") bool? isLiked});
}

/// @nodoc
class _$blogDetailsCopyWithImpl<$Res> implements $blogDetailsCopyWith<$Res> {
  _$blogDetailsCopyWithImpl(this._value, this._then);

  final blogDetails _value;
  // ignore: unused_field
  final $Res Function(blogDetails) _then;

  @override
  $Res call({
    Object? sId = freezed,
    Object? images = freezed,
    Object? thumbnail = freezed,
    Object? likes = freezed,
    Object? text = freezed,
    Object? author = freezed,
    Object? authorType = freezed,
    Object? title = freezed,
    Object? peopleLiked = freezed,
    Object? date = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_value.copyWith(
      sId: sId == freezed
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      authorType: authorType == freezed
          ? _value.authorType
          : authorType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      peopleLiked: peopleLiked == freezed
          ? _value.peopleLiked
          : peopleLiked // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$blogDetailsCopyWith<$Res>
    implements $blogDetailsCopyWith<$Res> {
  factory _$blogDetailsCopyWith(
          _blogDetails value, $Res Function(_blogDetails) then) =
      __$blogDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "images") List<dynamic>? images,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "likes") int? likes,
      @JsonKey(name: "text") String? text,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "authorType") String? authorType,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "peopleLiked") List<dynamic>? peopleLiked,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "isLiked") bool? isLiked});
}

/// @nodoc
class __$blogDetailsCopyWithImpl<$Res> extends _$blogDetailsCopyWithImpl<$Res>
    implements _$blogDetailsCopyWith<$Res> {
  __$blogDetailsCopyWithImpl(
      _blogDetails _value, $Res Function(_blogDetails) _then)
      : super(_value, (v) => _then(v as _blogDetails));

  @override
  _blogDetails get _value => super._value as _blogDetails;

  @override
  $Res call({
    Object? sId = freezed,
    Object? images = freezed,
    Object? thumbnail = freezed,
    Object? likes = freezed,
    Object? text = freezed,
    Object? author = freezed,
    Object? authorType = freezed,
    Object? title = freezed,
    Object? peopleLiked = freezed,
    Object? date = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_blogDetails(
      sId: sId == freezed
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      authorType: authorType == freezed
          ? _value.authorType
          : authorType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      peopleLiked: peopleLiked == freezed
          ? _value.peopleLiked
          : peopleLiked // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_blogDetails extends _blogDetails {
  _$_blogDetails(
      {@JsonKey(name: "_id") this.sId,
      @JsonKey(name: "images") this.images,
      @JsonKey(name: "thumbnail") this.thumbnail,
      @JsonKey(name: "likes") this.likes,
      @JsonKey(name: "text") this.text,
      @JsonKey(name: "author") this.author,
      @JsonKey(name: "authorType") this.authorType,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "peopleLiked") this.peopleLiked,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "isLiked") this.isLiked})
      : super._();

  factory _$_blogDetails.fromJson(Map<String, dynamic> json) =>
      _$$_blogDetailsFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? sId;
  @override
  @JsonKey(name: "images")
  final List<dynamic>? images;
  @override
  @JsonKey(name: "thumbnail")
  final String? thumbnail;
  @override
  @JsonKey(name: "likes")
  final int? likes;
  @override
  @JsonKey(name: "text")
  final String? text;
  @override
  @JsonKey(name: "author")
  final String? author;
  @override
  @JsonKey(name: "authorType")
  final String? authorType;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "peopleLiked")
  final List<dynamic>? peopleLiked;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "isLiked")
  final bool? isLiked;

  @override
  String toString() {
    return 'blogDetails(sId: $sId, images: $images, thumbnail: $thumbnail, likes: $likes, text: $text, author: $author, authorType: $authorType, title: $title, peopleLiked: $peopleLiked, date: $date, isLiked: $isLiked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _blogDetails &&
            (identical(other.sId, sId) || other.sId == sId) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.authorType, authorType) ||
                other.authorType == authorType) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other.peopleLiked, peopleLiked) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sId,
      const DeepCollectionEquality().hash(images),
      thumbnail,
      likes,
      text,
      author,
      authorType,
      title,
      const DeepCollectionEquality().hash(peopleLiked),
      date,
      isLiked);

  @JsonKey(ignore: true)
  @override
  _$blogDetailsCopyWith<_blogDetails> get copyWith =>
      __$blogDetailsCopyWithImpl<_blogDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_blogDetailsToJson(this);
  }
}

abstract class _blogDetails extends blogDetails {
  factory _blogDetails(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "images") List<dynamic>? images,
      @JsonKey(name: "thumbnail") String? thumbnail,
      @JsonKey(name: "likes") int? likes,
      @JsonKey(name: "text") String? text,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "authorType") String? authorType,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "peopleLiked") List<dynamic>? peopleLiked,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "isLiked") bool? isLiked}) = _$_blogDetails;
  _blogDetails._() : super._();

  factory _blogDetails.fromJson(Map<String, dynamic> json) =
      _$_blogDetails.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get sId;
  @override
  @JsonKey(name: "images")
  List<dynamic>? get images;
  @override
  @JsonKey(name: "thumbnail")
  String? get thumbnail;
  @override
  @JsonKey(name: "likes")
  int? get likes;
  @override
  @JsonKey(name: "text")
  String? get text;
  @override
  @JsonKey(name: "author")
  String? get author;
  @override
  @JsonKey(name: "authorType")
  String? get authorType;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "peopleLiked")
  List<dynamic>? get peopleLiked;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "isLiked")
  bool? get isLiked;
  @override
  @JsonKey(ignore: true)
  _$blogDetailsCopyWith<_blogDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
