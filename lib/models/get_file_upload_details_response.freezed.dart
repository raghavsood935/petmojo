// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_file_upload_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetFileUploadDetailsResponse _$GetFileUploadDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetFileUploadDetailsResponse.fromJson(json);
}

/// @nodoc
class _$GetFileUploadDetailsResponseTearOff {
  const _$GetFileUploadDetailsResponseTearOff();

  _GetFileUploadDetailsResponse call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "videoUrls") GetFileUrlsResponse? fileUrls}) {
    return _GetFileUploadDetailsResponse(
      success: success,
      fileUrls: fileUrls,
    );
  }

  GetFileUploadDetailsResponse fromJson(Map<String, Object?> json) {
    return GetFileUploadDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetFileUploadDetailsResponse = _$GetFileUploadDetailsResponseTearOff();

/// @nodoc
mixin _$GetFileUploadDetailsResponse {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "videoUrls")
  GetFileUrlsResponse? get fileUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFileUploadDetailsResponseCopyWith<GetFileUploadDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFileUploadDetailsResponseCopyWith<$Res> {
  factory $GetFileUploadDetailsResponseCopyWith(
          GetFileUploadDetailsResponse value,
          $Res Function(GetFileUploadDetailsResponse) then) =
      _$GetFileUploadDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "videoUrls") GetFileUrlsResponse? fileUrls});

  $GetFileUrlsResponseCopyWith<$Res>? get fileUrls;
}

/// @nodoc
class _$GetFileUploadDetailsResponseCopyWithImpl<$Res>
    implements $GetFileUploadDetailsResponseCopyWith<$Res> {
  _$GetFileUploadDetailsResponseCopyWithImpl(this._value, this._then);

  final GetFileUploadDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(GetFileUploadDetailsResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? fileUrls = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      fileUrls: fileUrls == freezed
          ? _value.fileUrls
          : fileUrls // ignore: cast_nullable_to_non_nullable
              as GetFileUrlsResponse?,
    ));
  }

  @override
  $GetFileUrlsResponseCopyWith<$Res>? get fileUrls {
    if (_value.fileUrls == null) {
      return null;
    }

    return $GetFileUrlsResponseCopyWith<$Res>(_value.fileUrls!, (value) {
      return _then(_value.copyWith(fileUrls: value));
    });
  }
}

/// @nodoc
abstract class _$GetFileUploadDetailsResponseCopyWith<$Res>
    implements $GetFileUploadDetailsResponseCopyWith<$Res> {
  factory _$GetFileUploadDetailsResponseCopyWith(
          _GetFileUploadDetailsResponse value,
          $Res Function(_GetFileUploadDetailsResponse) then) =
      __$GetFileUploadDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "videoUrls") GetFileUrlsResponse? fileUrls});

  @override
  $GetFileUrlsResponseCopyWith<$Res>? get fileUrls;
}

/// @nodoc
class __$GetFileUploadDetailsResponseCopyWithImpl<$Res>
    extends _$GetFileUploadDetailsResponseCopyWithImpl<$Res>
    implements _$GetFileUploadDetailsResponseCopyWith<$Res> {
  __$GetFileUploadDetailsResponseCopyWithImpl(
      _GetFileUploadDetailsResponse _value,
      $Res Function(_GetFileUploadDetailsResponse) _then)
      : super(_value, (v) => _then(v as _GetFileUploadDetailsResponse));

  @override
  _GetFileUploadDetailsResponse get _value =>
      super._value as _GetFileUploadDetailsResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? fileUrls = freezed,
  }) {
    return _then(_GetFileUploadDetailsResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      fileUrls: fileUrls == freezed
          ? _value.fileUrls
          : fileUrls // ignore: cast_nullable_to_non_nullable
              as GetFileUrlsResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetFileUploadDetailsResponse extends _GetFileUploadDetailsResponse {
  _$_GetFileUploadDetailsResponse(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "videoUrls") this.fileUrls})
      : super._();

  factory _$_GetFileUploadDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetFileUploadDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "videoUrls")
  final GetFileUrlsResponse? fileUrls;

  @override
  String toString() {
    return 'GetFileUploadDetailsResponse(success: $success, fileUrls: $fileUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetFileUploadDetailsResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.fileUrls, fileUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(fileUrls));

  @JsonKey(ignore: true)
  @override
  _$GetFileUploadDetailsResponseCopyWith<_GetFileUploadDetailsResponse>
      get copyWith => __$GetFileUploadDetailsResponseCopyWithImpl<
          _GetFileUploadDetailsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetFileUploadDetailsResponseToJson(this);
  }
}

