// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_of_for_you_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfForYouPostResponse _$ListOfForYouPostResponseFromJson(
    Map<String, dynamic> json) {
  return _ListOfForYouPostResponse.fromJson(json);
}

/// @nodoc
class _$ListOfForYouPostResponseTearOff {
  const _$ListOfForYouPostResponseTearOff();

  _ListOfForYouPostResponse call(
      {@JsonKey(name: "posts") List<ForYouPostResponse>? listOfPosts}) {
    return _ListOfForYouPostResponse(
      listOfPosts: listOfPosts,
    );
  }

  ListOfForYouPostResponse fromJson(Map<String, Object?> json) {
    return ListOfForYouPostResponse.fromJson(json);
  }
}

/// @nodoc
const $ListOfForYouPostResponse = _$ListOfForYouPostResponseTearOff();

/// @nodoc
mixin _$ListOfForYouPostResponse {
  @JsonKey(name: "posts")
  List<ForYouPostResponse>? get listOfPosts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfForYouPostResponseCopyWith<ListOfForYouPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfForYouPostResponseCopyWith<$Res> {
  factory $ListOfForYouPostResponseCopyWith(ListOfForYouPostResponse value,
          $Res Function(ListOfForYouPostResponse) then) =
      _$ListOfForYouPostResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "posts") List<ForYouPostResponse>? listOfPosts});
}

/// @nodoc
class _$ListOfForYouPostResponseCopyWithImpl<$Res>
    implements $ListOfForYouPostResponseCopyWith<$Res> {
  _$ListOfForYouPostResponseCopyWithImpl(this._value, this._then);

  final ListOfForYouPostResponse _value;
  // ignore: unused_field
  final $Res Function(ListOfForYouPostResponse) _then;

  @override
  $Res call({
    Object? listOfPosts = freezed,
  }) {
    return _then(_value.copyWith(
      listOfPosts: listOfPosts == freezed
          ? _value.listOfPosts
          : listOfPosts // ignore: cast_nullable_to_non_nullable
              as List<ForYouPostResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListOfForYouPostResponseCopyWith<$Res>
    implements $ListOfForYouPostResponseCopyWith<$Res> {
  factory _$ListOfForYouPostResponseCopyWith(_ListOfForYouPostResponse value,
          $Res Function(_ListOfForYouPostResponse) then) =
      __$ListOfForYouPostResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "posts") List<ForYouPostResponse>? listOfPosts});
}

/// @nodoc
class __$ListOfForYouPostResponseCopyWithImpl<$Res>
    extends _$ListOfForYouPostResponseCopyWithImpl<$Res>
    implements _$ListOfForYouPostResponseCopyWith<$Res> {
  __$ListOfForYouPostResponseCopyWithImpl(_ListOfForYouPostResponse _value,
      $Res Function(_ListOfForYouPostResponse) _then)
      : super(_value, (v) => _then(v as _ListOfForYouPostResponse));

  @override
  _ListOfForYouPostResponse get _value =>
      super._value as _ListOfForYouPostResponse;

  @override
  $Res call({
    Object? listOfPosts = freezed,
  }) {
    return _then(_ListOfForYouPostResponse(
      listOfPosts: listOfPosts == freezed
          ? _value.listOfPosts
          : listOfPosts // ignore: cast_nullable_to_non_nullable
              as List<ForYouPostResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfForYouPostResponse extends _ListOfForYouPostResponse {
  _$_ListOfForYouPostResponse({@JsonKey(name: "posts") this.listOfPosts})
      : super._();

  factory _$_ListOfForYouPostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListOfForYouPostResponseFromJson(json);

  @override
  @JsonKey(name: "posts")
  final List<ForYouPostResponse>? listOfPosts;

  @override
  String toString() {
    return 'ListOfForYouPostResponse(listOfPosts: $listOfPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListOfForYouPostResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfPosts, listOfPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfPosts));

  @JsonKey(ignore: true)
  @override
  _$ListOfForYouPostResponseCopyWith<_ListOfForYouPostResponse> get copyWith =>
      __$ListOfForYouPostResponseCopyWithImpl<_ListOfForYouPostResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfForYouPostResponseToJson(this);
  }
}

abstract class _ListOfForYouPostResponse extends ListOfForYouPostResponse {
  factory _ListOfForYouPostResponse(
          {@JsonKey(name: "posts") List<ForYouPostResponse>? listOfPosts}) =
      _$_ListOfForYouPostResponse;
  _ListOfForYouPostResponse._() : super._();

  factory _ListOfForYouPostResponse.fromJson(Map<String, dynamic> json) =
      _$_ListOfForYouPostResponse.fromJson;

  @override
  @JsonKey(name: "posts")
  List<ForYouPostResponse>? get listOfPosts;
  @override
  @JsonKey(ignore: true)
  _$ListOfForYouPostResponseCopyWith<_ListOfForYouPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ForYouPostResponse _$ForYouPostResponseFromJson(Map<String, dynamic> json) {
  return _ForYouPostResponse.fromJson(json);
}

/// @nodoc
class _$ForYouPostResponseTearOff {
  const _$ForYouPostResponseTearOff();

  _ForYouPostResponse call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "thumbnail") String? thumbnail}) {
    return _ForYouPostResponse(
      Id: Id,
      thumbnail: thumbnail,
    );
  }

  ForYouPostResponse fromJson(Map<String, Object?> json) {
    return ForYouPostResponse.fromJson(json);
  }
}

/// @nodoc
const $ForYouPostResponse = _$ForYouPostResponseTearOff();

/// @nodoc
mixin _$ForYouPostResponse {
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForYouPostResponseCopyWith<ForYouPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForYouPostResponseCopyWith<$Res> {
  factory $ForYouPostResponseCopyWith(
          ForYouPostResponse value, $Res Function(ForYouPostResponse) then) =
      _$ForYouPostResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "thumbnail") String? thumbnail});
}

/// @nodoc
class _$ForYouPostResponseCopyWithImpl<$Res>
    implements $ForYouPostResponseCopyWith<$Res> {
  _$ForYouPostResponseCopyWithImpl(this._value, this._then);

  final ForYouPostResponse _value;
  // ignore: unused_field
  final $Res Function(ForYouPostResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ForYouPostResponseCopyWith<$Res>
    implements $ForYouPostResponseCopyWith<$Res> {
  factory _$ForYouPostResponseCopyWith(
          _ForYouPostResponse value, $Res Function(_ForYouPostResponse) then) =
      __$ForYouPostResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "thumbnail") String? thumbnail});
}

