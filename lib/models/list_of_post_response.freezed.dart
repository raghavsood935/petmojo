// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_of_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfPostResponse _$ListOfPostResponseFromJson(Map<String, dynamic> json) {
  return _ListOfPostResponse.fromJson(json);
}

/// @nodoc
class _$ListOfPostResponseTearOff {
  const _$ListOfPostResponseTearOff();

  _ListOfPostResponse call(
      {@JsonKey(name: "posts") List<PostResponse>? listOfPosts}) {
    return _ListOfPostResponse(
      listOfPosts: listOfPosts,
    );
  }

  ListOfPostResponse fromJson(Map<String, Object?> json) {
    return ListOfPostResponse.fromJson(json);
  }
}

/// @nodoc
const $ListOfPostResponse = _$ListOfPostResponseTearOff();

/// @nodoc
mixin _$ListOfPostResponse {
  @JsonKey(name: "posts")
  List<PostResponse>? get listOfPosts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfPostResponseCopyWith<ListOfPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfPostResponseCopyWith<$Res> {
  factory $ListOfPostResponseCopyWith(
          ListOfPostResponse value, $Res Function(ListOfPostResponse) then) =
      _$ListOfPostResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "posts") List<PostResponse>? listOfPosts});
}

/// @nodoc
class _$ListOfPostResponseCopyWithImpl<$Res>
    implements $ListOfPostResponseCopyWith<$Res> {
  _$ListOfPostResponseCopyWithImpl(this._value, this._then);

  final ListOfPostResponse _value;
  // ignore: unused_field
  final $Res Function(ListOfPostResponse) _then;

  @override
  $Res call({
    Object? listOfPosts = freezed,
  }) {
    return _then(_value.copyWith(
      listOfPosts: listOfPosts == freezed
          ? _value.listOfPosts
          : listOfPosts // ignore: cast_nullable_to_non_nullable
              as List<PostResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListOfPostResponseCopyWith<$Res>
    implements $ListOfPostResponseCopyWith<$Res> {
  factory _$ListOfPostResponseCopyWith(
          _ListOfPostResponse value, $Res Function(_ListOfPostResponse) then) =
      __$ListOfPostResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "posts") List<PostResponse>? listOfPosts});
}

/// @nodoc
class __$ListOfPostResponseCopyWithImpl<$Res>
    extends _$ListOfPostResponseCopyWithImpl<$Res>
    implements _$ListOfPostResponseCopyWith<$Res> {
  __$ListOfPostResponseCopyWithImpl(
      _ListOfPostResponse _value, $Res Function(_ListOfPostResponse) _then)
      : super(_value, (v) => _then(v as _ListOfPostResponse));

  @override
  _ListOfPostResponse get _value => super._value as _ListOfPostResponse;

  @override
  $Res call({
    Object? listOfPosts = freezed,
  }) {
    return _then(_ListOfPostResponse(
      listOfPosts: listOfPosts == freezed
          ? _value.listOfPosts
          : listOfPosts // ignore: cast_nullable_to_non_nullable
              as List<PostResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfPostResponse extends _ListOfPostResponse {
  _$_ListOfPostResponse({@JsonKey(name: "posts") this.listOfPosts}) : super._();

  factory _$_ListOfPostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListOfPostResponseFromJson(json);

  @override
  @JsonKey(name: "posts")
  final List<PostResponse>? listOfPosts;

  @override
  String toString() {
    return 'ListOfPostResponse(listOfPosts: $listOfPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListOfPostResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfPosts, listOfPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfPosts));

  @JsonKey(ignore: true)
  @override
  _$ListOfPostResponseCopyWith<_ListOfPostResponse> get copyWith =>
      __$ListOfPostResponseCopyWithImpl<_ListOfPostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfPostResponseToJson(this);
  }
}

abstract class _ListOfPostResponse extends ListOfPostResponse {
  factory _ListOfPostResponse(
          {@JsonKey(name: "posts") List<PostResponse>? listOfPosts}) =
      _$_ListOfPostResponse;
  _ListOfPostResponse._() : super._();

  factory _ListOfPostResponse.fromJson(Map<String, dynamic> json) =
      _$_ListOfPostResponse.fromJson;

  @override
  @JsonKey(name: "posts")
  List<PostResponse>? get listOfPosts;
  @override
  @JsonKey(ignore: true)
  _$ListOfPostResponseCopyWith<_ListOfPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
