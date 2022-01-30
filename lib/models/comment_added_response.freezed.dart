// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_added_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentAddedResponse _$CommentAddedResponseFromJson(Map<String, dynamic> json) {
  return _CommentAddedResponse.fromJson(json);
}

/// @nodoc
class _$CommentAddedResponseTearOff {
  const _$CommentAddedResponseTearOff();

  _CommentAddedResponse call(
      {@JsonKey(name: "_id") String? commentId,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "Userauthor") String? authorId,
      @JsonKey(name: "authorType") String? authorType,
      @JsonKey(name: "post") String? postId,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "author") AuthorDetailsResponse? authorDetailsResponse}) {
    return _CommentAddedResponse(
      commentId: commentId,
      message: message,
      authorId: authorId,
      authorType: authorType,
      postId: postId,
      date: date,
      authorDetailsResponse: authorDetailsResponse,
    );
  }

  CommentAddedResponse fromJson(Map<String, Object?> json) {
    return CommentAddedResponse.fromJson(json);
  }
}

/// @nodoc
const $CommentAddedResponse = _$CommentAddedResponseTearOff();

/// @nodoc
mixin _$CommentAddedResponse {
  @JsonKey(name: "_id")
  String? get commentId => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "Userauthor")
  String? get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: "authorType")
  String? get authorType => throw _privateConstructorUsedError;
  @JsonKey(name: "post")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  AuthorDetailsResponse? get authorDetailsResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentAddedResponseCopyWith<CommentAddedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentAddedResponseCopyWith<$Res> {
  factory $CommentAddedResponseCopyWith(CommentAddedResponse value,
          $Res Function(CommentAddedResponse) then) =
      _$CommentAddedResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? commentId,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "Userauthor") String? authorId,
      @JsonKey(name: "authorType") String? authorType,
      @JsonKey(name: "post") String? postId,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "author") AuthorDetailsResponse? authorDetailsResponse});

  $AuthorDetailsResponseCopyWith<$Res>? get authorDetailsResponse;
}

/// @nodoc
class _$CommentAddedResponseCopyWithImpl<$Res>
    implements $CommentAddedResponseCopyWith<$Res> {
  _$CommentAddedResponseCopyWithImpl(this._value, this._then);

  final CommentAddedResponse _value;
  // ignore: unused_field
  final $Res Function(CommentAddedResponse) _then;

  @override
  $Res call({
    Object? commentId = freezed,
    Object? message = freezed,
    Object? authorId = freezed,
    Object? authorType = freezed,
    Object? postId = freezed,
    Object? date = freezed,
    Object? authorDetailsResponse = freezed,
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
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      authorDetailsResponse: authorDetailsResponse == freezed
          ? _value.authorDetailsResponse
          : authorDetailsResponse // ignore: cast_nullable_to_non_nullable
              as AuthorDetailsResponse?,
    ));
  }

  @override
  $AuthorDetailsResponseCopyWith<$Res>? get authorDetailsResponse {
    if (_value.authorDetailsResponse == null) {
      return null;
    }

    return $AuthorDetailsResponseCopyWith<$Res>(_value.authorDetailsResponse!,
        (value) {
      return _then(_value.copyWith(authorDetailsResponse: value));
    });
  }
}

/// @nodoc
abstract class _$CommentAddedResponseCopyWith<$Res>
    implements $CommentAddedResponseCopyWith<$Res> {
  factory _$CommentAddedResponseCopyWith(_CommentAddedResponse value,
          $Res Function(_CommentAddedResponse) then) =
      __$CommentAddedResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? commentId,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "Userauthor") String? authorId,
      @JsonKey(name: "authorType") String? authorType,
      @JsonKey(name: "post") String? postId,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "author") AuthorDetailsResponse? authorDetailsResponse});

  @override
  $AuthorDetailsResponseCopyWith<$Res>? get authorDetailsResponse;
}