abstract class _GetFileUploadDetailsResponse
    extends GetFileUploadDetailsResponse {
  factory _GetFileUploadDetailsResponse(
          {@JsonKey(name: "success") bool? success,
          @JsonKey(name: "videoUrls") GetFileUrlsResponse? fileUrls}) =
      _$_GetFileUploadDetailsResponse;
  _GetFileUploadDetailsResponse._() : super._();

  factory _GetFileUploadDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetFileUploadDetailsResponse.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "videoUrls")
  GetFileUrlsResponse? get fileUrls;
  @override
  @JsonKey(ignore: true)
  _$GetFileUploadDetailsResponseCopyWith<_GetFileUploadDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetFileUrlsResponse _$GetFileUrlsResponseFromJson(Map<String, dynamic> json) {
  return _GetFileUrlsResponse.fromJson(json);
}

/// @nodoc
class _$GetFileUrlsResponseTearOff {
  const _$GetFileUrlsResponseTearOff();

  _GetFileUrlsResponse call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "fields") GetFileUploadDetailsFieldsResponse? fields}) {
    return _GetFileUrlsResponse(
      url: url,
      fields: fields,
    );
  }

  GetFileUrlsResponse fromJson(Map<String, Object?> json) {
    return GetFileUrlsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetFileUrlsResponse = _$GetFileUrlsResponseTearOff();

/// @nodoc
mixin _$GetFileUrlsResponse {
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "fields")
  GetFileUploadDetailsFieldsResponse? get fields =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFileUrlsResponseCopyWith<GetFileUrlsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFileUrlsResponseCopyWith<$Res> {
  factory $GetFileUrlsResponseCopyWith(
          GetFileUrlsResponse value, $Res Function(GetFileUrlsResponse) then) =
      _$GetFileUrlsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "fields") GetFileUploadDetailsFieldsResponse? fields});

  $GetFileUploadDetailsFieldsResponseCopyWith<$Res>? get fields;
}

/// @nodoc
class _$GetFileUrlsResponseCopyWithImpl<$Res>
    implements $GetFileUrlsResponseCopyWith<$Res> {
  _$GetFileUrlsResponseCopyWithImpl(this._value, this._then);

  final GetFileUrlsResponse _value;
  // ignore: unused_field
  final $Res Function(GetFileUrlsResponse) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as GetFileUploadDetailsFieldsResponse?,
    ));
  }

  @override
  $GetFileUploadDetailsFieldsResponseCopyWith<$Res>? get fields {
    if (_value.fields == null) {
      return null;
    }

    return $GetFileUploadDetailsFieldsResponseCopyWith<$Res>(_value.fields!,
        (value) {
      return _then(_value.copyWith(fields: value));
    });
  }
}

/// @nodoc
abstract class _$GetFileUrlsResponseCopyWith<$Res>
    implements $GetFileUrlsResponseCopyWith<$Res> {
  factory _$GetFileUrlsResponseCopyWith(_GetFileUrlsResponse value,
          $Res Function(_GetFileUrlsResponse) then) =
      __$GetFileUrlsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "fields") GetFileUploadDetailsFieldsResponse? fields});

  @override
  $GetFileUploadDetailsFieldsResponseCopyWith<$Res>? get fields;
}

