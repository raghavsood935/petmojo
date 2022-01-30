// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'avatar_link_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AvatarLinkResponse _$AvatarLinkResponseFromJson(Map<String, dynamic> json) {
  return _AvatarLinkResponse.fromJson(json);
}

/// @nodoc
class _$AvatarLinkResponseTearOff {
  const _$AvatarLinkResponseTearOff();

  _AvatarLinkResponse call(
      {@JsonKey(name: "avatarLink")
          AvatarLinkInnerResponse? avatarLinkInnerResponse}) {
    return _AvatarLinkResponse(
      avatarLinkInnerResponse: avatarLinkInnerResponse,
    );
  }

  AvatarLinkResponse fromJson(Map<String, Object?> json) {
    return AvatarLinkResponse.fromJson(json);
  }
}

/// @nodoc
const $AvatarLinkResponse = _$AvatarLinkResponseTearOff();

/// @nodoc
mixin _$AvatarLinkResponse {
  @JsonKey(name: "avatarLink")
  AvatarLinkInnerResponse? get avatarLinkInnerResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvatarLinkResponseCopyWith<AvatarLinkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarLinkResponseCopyWith<$Res> {
  factory $AvatarLinkResponseCopyWith(
          AvatarLinkResponse value, $Res Function(AvatarLinkResponse) then) =
      _$AvatarLinkResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "avatarLink")
          AvatarLinkInnerResponse? avatarLinkInnerResponse});

  $AvatarLinkInnerResponseCopyWith<$Res>? get avatarLinkInnerResponse;
}

/// @nodoc
class _$AvatarLinkResponseCopyWithImpl<$Res>
    implements $AvatarLinkResponseCopyWith<$Res> {
  _$AvatarLinkResponseCopyWithImpl(this._value, this._then);

  final AvatarLinkResponse _value;
  // ignore: unused_field
  final $Res Function(AvatarLinkResponse) _then;

  @override
  $Res call({
    Object? avatarLinkInnerResponse = freezed,
  }) {
    return _then(_value.copyWith(
      avatarLinkInnerResponse: avatarLinkInnerResponse == freezed
          ? _value.avatarLinkInnerResponse
          : avatarLinkInnerResponse // ignore: cast_nullable_to_non_nullable
              as AvatarLinkInnerResponse?,
    ));
  }

  @override
  $AvatarLinkInnerResponseCopyWith<$Res>? get avatarLinkInnerResponse {
    if (_value.avatarLinkInnerResponse == null) {
      return null;
    }

    return $AvatarLinkInnerResponseCopyWith<$Res>(
        _value.avatarLinkInnerResponse!, (value) {
      return _then(_value.copyWith(avatarLinkInnerResponse: value));
    });
  }
}

/// @nodoc
abstract class _$AvatarLinkResponseCopyWith<$Res>
    implements $AvatarLinkResponseCopyWith<$Res> {
  factory _$AvatarLinkResponseCopyWith(
          _AvatarLinkResponse value, $Res Function(_AvatarLinkResponse) then) =
      __$AvatarLinkResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "avatarLink")
          AvatarLinkInnerResponse? avatarLinkInnerResponse});

  @override
  $AvatarLinkInnerResponseCopyWith<$Res>? get avatarLinkInnerResponse;
}