/// @nodoc
class __$CommentAddedResponseCopyWithImpl<$Res>
    extends _$CommentAddedResponseCopyWithImpl<$Res>
    implements _$CommentAddedResponseCopyWith<$Res> {
  __$CommentAddedResponseCopyWithImpl(
      _CommentAddedResponse _value, $Res Function(_CommentAddedResponse) _then)
      : super(_value, (v) => _then(v as _CommentAddedResponse));

  @override
  _CommentAddedResponse get _value => super._value as _CommentAddedResponse;

  @override
  $Res call({
    Object? commentId = freezed,
    Object? message = freezed,
    Object? authorId = freezed,
    Object? authorType = freezed,
    Object? postId = freezed,
    Object? date = freezed,
    Object? authorDetailsResponse = freezed,
  }) {
    return _then(_CommentAddedResponse(
      commentId: commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      authorDetailsResponse: authorDetailsResponse == freezed
          ? _value.authorDetailsResponse
          : authorDetailsResponse // ignore: cast_nullable_to_non_nullable
              as AuthorDetailsResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentAddedResponse extends _CommentAddedResponse {
  _$_CommentAddedResponse(
      {@JsonKey(name: "_id") this.commentId,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "Userauthor") this.authorId,
      @JsonKey(name: "authorType") this.authorType,
      @JsonKey(name: "post") this.postId,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "author") this.authorDetailsResponse})
      : super._();

  factory _$_CommentAddedResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CommentAddedResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? commentId;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "Userauthor")
  final String? authorId;
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
  @JsonKey(name: "author")
  final AuthorDetailsResponse? authorDetailsResponse;

  @override
  String toString() {
    return 'CommentAddedResponse(commentId: $commentId, message: $message, authorId: $authorId, authorType: $authorType, postId: $postId, date: $date, authorDetailsResponse: $authorDetailsResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentAddedResponse &&
            const DeepCollectionEquality().equals(other.commentId, commentId) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.authorId, authorId) &&
            const DeepCollectionEquality()
                .equals(other.authorType, authorType) &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.authorDetailsResponse, authorDetailsResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(commentId),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(authorId),
      const DeepCollectionEquality().hash(authorType),
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(authorDetailsResponse));

  @JsonKey(ignore: true)
  @override
  _$CommentAddedResponseCopyWith<_CommentAddedResponse> get copyWith =>
      __$CommentAddedResponseCopyWithImpl<_CommentAddedResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentAddedResponseToJson(this);
  }
}

abstract class _CommentAddedResponse extends CommentAddedResponse {
  factory _CommentAddedResponse(
          {@JsonKey(name: "_id")
              String? commentId,
          @JsonKey(name: "message")
              String? message,
          @JsonKey(name: "Userauthor")
              String? authorId,
          @JsonKey(name: "authorType")
              String? authorType,
          @JsonKey(name: "post")
              String? postId,
          @JsonKey(name: "date")
              String? date,
          @JsonKey(name: "author")
              AuthorDetailsResponse? authorDetailsResponse}) =
      _$_CommentAddedResponse;
  _CommentAddedResponse._() : super._();

  factory _CommentAddedResponse.fromJson(Map<String, dynamic> json) =
      _$_CommentAddedResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get commentId;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "Userauthor")
  String? get authorId;
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
  @JsonKey(name: "author")
  AuthorDetailsResponse? get authorDetailsResponse;
  @override
  @JsonKey(ignore: true)
  _$CommentAddedResponseCopyWith<_CommentAddedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthorDetailsResponse _$AuthorDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthorDetailsResponse.fromJson(json);
}

/// @nodoc
class _$AuthorDetailsResponseTearOff {
  const _$AuthorDetailsResponseTearOff();

  _AuthorDetailsResponse call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar}) {
    return _AuthorDetailsResponse(
      username: username,
      avatar: avatar,
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
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar});
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
    Object? username = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar});
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
    Object? username = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_AuthorDetailsResponse(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorDetailsResponse extends _AuthorDetailsResponse {
  _$_AuthorDetailsResponse(
      {@JsonKey(name: "username") this.username,
      @JsonKey(name: "avatar") this.avatar})
      : super._();

  factory _$_AuthorDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;

  @override
  String toString() {
    return 'AuthorDetailsResponse(username: $username, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthorDetailsResponse &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(avatar));

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
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "avatar") String? avatar}) = _$_AuthorDetailsResponse;
  _AuthorDetailsResponse._() : super._();

  factory _AuthorDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthorDetailsResponse.fromJson;

  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$AuthorDetailsResponseCopyWith<_AuthorDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AnimalAuthorDetailsResponse _$AnimalAuthorDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _AnimalAuthorDetailsResponse.fromJson(json);
}