/// @nodoc
class __$GetFileUrlsResponseCopyWithImpl<$Res>
    extends _$GetFileUrlsResponseCopyWithImpl<$Res>
    implements _$GetFileUrlsResponseCopyWith<$Res> {
  __$GetFileUrlsResponseCopyWithImpl(
      _GetFileUrlsResponse _value, $Res Function(_GetFileUrlsResponse) _then)
      : super(_value, (v) => _then(v as _GetFileUrlsResponse));

  @override
  _GetFileUrlsResponse get _value => super._value as _GetFileUrlsResponse;

  @override
  $Res call({
    Object? url = freezed,
    Object? fields = freezed,
  }) {
    return _then(_GetFileUrlsResponse(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as GetFileUploadDetailsFieldsResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetFileUrlsResponse extends _GetFileUrlsResponse {
  _$_GetFileUrlsResponse(
      {@JsonKey(name: "url") this.url, @JsonKey(name: "fields") this.fields})
      : super._();

  factory _$_GetFileUrlsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetFileUrlsResponseFromJson(json);

  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "fields")
  final GetFileUploadDetailsFieldsResponse? fields;

  @override
  String toString() {
    return 'GetFileUrlsResponse(url: $url, fields: $fields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetFileUrlsResponse &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.fields, fields));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(fields));

  @JsonKey(ignore: true)
  @override
  _$GetFileUrlsResponseCopyWith<_GetFileUrlsResponse> get copyWith =>
      __$GetFileUrlsResponseCopyWithImpl<_GetFileUrlsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetFileUrlsResponseToJson(this);
  }
}

abstract class _GetFileUrlsResponse extends GetFileUrlsResponse {
  factory _GetFileUrlsResponse(
      {@JsonKey(name: "url")
          String? url,
      @JsonKey(name: "fields")
          GetFileUploadDetailsFieldsResponse? fields}) = _$_GetFileUrlsResponse;
  _GetFileUrlsResponse._() : super._();

  factory _GetFileUrlsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetFileUrlsResponse.fromJson;

  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "fields")
  GetFileUploadDetailsFieldsResponse? get fields;
  @override
  @JsonKey(ignore: true)
  _$GetFileUrlsResponseCopyWith<_GetFileUrlsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GetFileUploadDetailsFieldsResponse _$GetFileUploadDetailsFieldsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetFileUploadDetailsFieldsResponse.fromJson(json);
}

/// @nodoc
class _$GetFileUploadDetailsFieldsResponseTearOff {
  const _$GetFileUploadDetailsFieldsResponseTearOff();

  _GetFileUploadDetailsFieldsResponse call(
      {@JsonKey(name: "key") String? key,
      @JsonKey(name: "bucket") String? bucket,
      @JsonKey(name: "X-Amz-Algorithm") String? xAmzAlgorithm,
      @JsonKey(name: "X-Amz-Credential") String? xAmzCredential,
      @JsonKey(name: "X-Amz-Date") String? xAmzDate,
      @JsonKey(name: "Policy") String? policy,
      @JsonKey(name: "X-Amz-Signature") String? xAmzSignature}) {
    return _GetFileUploadDetailsFieldsResponse(
      key: key,
      bucket: bucket,
      xAmzAlgorithm: xAmzAlgorithm,
      xAmzCredential: xAmzCredential,
      xAmzDate: xAmzDate,
      policy: policy,
      xAmzSignature: xAmzSignature,
    );
  }

  GetFileUploadDetailsFieldsResponse fromJson(Map<String, Object?> json) {
    return GetFileUploadDetailsFieldsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetFileUploadDetailsFieldsResponse =
    _$GetFileUploadDetailsFieldsResponseTearOff();

/// @nodoc
mixin _$GetFileUploadDetailsFieldsResponse {
  @JsonKey(name: "key")
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "bucket")
  String? get bucket => throw _privateConstructorUsedError;
  @JsonKey(name: "X-Amz-Algorithm")
  String? get xAmzAlgorithm => throw _privateConstructorUsedError;
  @JsonKey(name: "X-Amz-Credential")
  String? get xAmzCredential => throw _privateConstructorUsedError;
  @JsonKey(name: "X-Amz-Date")
  String? get xAmzDate => throw _privateConstructorUsedError;
  @JsonKey(name: "Policy")
  String? get policy => throw _privateConstructorUsedError;
  @JsonKey(name: "X-Amz-Signature")
  String? get xAmzSignature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFileUploadDetailsFieldsResponseCopyWith<
          GetFileUploadDetailsFieldsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFileUploadDetailsFieldsResponseCopyWith<$Res> {
  factory $GetFileUploadDetailsFieldsResponseCopyWith(
          GetFileUploadDetailsFieldsResponse value,
          $Res Function(GetFileUploadDetailsFieldsResponse) then) =
      _$GetFileUploadDetailsFieldsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "key") String? key,
      @JsonKey(name: "bucket") String? bucket,
      @JsonKey(name: "X-Amz-Algorithm") String? xAmzAlgorithm,
      @JsonKey(name: "X-Amz-Credential") String? xAmzCredential,
      @JsonKey(name: "X-Amz-Date") String? xAmzDate,
      @JsonKey(name: "Policy") String? policy,
      @JsonKey(name: "X-Amz-Signature") String? xAmzSignature});
}

/// @nodoc
class _$GetFileUploadDetailsFieldsResponseCopyWithImpl<$Res>
    implements $GetFileUploadDetailsFieldsResponseCopyWith<$Res> {
  _$GetFileUploadDetailsFieldsResponseCopyWithImpl(this._value, this._then);

  final GetFileUploadDetailsFieldsResponse _value;
  // ignore: unused_field
  final $Res Function(GetFileUploadDetailsFieldsResponse) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? bucket = freezed,
    Object? xAmzAlgorithm = freezed,
    Object? xAmzCredential = freezed,
    Object? xAmzDate = freezed,
    Object? policy = freezed,
    Object? xAmzSignature = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      bucket: bucket == freezed
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as String?,
      xAmzAlgorithm: xAmzAlgorithm == freezed
          ? _value.xAmzAlgorithm
          : xAmzAlgorithm // ignore: cast_nullable_to_non_nullable
              as String?,
      xAmzCredential: xAmzCredential == freezed
          ? _value.xAmzCredential
          : xAmzCredential // ignore: cast_nullable_to_non_nullable
              as String?,
      xAmzDate: xAmzDate == freezed
          ? _value.xAmzDate
          : xAmzDate // ignore: cast_nullable_to_non_nullable
              as String?,
      policy: policy == freezed
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as String?,
      xAmzSignature: xAmzSignature == freezed
          ? _value.xAmzSignature
          : xAmzSignature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GetFileUploadDetailsFieldsResponseCopyWith<$Res>
    implements $GetFileUploadDetailsFieldsResponseCopyWith<$Res> {
  factory _$GetFileUploadDetailsFieldsResponseCopyWith(
          _GetFileUploadDetailsFieldsResponse value,
          $Res Function(_GetFileUploadDetailsFieldsResponse) then) =
      __$GetFileUploadDetailsFieldsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "key") String? key,
      @JsonKey(name: "bucket") String? bucket,
      @JsonKey(name: "X-Amz-Algorithm") String? xAmzAlgorithm,
      @JsonKey(name: "X-Amz-Credential") String? xAmzCredential,
      @JsonKey(name: "X-Amz-Date") String? xAmzDate,
      @JsonKey(name: "Policy") String? policy,
      @JsonKey(name: "X-Amz-Signature") String? xAmzSignature});
}

