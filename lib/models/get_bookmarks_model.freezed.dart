// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_bookmarks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

getBookmarks _$getBookmarksFromJson(Map<String, dynamic> json) {
  return _getBookmarks.fromJson(json);
}

/// @nodoc
class _$getBookmarksTearOff {
  const _$getBookmarksTearOff();

  _getBookmarks call(
      {@JsonKey(name: "bookmarks") List<FeedPostResponse>? listOfBookmarks}) {
    return _getBookmarks(
      listOfBookmarks: listOfBookmarks,
    );
  }

  getBookmarks fromJson(Map<String, Object?> json) {
    return getBookmarks.fromJson(json);
  }
}

/// @nodoc
const $getBookmarks = _$getBookmarksTearOff();

/// @nodoc
mixin _$getBookmarks {
  @JsonKey(name: "bookmarks")
  List<FeedPostResponse>? get listOfBookmarks =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $getBookmarksCopyWith<getBookmarks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $getBookmarksCopyWith<$Res> {
  factory $getBookmarksCopyWith(
          getBookmarks value, $Res Function(getBookmarks) then) =
      _$getBookmarksCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "bookmarks") List<FeedPostResponse>? listOfBookmarks});
}

/// @nodoc
class _$getBookmarksCopyWithImpl<$Res> implements $getBookmarksCopyWith<$Res> {
  _$getBookmarksCopyWithImpl(this._value, this._then);

  final getBookmarks _value;
  // ignore: unused_field
  final $Res Function(getBookmarks) _then;

  @override
  $Res call({
    Object? listOfBookmarks = freezed,
  }) {
    return _then(_value.copyWith(
      listOfBookmarks: listOfBookmarks == freezed
          ? _value.listOfBookmarks
          : listOfBookmarks // ignore: cast_nullable_to_non_nullable
              as List<FeedPostResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$getBookmarksCopyWith<$Res>
    implements $getBookmarksCopyWith<$Res> {
  factory _$getBookmarksCopyWith(
          _getBookmarks value, $Res Function(_getBookmarks) then) =
      __$getBookmarksCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "bookmarks") List<FeedPostResponse>? listOfBookmarks});
}

/// @nodoc
class __$getBookmarksCopyWithImpl<$Res> extends _$getBookmarksCopyWithImpl<$Res>
    implements _$getBookmarksCopyWith<$Res> {
  __$getBookmarksCopyWithImpl(
      _getBookmarks _value, $Res Function(_getBookmarks) _then)
      : super(_value, (v) => _then(v as _getBookmarks));

  @override
  _getBookmarks get _value => super._value as _getBookmarks;

  @override
  $Res call({
    Object? listOfBookmarks = freezed,
  }) {
    return _then(_getBookmarks(
      listOfBookmarks: listOfBookmarks == freezed
          ? _value.listOfBookmarks
          : listOfBookmarks // ignore: cast_nullable_to_non_nullable
              as List<FeedPostResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_getBookmarks extends _getBookmarks {
  _$_getBookmarks({@JsonKey(name: "bookmarks") this.listOfBookmarks})
      : super._();

  factory _$_getBookmarks.fromJson(Map<String, dynamic> json) =>
      _$$_getBookmarksFromJson(json);

  @override
  @JsonKey(name: "bookmarks")
  final List<FeedPostResponse>? listOfBookmarks;

  @override
  String toString() {
    return 'getBookmarks(listOfBookmarks: $listOfBookmarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _getBookmarks &&
            const DeepCollectionEquality()
                .equals(other.listOfBookmarks, listOfBookmarks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfBookmarks));

  @JsonKey(ignore: true)
  @override
  _$getBookmarksCopyWith<_getBookmarks> get copyWith =>
      __$getBookmarksCopyWithImpl<_getBookmarks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_getBookmarksToJson(this);
  }
}

abstract class _getBookmarks extends getBookmarks {
  factory _getBookmarks(
      {@JsonKey(name: "bookmarks")
          List<FeedPostResponse>? listOfBookmarks}) = _$_getBookmarks;
  _getBookmarks._() : super._();

  factory _getBookmarks.fromJson(Map<String, dynamic> json) =
      _$_getBookmarks.fromJson;

  @override
  @JsonKey(name: "bookmarks")
  List<FeedPostResponse>? get listOfBookmarks;
  @override
  @JsonKey(ignore: true)
  _$getBookmarksCopyWith<_getBookmarks> get copyWith =>
      throw _privateConstructorUsedError;
}

BookmarkDetailResponse _$BookmarkDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _BookmarkDetailResponse.fromJson(json);
}

/// @nodoc
class _$BookmarkDetailResponseTearOff {
  const _$BookmarkDetailResponseTearOff();

  _BookmarkDetailResponse call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "thumbnail") String? thumbnail}) {
    return _BookmarkDetailResponse(
      sId: sId,
      thumbnail: thumbnail,
    );
  }

