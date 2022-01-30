// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_owner_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostOwnerDetailsResponse _$PostOwnerDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _PostOwnerDetailsResponse.fromJson(json);
}

/// @nodoc
class _$PostOwnerDetailsResponseTearOff {
  const _$PostOwnerDetailsResponseTearOff();

  _PostOwnerDetailsResponse call(
      {@JsonKey(name: "postOwnerId") String? postOwnerId,
      @JsonKey(name: "postOwnerType") String? postOwnerType}) {
    return _PostOwnerDetailsResponse(
      postOwnerId: postOwnerId,
      postOwnerType: postOwnerType,
    );
  }

  PostOwnerDetailsResponse fromJson(Map<String, Object?> json) {
    return PostOwnerDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $PostOwnerDetailsResponse = _$PostOwnerDetailsResponseTearOff();

/// @nodoc
mixin _$PostOwnerDetailsResponse {
  @JsonKey(name: "postOwnerId")
  String? get postOwnerId => throw _privateConstructorUsedError;
  @JsonKey(name: "postOwnerType")
  String? get postOwnerType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostOwnerDetailsResponseCopyWith<PostOwnerDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostOwnerDetailsResponseCopyWith<$Res> {
  factory $PostOwnerDetailsResponseCopyWith(PostOwnerDetailsResponse value,
          $Res Function(PostOwnerDetailsResponse) then) =
      _$PostOwnerDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "postOwnerId") String? postOwnerId,
      @JsonKey(name: "postOwnerType") String? postOwnerType});
}

/// @nodoc
class _$PostOwnerDetailsResponseCopyWithImpl<$Res>
    implements $PostOwnerDetailsResponseCopyWith<$Res> {
  _$PostOwnerDetailsResponseCopyWithImpl(this._value, this._then);

  final PostOwnerDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(PostOwnerDetailsResponse) _then;

  @override
  $Res call({
    Object? postOwnerId = freezed,
    Object? postOwnerType = freezed,
  }) {
    return _then(_value.copyWith(
      postOwnerId: postOwnerId == freezed
          ? _value.postOwnerId
          : postOwnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      postOwnerType: postOwnerType == freezed
          ? _value.postOwnerType
          : postOwnerType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PostOwnerDetailsResponseCopyWith<$Res>
    implements $PostOwnerDetailsResponseCopyWith<$Res> {
  factory _$PostOwnerDetailsResponseCopyWith(_PostOwnerDetailsResponse value,
          $Res Function(_PostOwnerDetailsResponse) then) =
      __$PostOwnerDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "postOwnerId") String? postOwnerId,
      @JsonKey(name: "postOwnerType") String? postOwnerType});
}

/// @nodoc
class __$PostOwnerDetailsResponseCopyWithImpl<$Res>
    extends _$PostOwnerDetailsResponseCopyWithImpl<$Res>
    implements _$PostOwnerDetailsResponseCopyWith<$Res> {
  __$PostOwnerDetailsResponseCopyWithImpl(_PostOwnerDetailsResponse _value,
      $Res Function(_PostOwnerDetailsResponse) _then)
      : super(_value, (v) => _then(v as _PostOwnerDetailsResponse));

  @override
  _PostOwnerDetailsResponse get _value =>
      super._value as _PostOwnerDetailsResponse;

  @override
  $Res call({
    Object? postOwnerId = freezed,
    Object? postOwnerType = freezed,
  }) {
    return _then(_PostOwnerDetailsResponse(
      postOwnerId: postOwnerId == freezed
          ? _value.postOwnerId
          : postOwnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      postOwnerType: postOwnerType == freezed
          ? _value.postOwnerType
          : postOwnerType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostOwnerDetailsResponse extends _PostOwnerDetailsResponse {
  _$_PostOwnerDetailsResponse(
      {@JsonKey(name: "postOwnerId") this.postOwnerId,
      @JsonKey(name: "postOwnerType") this.postOwnerType})
      : super._();

  factory _$_PostOwnerDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PostOwnerDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "postOwnerId")
  final String? postOwnerId;
  @override
  @JsonKey(name: "postOwnerType")
  final String? postOwnerType;

  @override
  String toString() {
    return 'PostOwnerDetailsResponse(postOwnerId: $postOwnerId, postOwnerType: $postOwnerType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostOwnerDetailsResponse &&
            const DeepCollectionEquality()
                .equals(other.postOwnerId, postOwnerId) &&
            const DeepCollectionEquality()
                .equals(other.postOwnerType, postOwnerType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postOwnerId),
      const DeepCollectionEquality().hash(postOwnerType));

  @JsonKey(ignore: true)
  @override
  _$PostOwnerDetailsResponseCopyWith<_PostOwnerDetailsResponse> get copyWith =>
      __$PostOwnerDetailsResponseCopyWithImpl<_PostOwnerDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostOwnerDetailsResponseToJson(this);
  }
}

abstract class _PostOwnerDetailsResponse extends PostOwnerDetailsResponse {
  factory _PostOwnerDetailsResponse(
          {@JsonKey(name: "postOwnerId") String? postOwnerId,
          @JsonKey(name: "postOwnerType") String? postOwnerType}) =
      _$_PostOwnerDetailsResponse;
  _PostOwnerDetailsResponse._() : super._();

  factory _PostOwnerDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_PostOwnerDetailsResponse.fromJson;

  @override
  @JsonKey(name: "postOwnerId")
  String? get postOwnerId;
  @override
  @JsonKey(name: "postOwnerType")
  String? get postOwnerType;
  @override
  @JsonKey(ignore: true)
  _$PostOwnerDetailsResponseCopyWith<_PostOwnerDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