/// @nodoc
class __$GetFileUploadDetailsFieldsResponseCopyWithImpl<$Res>
    extends _$GetFileUploadDetailsFieldsResponseCopyWithImpl<$Res>
    implements _$GetFileUploadDetailsFieldsResponseCopyWith<$Res> {
  __$GetFileUploadDetailsFieldsResponseCopyWithImpl(
      _GetFileUploadDetailsFieldsResponse _value,
      $Res Function(_GetFileUploadDetailsFieldsResponse) _then)
      : super(_value, (v) => _then(v as _GetFileUploadDetailsFieldsResponse));

  @override
  _GetFileUploadDetailsFieldsResponse get _value =>
      super._value as _GetFileUploadDetailsFieldsResponse;

  @override
  $Res call({
    Object? key = freezed,
    Object? bucket = freezed,
    Object? xAmzAlgorithm = freezed,
    Object? xAmzCredential = freezed,
    Object? xAmzDate = freezed,
    Object? policy = freezed,
    Object? xAmzSignature = freezed,
  }) {
    return _then(_GetFileUploadDetailsFieldsResponse(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      bucket: bucket == freezed
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as String?,
      xAmzAlgorithm: xAmzAlgorithm == freezed
          ? _value.xAmzAlgorithm
          : xAmzAlgorithm // ignore: cast_nullable_to_non_nullable
              as String?,
      xAmzCredential: xAmzCredential == freezed
          ? _value.xAmzCredential
          : xAmzCredential // ignore: cast_nullable_to_non_nullable
              as String?,
      xAmzDate: xAmzDate == freezed
          ? _value.xAmzDate
          : xAmzDate // ignore: cast_nullable_to_non_nullable
              as String?,
      policy: policy == freezed
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as String?,
      xAmzSignature: xAmzSignature == freezed
          ? _value.xAmzSignature
          : xAmzSignature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetFileUploadDetailsFieldsResponse
    extends _GetFileUploadDetailsFieldsResponse {
  _$_GetFileUploadDetailsFieldsResponse(
      {@JsonKey(name: "key") this.key,
      @JsonKey(name: "bucket") this.bucket,
      @JsonKey(name: "X-Amz-Algorithm") this.xAmzAlgorithm,
      @JsonKey(name: "X-Amz-Credential") this.xAmzCredential,
      @JsonKey(name: "X-Amz-Date") this.xAmzDate,
      @JsonKey(name: "Policy") this.policy,
      @JsonKey(name: "X-Amz-Signature") this.xAmzSignature})
      : super._();

  factory _$_GetFileUploadDetailsFieldsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetFileUploadDetailsFieldsResponseFromJson(json);

  @override
  @JsonKey(name: "key")
  final String? key;
  @override
  @JsonKey(name: "bucket")
  final String? bucket;
  @override
  @JsonKey(name: "X-Amz-Algorithm")
  final String? xAmzAlgorithm;
  @override
  @JsonKey(name: "X-Amz-Credential")
  final String? xAmzCredential;
  @override
  @JsonKey(name: "X-Amz-Date")
  final String? xAmzDate;
  @override
  @JsonKey(name: "Policy")
  final String? policy;
  @override
  @JsonKey(name: "X-Amz-Signature")
  final String? xAmzSignature;

  @override
  String toString() {
    return 'GetFileUploadDetailsFieldsResponse(key: $key, bucket: $bucket, xAmzAlgorithm: $xAmzAlgorithm, xAmzCredential: $xAmzCredential, xAmzDate: $xAmzDate, policy: $policy, xAmzSignature: $xAmzSignature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetFileUploadDetailsFieldsResponse &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.bucket, bucket) &&
            const DeepCollectionEquality()
                .equals(other.xAmzAlgorithm, xAmzAlgorithm) &&
            const DeepCollectionEquality()
                .equals(other.xAmzCredential, xAmzCredential) &&
            const DeepCollectionEquality().equals(other.xAmzDate, xAmzDate) &&
            const DeepCollectionEquality().equals(other.policy, policy) &&
            const DeepCollectionEquality()
                .equals(other.xAmzSignature, xAmzSignature));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(bucket),
      const DeepCollectionEquality().hash(xAmzAlgorithm),
      const DeepCollectionEquality().hash(xAmzCredential),
      const DeepCollectionEquality().hash(xAmzDate),
      const DeepCollectionEquality().hash(policy),
      const DeepCollectionEquality().hash(xAmzSignature));

  @JsonKey(ignore: true)
  @override
  _$GetFileUploadDetailsFieldsResponseCopyWith<
          _GetFileUploadDetailsFieldsResponse>
      get copyWith => __$GetFileUploadDetailsFieldsResponseCopyWithImpl<
          _GetFileUploadDetailsFieldsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetFileUploadDetailsFieldsResponseToJson(this);
  }
}

abstract class _GetFileUploadDetailsFieldsResponse
    extends GetFileUploadDetailsFieldsResponse {
  factory _GetFileUploadDetailsFieldsResponse(
          {@JsonKey(name: "key") String? key,
          @JsonKey(name: "bucket") String? bucket,
          @JsonKey(name: "X-Amz-Algorithm") String? xAmzAlgorithm,
          @JsonKey(name: "X-Amz-Credential") String? xAmzCredential,
          @JsonKey(name: "X-Amz-Date") String? xAmzDate,
          @JsonKey(name: "Policy") String? policy,
          @JsonKey(name: "X-Amz-Signature") String? xAmzSignature}) =
      _$_GetFileUploadDetailsFieldsResponse;
  _GetFileUploadDetailsFieldsResponse._() : super._();

  factory _GetFileUploadDetailsFieldsResponse.fromJson(
          Map<String, dynamic> json) =
      _$_GetFileUploadDetailsFieldsResponse.fromJson;

  @override
  @JsonKey(name: "key")
  String? get key;
  @override
  @JsonKey(name: "bucket")
  String? get bucket;
  @override
  @JsonKey(name: "X-Amz-Algorithm")
  String? get xAmzAlgorithm;
  @override
  @JsonKey(name: "X-Amz-Credential")
  String? get xAmzCredential;
  @override
  @JsonKey(name: "X-Amz-Date")
  String? get xAmzDate;
  @override
  @JsonKey(name: "Policy")
  String? get policy;
  @override
  @JsonKey(name: "X-Amz-Signature")
  String? get xAmzSignature;
  @override
  @JsonKey(ignore: true)
  _$GetFileUploadDetailsFieldsResponseCopyWith<
          _GetFileUploadDetailsFieldsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