  BookmarkDetailResponse fromJson(Map<String, Object?> json) {
    return BookmarkDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $BookmarkDetailResponse = _$BookmarkDetailResponseTearOff();

/// @nodoc
mixin _$BookmarkDetailResponse {
  @JsonKey(name: "_id")
  String? get sId => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkDetailResponseCopyWith<BookmarkDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkDetailResponseCopyWith<$Res> {
  factory $BookmarkDetailResponseCopyWith(BookmarkDetailResponse value,
          $Res Function(BookmarkDetailResponse) then) =
      _$BookmarkDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "thumbnail") String? thumbnail});
}

/// @nodoc
class _$BookmarkDetailResponseCopyWithImpl<$Res>
    implements $BookmarkDetailResponseCopyWith<$Res> {
  _$BookmarkDetailResponseCopyWithImpl(this._value, this._then);

  final BookmarkDetailResponse _value;
  // ignore: unused_field
  final $Res Function(BookmarkDetailResponse) _then;

  @override
  $Res call({
    Object? sId = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      sId: sId == freezed
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BookmarkDetailResponseCopyWith<$Res>
    implements $BookmarkDetailResponseCopyWith<$Res> {
  factory _$BookmarkDetailResponseCopyWith(_BookmarkDetailResponse value,
          $Res Function(_BookmarkDetailResponse) then) =
      __$BookmarkDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? sId,
      @JsonKey(name: "thumbnail") String? thumbnail});
}

/// @nodoc
class __$BookmarkDetailResponseCopyWithImpl<$Res>
    extends _$BookmarkDetailResponseCopyWithImpl<$Res>
    implements _$BookmarkDetailResponseCopyWith<$Res> {
  __$BookmarkDetailResponseCopyWithImpl(_BookmarkDetailResponse _value,
      $Res Function(_BookmarkDetailResponse) _then)
      : super(_value, (v) => _then(v as _BookmarkDetailResponse));

  @override
  _BookmarkDetailResponse get _value => super._value as _BookmarkDetailResponse;

  @override
  $Res call({
    Object? sId = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_BookmarkDetailResponse(
      sId: sId == freezed
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookmarkDetailResponse extends _BookmarkDetailResponse {
  _$_BookmarkDetailResponse(
      {@JsonKey(name: "_id") this.sId,
      @JsonKey(name: "thumbnail") this.thumbnail})
      : super._();

  factory _$_BookmarkDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BookmarkDetailResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? sId;
  @override
  @JsonKey(name: "thumbnail")
  final String? thumbnail;

  @override
  String toString() {
    return 'BookmarkDetailResponse(sId: $sId, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookmarkDetailResponse &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sId, thumbnail);

  @JsonKey(ignore: true)
  @override
  _$BookmarkDetailResponseCopyWith<_BookmarkDetailResponse> get copyWith =>
      __$BookmarkDetailResponseCopyWithImpl<_BookmarkDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookmarkDetailResponseToJson(this);
  }
}

abstract class _BookmarkDetailResponse extends BookmarkDetailResponse {
  factory _BookmarkDetailResponse(
          {@JsonKey(name: "_id") String? sId,
          @JsonKey(name: "thumbnail") String? thumbnail}) =
      _$_BookmarkDetailResponse;
  _BookmarkDetailResponse._() : super._();

  factory _BookmarkDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_BookmarkDetailResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get sId;
  @override
  @JsonKey(name: "thumbnail")
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$BookmarkDetailResponseCopyWith<_BookmarkDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
