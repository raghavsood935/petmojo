// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_blogs_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetBlogDetailsResponse _$GetBlogDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetBlogDetailsResponse.fromJson(json);
}

/// @nodoc
class _$GetBlogDetailsResponseTearOff {
  const _$GetBlogDetailsResponseTearOff();

  _GetBlogDetailsResponse call({@JsonKey(name: "blog") blogDetails? blog}) {
    return _GetBlogDetailsResponse(
      blog: blog,
    );
  }

  GetBlogDetailsResponse fromJson(Map<String, Object?> json) {
    return GetBlogDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetBlogDetailsResponse = _$GetBlogDetailsResponseTearOff();

/// @nodoc
mixin _$GetBlogDetailsResponse {
  @JsonKey(name: "blog")
  blogDetails? get blog => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBlogDetailsResponseCopyWith<GetBlogDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBlogDetailsResponseCopyWith<$Res> {
  factory $GetBlogDetailsResponseCopyWith(GetBlogDetailsResponse value,
          $Res Function(GetBlogDetailsResponse) then) =
      _$GetBlogDetailsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "blog") blogDetails? blog});

  $blogDetailsCopyWith<$Res>? get blog;
}

/// @nodoc
class _$GetBlogDetailsResponseCopyWithImpl<$Res>
    implements $GetBlogDetailsResponseCopyWith<$Res> {
  _$GetBlogDetailsResponseCopyWithImpl(this._value, this._then);

  final GetBlogDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(GetBlogDetailsResponse) _then;

  @override
  $Res call({
    Object? blog = freezed,
  }) {
    return _then(_value.copyWith(
      blog: blog == freezed
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as blogDetails?,
    ));
  }

  @override
  $blogDetailsCopyWith<$Res>? get blog {
    if (_value.blog == null) {
      return null;
    }

    return $blogDetailsCopyWith<$Res>(_value.blog!, (value) {
      return _then(_value.copyWith(blog: value));
    });
  }
}

/// @nodoc
abstract class _$GetBlogDetailsResponseCopyWith<$Res>
    implements $GetBlogDetailsResponseCopyWith<$Res> {
  factory _$GetBlogDetailsResponseCopyWith(_GetBlogDetailsResponse value,
          $Res Function(_GetBlogDetailsResponse) then) =
      __$GetBlogDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "blog") blogDetails? blog});

  @override
  $blogDetailsCopyWith<$Res>? get blog;
}

/// @nodoc
class __$GetBlogDetailsResponseCopyWithImpl<$Res>
    extends _$GetBlogDetailsResponseCopyWithImpl<$Res>
    implements _$GetBlogDetailsResponseCopyWith<$Res> {
  __$GetBlogDetailsResponseCopyWithImpl(_GetBlogDetailsResponse _value,
      $Res Function(_GetBlogDetailsResponse) _then)
      : super(_value, (v) => _then(v as _GetBlogDetailsResponse));

  @override
  _GetBlogDetailsResponse get _value => super._value as _GetBlogDetailsResponse;

  @override
  $Res call({
    Object? blog = freezed,
  }) {
    return _then(_GetBlogDetailsResponse(
      blog: blog == freezed
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as blogDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetBlogDetailsResponse extends _GetBlogDetailsResponse {
  _$_GetBlogDetailsResponse({@JsonKey(name: "blog") this.blog}) : super._();

  factory _$_GetBlogDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetBlogDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "blog")
  final blogDetails? blog;

  @override
  String toString() {
    return 'GetBlogDetailsResponse(blog: $blog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetBlogDetailsResponse &&
            const DeepCollectionEquality().equals(other.blog, blog));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(blog));

  @JsonKey(ignore: true)
  @override
  _$GetBlogDetailsResponseCopyWith<_GetBlogDetailsResponse> get copyWith =>
      __$GetBlogDetailsResponseCopyWithImpl<_GetBlogDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetBlogDetailsResponseToJson(this);
  }
}

abstract class _GetBlogDetailsResponse extends GetBlogDetailsResponse {
  factory _GetBlogDetailsResponse({@JsonKey(name: "blog") blogDetails? blog}) =
      _$_GetBlogDetailsResponse;
  _GetBlogDetailsResponse._() : super._();

  factory _GetBlogDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetBlogDetailsResponse.fromJson;

  @override
  @JsonKey(name: "blog")
  blogDetails? get blog;
  @override
  @JsonKey(ignore: true)
  _$GetBlogDetailsResponseCopyWith<_GetBlogDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