/// @nodoc
class __$AvatarLinkResponseCopyWithImpl<$Res>
    extends _$AvatarLinkResponseCopyWithImpl<$Res>
    implements _$AvatarLinkResponseCopyWith<$Res> {
  __$AvatarLinkResponseCopyWithImpl(
      _AvatarLinkResponse _value, $Res Function(_AvatarLinkResponse) _then)
      : super(_value, (v) => _then(v as _AvatarLinkResponse));

  @override
  _AvatarLinkResponse get _value => super._value as _AvatarLinkResponse;

  @override
  $Res call({
    Object? avatarLinkInnerResponse = freezed,
  }) {
    return _then(_AvatarLinkResponse(
      avatarLinkInnerResponse: avatarLinkInnerResponse == freezed
          ? _value.avatarLinkInnerResponse
          : avatarLinkInnerResponse // ignore: cast_nullable_to_non_nullable
              as AvatarLinkInnerResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvatarLinkResponse extends _AvatarLinkResponse {
  _$_AvatarLinkResponse(
      {@JsonKey(name: "avatarLink") this.avatarLinkInnerResponse})
      : super._();

  factory _$_AvatarLinkResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AvatarLinkResponseFromJson(json);

  @override
  @JsonKey(name: "avatarLink")
  final AvatarLinkInnerResponse? avatarLinkInnerResponse;

  @override
  String toString() {
    return 'AvatarLinkResponse(avatarLinkInnerResponse: $avatarLinkInnerResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AvatarLinkResponse &&
            const DeepCollectionEquality().equals(
                other.avatarLinkInnerResponse, avatarLinkInnerResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(avatarLinkInnerResponse));

  @JsonKey(ignore: true)
  @override
  _$AvatarLinkResponseCopyWith<_AvatarLinkResponse> get copyWith =>
      __$AvatarLinkResponseCopyWithImpl<_AvatarLinkResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvatarLinkResponseToJson(this);
  }
}

abstract class _AvatarLinkResponse extends AvatarLinkResponse {
  factory _AvatarLinkResponse(
          {@JsonKey(name: "avatarLink")
              AvatarLinkInnerResponse? avatarLinkInnerResponse}) =
      _$_AvatarLinkResponse;
  _AvatarLinkResponse._() : super._();

  factory _AvatarLinkResponse.fromJson(Map<String, dynamic> json) =
      _$_AvatarLinkResponse.fromJson;

  @override
  @JsonKey(name: "avatarLink")
  AvatarLinkInnerResponse? get avatarLinkInnerResponse;
  @override
  @JsonKey(ignore: true)
  _$AvatarLinkResponseCopyWith<_AvatarLinkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AvatarLinkInnerResponse _$AvatarLinkInnerResponseFromJson(
    Map<String, dynamic> json) {
  return _AvatarLinkInnerResponse.fromJson(json);
}

/// @nodoc
class _$AvatarLinkInnerResponseTearOff {
  const _$AvatarLinkInnerResponseTearOff();

  _AvatarLinkInnerResponse call(
      {@JsonKey(name: "image") String? image,
      @JsonKey(name: "thumbnail") String? thumbnail}) {
    return _AvatarLinkInnerResponse(
      image: image,
      thumbnail: thumbnail,
    );
  }

  AvatarLinkInnerResponse fromJson(Map<String, Object?> json) {
    return AvatarLinkInnerResponse.fromJson(json);
  }
}

/// @nodoc
const $AvatarLinkInnerResponse = _$AvatarLinkInnerResponseTearOff();

/// @nodoc
mixin _$AvatarLinkInnerResponse {
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvatarLinkInnerResponseCopyWith<AvatarLinkInnerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarLinkInnerResponseCopyWith<$Res> {
  factory $AvatarLinkInnerResponseCopyWith(AvatarLinkInnerResponse value,
          $Res Function(AvatarLinkInnerResponse) then) =
      _$AvatarLinkInnerResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "image") String? image,
      @JsonKey(name: "thumbnail") String? thumbnail});
}

/// @nodoc
class _$AvatarLinkInnerResponseCopyWithImpl<$Res>
    implements $AvatarLinkInnerResponseCopyWith<$Res> {
  _$AvatarLinkInnerResponseCopyWithImpl(this._value, this._then);

  final AvatarLinkInnerResponse _value;
  // ignore: unused_field
  final $Res Function(AvatarLinkInnerResponse) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AvatarLinkInnerResponseCopyWith<$Res>
    implements $AvatarLinkInnerResponseCopyWith<$Res> {
  factory _$AvatarLinkInnerResponseCopyWith(_AvatarLinkInnerResponse value,
          $Res Function(_AvatarLinkInnerResponse) then) =
      __$AvatarLinkInnerResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "image") String? image,
      @JsonKey(name: "thumbnail") String? thumbnail});
}

/// @nodoc
class __$AvatarLinkInnerResponseCopyWithImpl<$Res>
    extends _$AvatarLinkInnerResponseCopyWithImpl<$Res>
    implements _$AvatarLinkInnerResponseCopyWith<$Res> {
  __$AvatarLinkInnerResponseCopyWithImpl(_AvatarLinkInnerResponse _value,
      $Res Function(_AvatarLinkInnerResponse) _then)
      : super(_value, (v) => _then(v as _AvatarLinkInnerResponse));

  @override
  _AvatarLinkInnerResponse get _value =>
      super._value as _AvatarLinkInnerResponse;

  @override
  $Res call({
    Object? image = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_AvatarLinkInnerResponse(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$_AvatarLinkInnerResponse extends _AvatarLinkInnerResponse {
  _$_AvatarLinkInnerResponse(
      {@JsonKey(name: "image") this.image,
      @JsonKey(name: "thumbnail") this.thumbnail})
      : super._();

  factory _$_AvatarLinkInnerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AvatarLinkInnerResponseFromJson(json);

  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "thumbnail")
  final String? thumbnail;

  @override
  String toString() {
    return 'AvatarLinkInnerResponse(image: $image, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AvatarLinkInnerResponse &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(thumbnail));

  @JsonKey(ignore: true)
  @override
  _$AvatarLinkInnerResponseCopyWith<_AvatarLinkInnerResponse> get copyWith =>
      __$AvatarLinkInnerResponseCopyWithImpl<_AvatarLinkInnerResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvatarLinkInnerResponseToJson(this);
  }
}

abstract class _AvatarLinkInnerResponse extends AvatarLinkInnerResponse {
  factory _AvatarLinkInnerResponse(
          {@JsonKey(name: "image") String? image,
          @JsonKey(name: "thumbnail") String? thumbnail}) =
      _$_AvatarLinkInnerResponse;
  _AvatarLinkInnerResponse._() : super._();

  factory _AvatarLinkInnerResponse.fromJson(Map<String, dynamic> json) =
      _$_AvatarLinkInnerResponse.fromJson;

  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "thumbnail")
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$AvatarLinkInnerResponseCopyWith<_AvatarLinkInnerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
