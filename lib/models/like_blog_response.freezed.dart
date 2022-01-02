// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'like_blog_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LikedBlogResponse _$LikedBlogResponseFromJson(Map<String, dynamic> json) {
  return _LikedBlogLikedBlogResponse.fromJson(json);
}

/// @nodoc
class _$LikedBlogResponseTearOff {
  const _$LikedBlogResponseTearOff();

  _LikedBlogLikedBlogResponse call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message}) {
    return _LikedBlogLikedBlogResponse(
      success: success,
      message: message,
    );
  }

  LikedBlogResponse fromJson(Map<String, Object?> json) {
    return LikedBlogResponse.fromJson(json);
  }
}

/// @nodoc
const $LikedBlogResponse = _$LikedBlogResponseTearOff();

/// @nodoc
mixin _$LikedBlogResponse {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikedBlogResponseCopyWith<LikedBlogResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedBlogResponseCopyWith<$Res> {
  factory $LikedBlogResponseCopyWith(
          LikedBlogResponse value, $Res Function(LikedBlogResponse) then) =
      _$LikedBlogResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$LikedBlogResponseCopyWithImpl<$Res>
    implements $LikedBlogResponseCopyWith<$Res> {
  _$LikedBlogResponseCopyWithImpl(this._value, this._then);

  final LikedBlogResponse _value;
  // ignore: unused_field
  final $Res Function(LikedBlogResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LikedBlogLikedBlogResponseCopyWith<$Res>
    implements $LikedBlogResponseCopyWith<$Res> {
  factory _$LikedBlogLikedBlogResponseCopyWith(
          _LikedBlogLikedBlogResponse value,
          $Res Function(_LikedBlogLikedBlogResponse) then) =
      __$LikedBlogLikedBlogResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class __$LikedBlogLikedBlogResponseCopyWithImpl<$Res>
    extends _$LikedBlogResponseCopyWithImpl<$Res>
    implements _$LikedBlogLikedBlogResponseCopyWith<$Res> {
  __$LikedBlogLikedBlogResponseCopyWithImpl(_LikedBlogLikedBlogResponse _value,
      $Res Function(_LikedBlogLikedBlogResponse) _then)
      : super(_value, (v) => _then(v as _LikedBlogLikedBlogResponse));

  @override
  _LikedBlogLikedBlogResponse get _value =>
      super._value as _LikedBlogLikedBlogResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_LikedBlogLikedBlogResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LikedBlogLikedBlogResponse extends _LikedBlogLikedBlogResponse {
  _$_LikedBlogLikedBlogResponse(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message})
      : super._();

  factory _$_LikedBlogLikedBlogResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LikedBlogLikedBlogResponseFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'LikedBlogResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikedBlogLikedBlogResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  _$LikedBlogLikedBlogResponseCopyWith<_LikedBlogLikedBlogResponse>
      get copyWith => __$LikedBlogLikedBlogResponseCopyWithImpl<
          _LikedBlogLikedBlogResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikedBlogLikedBlogResponseToJson(this);
  }
}

abstract class _LikedBlogLikedBlogResponse extends LikedBlogResponse {
  factory _LikedBlogLikedBlogResponse(
          {@JsonKey(name: "success") bool? success,
          @JsonKey(name: "message") String? message}) =
      _$_LikedBlogLikedBlogResponse;
  _LikedBlogLikedBlogResponse._() : super._();

  factory _LikedBlogLikedBlogResponse.fromJson(Map<String, dynamic> json) =
      _$_LikedBlogLikedBlogResponse.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$LikedBlogLikedBlogResponseCopyWith<_LikedBlogLikedBlogResponse>
      get copyWith => throw _privateConstructorUsedError;
}
