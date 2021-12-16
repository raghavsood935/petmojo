// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_of_comments_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfCommentsResponse _$ListOfCommentsResponseFromJson(
    Map<String, dynamic> json) {
  return _ListOfCommentsResponse.fromJson(json);
}

/// @nodoc
class _$ListOfCommentsResponseTearOff {
  const _$ListOfCommentsResponseTearOff();

  _ListOfCommentsResponse call(
      {@JsonKey(name: "comments") List<CommentResponse>? listOfComments}) {
    return _ListOfCommentsResponse(
      listOfComments: listOfComments,
    );
  }

  ListOfCommentsResponse fromJson(Map<String, Object?> json) {
    return ListOfCommentsResponse.fromJson(json);
  }
}

/// @nodoc
const $ListOfCommentsResponse = _$ListOfCommentsResponseTearOff();

/// @nodoc
mixin _$ListOfCommentsResponse {
  @JsonKey(name: "comments")
  List<CommentResponse>? get listOfComments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfCommentsResponseCopyWith<ListOfCommentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfCommentsResponseCopyWith<$Res> {
  factory $ListOfCommentsResponseCopyWith(ListOfCommentsResponse value,
          $Res Function(ListOfCommentsResponse) then) =
      _$ListOfCommentsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "comments") List<CommentResponse>? listOfComments});
}