/// @nodoc
class _$AnimalAuthorDetailsResponseTearOff {
  const _$AnimalAuthorDetailsResponseTearOff();

  _AnimalAuthorDetailsResponse call(
      {@JsonKey(name: "name") String? username,
      @JsonKey(name: "avatar") String? avatar}) {
    return _AnimalAuthorDetailsResponse(
      username: username,
      avatar: avatar,
    );
  }

  AnimalAuthorDetailsResponse fromJson(Map<String, Object?> json) {
    return AnimalAuthorDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $AnimalAuthorDetailsResponse = _$AnimalAuthorDetailsResponseTearOff();

/// @nodoc
mixin _$AnimalAuthorDetailsResponse {
  @JsonKey(name: "name")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimalAuthorDetailsResponseCopyWith<AnimalAuthorDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalAuthorDetailsResponseCopyWith<$Res> {
  factory $AnimalAuthorDetailsResponseCopyWith(
          AnimalAuthorDetailsResponse value,
          $Res Function(AnimalAuthorDetailsResponse) then) =
      _$AnimalAuthorDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "name") String? username,
      @JsonKey(name: "avatar") String? avatar});
}

/// @nodoc
class _$AnimalAuthorDetailsResponseCopyWithImpl<$Res>
    implements $AnimalAuthorDetailsResponseCopyWith<$Res> {
  _$AnimalAuthorDetailsResponseCopyWithImpl(this._value, this._then);

  final AnimalAuthorDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(AnimalAuthorDetailsResponse) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AnimalAuthorDetailsResponseCopyWith<$Res>
    implements $AnimalAuthorDetailsResponseCopyWith<$Res> {
  factory _$AnimalAuthorDetailsResponseCopyWith(
          _AnimalAuthorDetailsResponse value,
          $Res Function(_AnimalAuthorDetailsResponse) then) =
      __$AnimalAuthorDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "name") String? username,
      @JsonKey(name: "avatar") String? avatar});
}

/// @nodoc
class __$AnimalAuthorDetailsResponseCopyWithImpl<$Res>
    extends _$AnimalAuthorDetailsResponseCopyWithImpl<$Res>
    implements _$AnimalAuthorDetailsResponseCopyWith<$Res> {
  __$AnimalAuthorDetailsResponseCopyWithImpl(
      _AnimalAuthorDetailsResponse _value,
      $Res Function(_AnimalAuthorDetailsResponse) _then)
      : super(_value, (v) => _then(v as _AnimalAuthorDetailsResponse));

  @override
  _AnimalAuthorDetailsResponse get _value =>
      super._value as _AnimalAuthorDetailsResponse;

  @override
  $Res call({
    Object? username = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_AnimalAuthorDetailsResponse(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimalAuthorDetailsResponse extends _AnimalAuthorDetailsResponse {
  _$_AnimalAuthorDetailsResponse(
      {@JsonKey(name: "name") this.username,
      @JsonKey(name: "avatar") this.avatar})
      : super._();

  factory _$_AnimalAuthorDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AnimalAuthorDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? username;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;

  @override
  String toString() {
    return 'AnimalAuthorDetailsResponse(username: $username, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimalAuthorDetailsResponse &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  _$AnimalAuthorDetailsResponseCopyWith<_AnimalAuthorDetailsResponse>
      get copyWith => __$AnimalAuthorDetailsResponseCopyWithImpl<
          _AnimalAuthorDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimalAuthorDetailsResponseToJson(this);
  }
}

abstract class _AnimalAuthorDetailsResponse
    extends AnimalAuthorDetailsResponse {
  factory _AnimalAuthorDetailsResponse(
          {@JsonKey(name: "name") String? username,
          @JsonKey(name: "avatar") String? avatar}) =
      _$_AnimalAuthorDetailsResponse;
  _AnimalAuthorDetailsResponse._() : super._();

  factory _AnimalAuthorDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_AnimalAuthorDetailsResponse.fromJson;

  @override
  @JsonKey(name: "name")
  String? get username;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$AnimalAuthorDetailsResponseCopyWith<_AnimalAuthorDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
