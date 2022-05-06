// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'url_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UrlResponse _$UrlResponseFromJson(Map<String, dynamic> json) {
  return _UrlResponse.fromJson(json);
}

/// @nodoc
class _$UrlResponseTearOff {
  const _$UrlResponseTearOff();

  _UrlResponse call({@JsonKey(name: "url") String? url}) {
    return _UrlResponse(
      url: url,
    );
  }

  UrlResponse fromJson(Map<String, Object?> json) {
    return UrlResponse.fromJson(json);
  }
}

/// @nodoc
const $UrlResponse = _$UrlResponseTearOff();

/// @nodoc
mixin _$UrlResponse {
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlResponseCopyWith<UrlResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlResponseCopyWith<$Res> {
  factory $UrlResponseCopyWith(
          UrlResponse value, $Res Function(UrlResponse) then) =
      _$UrlResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "url") String? url});
}

/// @nodoc
class _$UrlResponseCopyWithImpl<$Res> implements $UrlResponseCopyWith<$Res> {
  _$UrlResponseCopyWithImpl(this._value, this._then);

  final UrlResponse _value;
  // ignore: unused_field
  final $Res Function(UrlResponse) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UrlResponseCopyWith<$Res>
    implements $UrlResponseCopyWith<$Res> {
  factory _$UrlResponseCopyWith(
          _UrlResponse value, $Res Function(_UrlResponse) then) =
      __$UrlResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "url") String? url});
}

/// @nodoc
class __$UrlResponseCopyWithImpl<$Res> extends _$UrlResponseCopyWithImpl<$Res>
    implements _$UrlResponseCopyWith<$Res> {
  __$UrlResponseCopyWithImpl(
      _UrlResponse _value, $Res Function(_UrlResponse) _then)
      : super(_value, (v) => _then(v as _UrlResponse));

  @override
  _UrlResponse get _value => super._value as _UrlResponse;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_UrlResponse(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UrlResponse extends _UrlResponse {
  _$_UrlResponse({@JsonKey(name: "url") this.url}) : super._();

  factory _$_UrlResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UrlResponseFromJson(json);

  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'UrlResponse(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UrlResponse &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$UrlResponseCopyWith<_UrlResponse> get copyWith =>
      __$UrlResponseCopyWithImpl<_UrlResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UrlResponseToJson(this);
  }
}

abstract class _UrlResponse extends UrlResponse {
  factory _UrlResponse({@JsonKey(name: "url") String? url}) = _$_UrlResponse;
  _UrlResponse._() : super._();

  factory _UrlResponse.fromJson(Map<String, dynamic> json) =
      _$_UrlResponse.fromJson;

  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$UrlResponseCopyWith<_UrlResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