/// @nodoc
class __$ForYouPostResponseCopyWithImpl<$Res>
    extends _$ForYouPostResponseCopyWithImpl<$Res>
    implements _$ForYouPostResponseCopyWith<$Res> {
  __$ForYouPostResponseCopyWithImpl(
      _ForYouPostResponse _value, $Res Function(_ForYouPostResponse) _then)
      : super(_value, (v) => _then(v as _ForYouPostResponse));

  @override
  _ForYouPostResponse get _value => super._value as _ForYouPostResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_ForYouPostResponse(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
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
class _$_ForYouPostResponse extends _ForYouPostResponse {
  _$_ForYouPostResponse(
      {@JsonKey(name: "_id") this.Id,
      @JsonKey(name: "thumbnail") this.thumbnail})
      : super._();

  factory _$_ForYouPostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ForYouPostResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "thumbnail")
  final String? thumbnail;

  @override
  String toString() {
    return 'ForYouPostResponse(Id: $Id, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForYouPostResponse &&
            const DeepCollectionEquality().equals(other.Id, Id) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(Id),
      const DeepCollectionEquality().hash(thumbnail));

  @JsonKey(ignore: true)
  @override
  _$ForYouPostResponseCopyWith<_ForYouPostResponse> get copyWith =>
      __$ForYouPostResponseCopyWithImpl<_ForYouPostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForYouPostResponseToJson(this);
  }
}

abstract class _ForYouPostResponse extends ForYouPostResponse {
  factory _ForYouPostResponse(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "thumbnail") String? thumbnail}) = _$_ForYouPostResponse;
  _ForYouPostResponse._() : super._();

  factory _ForYouPostResponse.fromJson(Map<String, dynamic> json) =
      _$_ForYouPostResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "thumbnail")
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$ForYouPostResponseCopyWith<_ForYouPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
