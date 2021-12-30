// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_of_feed_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfFeedPostResponse _$ListOfFeedPostResponseFromJson(
    Map<String, dynamic> json) {
  return _ListOfFeedPostResponse.fromJson(json);
}

/// @nodoc
class _$ListOfFeedPostResponseTearOff {
  const _$ListOfFeedPostResponseTearOff();

  _ListOfFeedPostResponse call(
      {@JsonKey(name: "posts") List<FeedPostResponse>? listOfPosts}) {
    return _ListOfFeedPostResponse(
      listOfPosts: listOfPosts,
    );
  }

  ListOfFeedPostResponse fromJson(Map<String, Object?> json) {
    return ListOfFeedPostResponse.fromJson(json);
  }
}

/// @nodoc
const $ListOfFeedPostResponse = _$ListOfFeedPostResponseTearOff();

/// @nodoc
mixin _$ListOfFeedPostResponse {
  @JsonKey(name: "posts")
  List<FeedPostResponse>? get listOfPosts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfFeedPostResponseCopyWith<ListOfFeedPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfFeedPostResponseCopyWith<$Res> {
  factory $ListOfFeedPostResponseCopyWith(ListOfFeedPostResponse value,
          $Res Function(ListOfFeedPostResponse) then) =
      _$ListOfFeedPostResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "posts") List<FeedPostResponse>? listOfPosts});
}

/// @nodoc
class _$ListOfFeedPostResponseCopyWithImpl<$Res>
    implements $ListOfFeedPostResponseCopyWith<$Res> {
  _$ListOfFeedPostResponseCopyWithImpl(this._value, this._then);

  final ListOfFeedPostResponse _value;
  // ignore: unused_field
  final $Res Function(ListOfFeedPostResponse) _then;

  @override
  $Res call({
    Object? listOfPosts = freezed,
  }) {
    return _then(_value.copyWith(
      listOfPosts: listOfPosts == freezed
          ? _value.listOfPosts
          : listOfPosts // ignore: cast_nullable_to_non_nullable
              as List<FeedPostResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListOfFeedPostResponseCopyWith<$Res>
    implements $ListOfFeedPostResponseCopyWith<$Res> {
  factory _$ListOfFeedPostResponseCopyWith(_ListOfFeedPostResponse value,
          $Res Function(_ListOfFeedPostResponse) then) =
      __$ListOfFeedPostResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "posts") List<FeedPostResponse>? listOfPosts});
}

/// @nodoc
class __$ListOfFeedPostResponseCopyWithImpl<$Res>
    extends _$ListOfFeedPostResponseCopyWithImpl<$Res>
    implements _$ListOfFeedPostResponseCopyWith<$Res> {
  __$ListOfFeedPostResponseCopyWithImpl(_ListOfFeedPostResponse _value,
      $Res Function(_ListOfFeedPostResponse) _then)
      : super(_value, (v) => _then(v as _ListOfFeedPostResponse));

  @override
  _ListOfFeedPostResponse get _value => super._value as _ListOfFeedPostResponse;

  @override
  $Res call({
    Object? listOfPosts = freezed,
  }) {
    return _then(_ListOfFeedPostResponse(
      listOfPosts: listOfPosts == freezed
          ? _value.listOfPosts
          : listOfPosts // ignore: cast_nullable_to_non_nullable
              as List<FeedPostResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfFeedPostResponse extends _ListOfFeedPostResponse {
  _$_ListOfFeedPostResponse({@JsonKey(name: "posts") this.listOfPosts})
      : super._();

  factory _$_ListOfFeedPostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListOfFeedPostResponseFromJson(json);

  @override
  @JsonKey(name: "posts")
  final List<FeedPostResponse>? listOfPosts;

  @override
  String toString() {
    return 'ListOfFeedPostResponse(listOfPosts: $listOfPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListOfFeedPostResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfPosts, listOfPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfPosts));

  @JsonKey(ignore: true)
  @override
  _$ListOfFeedPostResponseCopyWith<_ListOfFeedPostResponse> get copyWith =>
      __$ListOfFeedPostResponseCopyWithImpl<_ListOfFeedPostResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfFeedPostResponseToJson(this);
  }
}

abstract class _ListOfFeedPostResponse extends ListOfFeedPostResponse {
  factory _ListOfFeedPostResponse(
          {@JsonKey(name: "posts") List<FeedPostResponse>? listOfPosts}) =
      _$_ListOfFeedPostResponse;
  _ListOfFeedPostResponse._() : super._();

  factory _ListOfFeedPostResponse.fromJson(Map<String, dynamic> json) =
      _$_ListOfFeedPostResponse.fromJson;

  @override
  @JsonKey(name: "posts")
  List<FeedPostResponse>? get listOfPosts;
  @override
  @JsonKey(ignore: true)
  _$ListOfFeedPostResponseCopyWith<_ListOfFeedPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