/// @nodoc
class _$ListOfCommentsResponseCopyWithImpl<$Res>
    implements $ListOfCommentsResponseCopyWith<$Res> {
  _$ListOfCommentsResponseCopyWithImpl(this._value, this._then);

  final ListOfCommentsResponse _value;
  // ignore: unused_field
  final $Res Function(ListOfCommentsResponse) _then;

  @override
  $Res call({
    Object? listOfComments = freezed,
  }) {
    return _then(_value.copyWith(
      listOfComments: listOfComments == freezed
          ? _value.listOfComments
          : listOfComments // ignore: cast_nullable_to_non_nullable
              as List<CommentResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListOfCommentsResponseCopyWith<$Res>
    implements $ListOfCommentsResponseCopyWith<$Res> {
  factory _$ListOfCommentsResponseCopyWith(_ListOfCommentsResponse value,
          $Res Function(_ListOfCommentsResponse) then) =
      __$ListOfCommentsResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "comments") List<CommentResponse>? listOfComments});
}

/// @nodoc
class __$ListOfCommentsResponseCopyWithImpl<$Res>
    extends _$ListOfCommentsResponseCopyWithImpl<$Res>
    implements _$ListOfCommentsResponseCopyWith<$Res> {
  __$ListOfCommentsResponseCopyWithImpl(_ListOfCommentsResponse _value,
      $Res Function(_ListOfCommentsResponse) _then)
      : super(_value, (v) => _then(v as _ListOfCommentsResponse));

  @override
  _ListOfCommentsResponse get _value => super._value as _ListOfCommentsResponse;

  @override
  $Res call({
    Object? listOfComments = freezed,
  }) {
    return _then(_ListOfCommentsResponse(
      listOfComments: listOfComments == freezed
          ? _value.listOfComments
          : listOfComments // ignore: cast_nullable_to_non_nullable
              as List<CommentResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfCommentsResponse extends _ListOfCommentsResponse {
  _$_ListOfCommentsResponse({@JsonKey(name: "comments") this.listOfComments})
      : super._();

  factory _$_ListOfCommentsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListOfCommentsResponseFromJson(json);

  @override
  @JsonKey(name: "comments")
  final List<CommentResponse>? listOfComments;

  @override
  String toString() {
    return 'ListOfCommentsResponse(listOfComments: $listOfComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListOfCommentsResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfComments, listOfComments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfComments));

  @JsonKey(ignore: true)
  @override
  _$ListOfCommentsResponseCopyWith<_ListOfCommentsResponse> get copyWith =>
      __$ListOfCommentsResponseCopyWithImpl<_ListOfCommentsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfCommentsResponseToJson(this);
  }
}

abstract class _ListOfCommentsResponse extends ListOfCommentsResponse {
  factory _ListOfCommentsResponse(
          {@JsonKey(name: "comments") List<CommentResponse>? listOfComments}) =
      _$_ListOfCommentsResponse;
  _ListOfCommentsResponse._() : super._();

  factory _ListOfCommentsResponse.fromJson(Map<String, dynamic> json) =
      _$_ListOfCommentsResponse.fromJson;

  @override
  @JsonKey(name: "comments")
  List<CommentResponse>? get listOfComments;
  @override
  @JsonKey(ignore: true)
  _$ListOfCommentsResponseCopyWith<_ListOfCommentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentResponse _$CommentResponseFromJson(Map<String, dynamic> json) {
  return _CommentResponse.fromJson(json);
}

/// @nodoc
class _$CommentResponseTearOff {
  const _$CommentResponseTearOff();

  _CommentResponse call(
      {@JsonKey(name: "_id")
          String? commentId,
      @JsonKey(name: "message")
          String? message,
      @JsonKey(name: "Userauthor")
          List<AuthorDetailsResponse>? authorDetailsResponse,
      @JsonKey(name: "Animalauthor")
          List<AnimalAuthorDetailsResponse>? animalAuthorDetailsResponse,
      @JsonKey(name: "authorType")
          String? authorType,
      @JsonKey(name: "post")
          String? postId,
      @JsonKey(name: "date")
          String? date}) {
    return _CommentResponse(
      commentId: commentId,
      message: message,
      authorDetailsResponse: authorDetailsResponse,
      animalAuthorDetailsResponse: animalAuthorDetailsResponse,
      authorType: authorType,
      postId: postId,
      date: date,
    );
  }

  CommentResponse fromJson(Map<String, Object?> json) {
    return CommentResponse.fromJson(json);
  }
}

/// @nodoc
const $CommentResponse = _$CommentResponseTearOff();

/// @nodoc
mixin _$CommentResponse {
  @JsonKey(name: "_id")
  String? get commentId => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "Userauthor")
  List<AuthorDetailsResponse>? get authorDetailsResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "Animalauthor")
  List<AnimalAuthorDetailsResponse>? get animalAuthorDetailsResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "authorType")
  String? get authorType => throw _privateConstructorUsedError;
  @JsonKey(name: "post")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentResponseCopyWith<CommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentResponseCopyWith<$Res> {
  factory $CommentResponseCopyWith(
          CommentResponse value, $Res Function(CommentResponse) then) =
      _$CommentResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id")
          String? commentId,
      @JsonKey(name: "message")
          String? message,
      @JsonKey(name: "Userauthor")
          List<AuthorDetailsResponse>? authorDetailsResponse,
      @JsonKey(name: "Animalauthor")
          List<AnimalAuthorDetailsResponse>? animalAuthorDetailsResponse,
      @JsonKey(name: "authorType")
          String? authorType,
      @JsonKey(name: "post")
          String? postId,
      @JsonKey(name: "date")
          String? date});
}

/// @nodoc
class _$CommentResponseCopyWithImpl<$Res>
    implements $CommentResponseCopyWith<$Res> {
  _$CommentResponseCopyWithImpl(this._value, this._then);

  final CommentResponse _value;
  // ignore: unused_field
  final $Res Function(CommentResponse) _then;

  @override
  $Res call({
    Object? commentId = freezed,
    Object? message = freezed,
    Object? authorDetailsResponse = freezed,
    Object? animalAuthorDetailsResponse = freezed,
    Object? authorType = freezed,
    Object? postId = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      commentId: commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      authorDetailsResponse: authorDetailsResponse == freezed
          ? _value.authorDetailsResponse
          : authorDetailsResponse // ignore: cast_nullable_to_non_nullable
              as List<AuthorDetailsResponse>?,
      animalAuthorDetailsResponse: animalAuthorDetailsResponse == freezed
          ? _value.animalAuthorDetailsResponse
          : animalAuthorDetailsResponse // ignore: cast_nullable_to_non_nullable
              as List<AnimalAuthorDetailsResponse>?,
      authorType: authorType == freezed
          ? _value.authorType
          : authorType // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommentResponseCopyWith<$Res>
    implements $CommentResponseCopyWith<$Res> {
  factory _$CommentResponseCopyWith(
          _CommentResponse value, $Res Function(_CommentResponse) then) =
      __$CommentResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id")
          String? commentId,
      @JsonKey(name: "message")
          String? message,
      @JsonKey(name: "Userauthor")
          List<AuthorDetailsResponse>? authorDetailsResponse,
      @JsonKey(name: "Animalauthor")
          List<AnimalAuthorDetailsResponse>? animalAuthorDetailsResponse,
      @JsonKey(name: "authorType")
          String? authorType,
      @JsonKey(name: "post")
          String? postId,
      @JsonKey(name: "date")
          String? date});
}

/// @nodoc
class __$CommentResponseCopyWithImpl<$Res>
    extends _$CommentResponseCopyWithImpl<$Res>
    implements _$CommentResponseCopyWith<$Res> {
  __$CommentResponseCopyWithImpl(
      _CommentResponse _value, $Res Function(_CommentResponse) _then)
      : super(_value, (v) => _then(v as _CommentResponse));

  @override
  _CommentResponse get _value => super._value as _CommentResponse;

  @override
  $Res call({
    Object? commentId = freezed,
    Object? message = freezed,
    Object? authorDetailsResponse = freezed,
    Object? animalAuthorDetailsResponse = freezed,
    Object? authorType = freezed,
    Object? postId = freezed,
    Object? date = freezed,
  }) {
    return _then(_CommentResponse(
      commentId: commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      authorDetailsResponse: authorDetailsResponse == freezed
          ? _value.authorDetailsResponse
          : authorDetailsResponse // ignore: cast_nullable_to_non_nullable
              as List<AuthorDetailsResponse>?,
      animalAuthorDetailsResponse: animalAuthorDetailsResponse == freezed
          ? _value.animalAuthorDetailsResponse
          : animalAuthorDetailsResponse // ignore: cast_nullable_to_non_nullable
              as List<AnimalAuthorDetailsResponse>?,
      authorType: authorType == freezed
          ? _value.authorType
          : authorType // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
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
class _$_CommentResponse extends _CommentResponse {
  _$_CommentResponse(
      {@JsonKey(name: "_id") this.commentId,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "Userauthor") this.authorDetailsResponse,
      @JsonKey(name: "Animalauthor") this.animalAuthorDetailsResponse,
      @JsonKey(name: "authorType") this.authorType,
      @JsonKey(name: "post") this.postId,
      @JsonKey(name: "date") this.date})
      : super._();

  factory _$_CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CommentResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? commentId;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "Userauthor")
  final List<AuthorDetailsResponse>? authorDetailsResponse;
  @override
  @JsonKey(name: "Animalauthor")
  final List<AnimalAuthorDetailsResponse>? animalAuthorDetailsResponse;
  @override
  @JsonKey(name: "authorType")
  final String? authorType;
  @override
  @JsonKey(name: "post")
  final String? postId;
  @override
  @JsonKey(name: "date")
  final String? date;

  @override
  String toString() {
    return 'CommentResponse(commentId: $commentId, message: $message, authorDetailsResponse: $authorDetailsResponse, animalAuthorDetailsResponse: $animalAuthorDetailsResponse, authorType: $authorType, postId: $postId, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentResponse &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other.authorDetailsResponse, authorDetailsResponse) &&
            const DeepCollectionEquality().equals(
                other.animalAuthorDetailsResponse,
                animalAuthorDetailsResponse) &&
            (identical(other.authorType, authorType) ||
                other.authorType == authorType) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      commentId,
      message,
      const DeepCollectionEquality().hash(authorDetailsResponse),
      const DeepCollectionEquality().hash(animalAuthorDetailsResponse),
      authorType,
      postId,
      date);

  @JsonKey(ignore: true)
  @override
  _$CommentResponseCopyWith<_CommentResponse> get copyWith =>
      __$CommentResponseCopyWithImpl<_CommentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentResponseToJson(this);
  }
}

abstract class _CommentResponse extends CommentResponse {
  factory _CommentResponse(
      {@JsonKey(name: "_id")
          String? commentId,
      @JsonKey(name: "message")
          String? message,
      @JsonKey(name: "Userauthor")
          List<AuthorDetailsResponse>? authorDetailsResponse,
      @JsonKey(name: "Animalauthor")
          List<AnimalAuthorDetailsResponse>? animalAuthorDetailsResponse,
      @JsonKey(name: "authorType")
          String? authorType,
      @JsonKey(name: "post")
          String? postId,
      @JsonKey(name: "date")
          String? date}) = _$_CommentResponse;
  _CommentResponse._() : super._();

  factory _CommentResponse.fromJson(Map<String, dynamic> json) =
      _$_CommentResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get commentId;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "Userauthor")
  List<AuthorDetailsResponse>? get authorDetailsResponse;
  @override
  @JsonKey(name: "Animalauthor")
  List<AnimalAuthorDetailsResponse>? get animalAuthorDetailsResponse;
  @override
  @JsonKey(name: "authorType")
  String? get authorType;
  @override
  @JsonKey(name: "post")
  String? get postId;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$CommentResponseCopyWith<_CommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
