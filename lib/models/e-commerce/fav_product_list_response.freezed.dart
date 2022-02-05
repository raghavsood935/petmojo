// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fav_product_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavProductListResponse _$FavProductListResponseFromJson(
    Map<String, dynamic> json) {
  return _FavProductListResponse.fromJson(json);
}

/// @nodoc
class _$FavProductListResponseTearOff {
  const _$FavProductListResponseTearOff();

  _FavProductListResponse call(
      {@JsonKey(name: "fav") FavInnerProductListResponse? fav}) {
    return _FavProductListResponse(
      fav: fav,
    );
  }

  FavProductListResponse fromJson(Map<String, Object?> json) {
    return FavProductListResponse.fromJson(json);
  }
}

/// @nodoc
const $FavProductListResponse = _$FavProductListResponseTearOff();

/// @nodoc
mixin _$FavProductListResponse {
  @JsonKey(name: "fav")
  FavInnerProductListResponse? get fav => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavProductListResponseCopyWith<FavProductListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavProductListResponseCopyWith<$Res> {
  factory $FavProductListResponseCopyWith(FavProductListResponse value,
          $Res Function(FavProductListResponse) then) =
      _$FavProductListResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "fav") FavInnerProductListResponse? fav});

  $FavInnerProductListResponseCopyWith<$Res>? get fav;
}

/// @nodoc
class _$FavProductListResponseCopyWithImpl<$Res>
    implements $FavProductListResponseCopyWith<$Res> {
  _$FavProductListResponseCopyWithImpl(this._value, this._then);

  final FavProductListResponse _value;
  // ignore: unused_field
  final $Res Function(FavProductListResponse) _then;

  @override
  $Res call({
    Object? fav = freezed,
  }) {
    return _then(_value.copyWith(
      fav: fav == freezed
          ? _value.fav
          : fav // ignore: cast_nullable_to_non_nullable
              as FavInnerProductListResponse?,
    ));
  }

  @override
  $FavInnerProductListResponseCopyWith<$Res>? get fav {
    if (_value.fav == null) {
      return null;
    }

    return $FavInnerProductListResponseCopyWith<$Res>(_value.fav!, (value) {
      return _then(_value.copyWith(fav: value));
    });
  }
}

/// @nodoc
abstract class _$FavProductListResponseCopyWith<$Res>
    implements $FavProductListResponseCopyWith<$Res> {
  factory _$FavProductListResponseCopyWith(_FavProductListResponse value,
          $Res Function(_FavProductListResponse) then) =
      __$FavProductListResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "fav") FavInnerProductListResponse? fav});

  @override
  $FavInnerProductListResponseCopyWith<$Res>? get fav;
}

/// @nodoc
class __$FavProductListResponseCopyWithImpl<$Res>
    extends _$FavProductListResponseCopyWithImpl<$Res>
    implements _$FavProductListResponseCopyWith<$Res> {
  __$FavProductListResponseCopyWithImpl(_FavProductListResponse _value,
      $Res Function(_FavProductListResponse) _then)
      : super(_value, (v) => _then(v as _FavProductListResponse));

  @override
  _FavProductListResponse get _value => super._value as _FavProductListResponse;

  @override
  $Res call({
    Object? fav = freezed,
  }) {
    return _then(_FavProductListResponse(
      fav: fav == freezed
          ? _value.fav
          : fav // ignore: cast_nullable_to_non_nullable
              as FavInnerProductListResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavProductListResponse extends _FavProductListResponse {
  _$_FavProductListResponse({@JsonKey(name: "fav") this.fav}) : super._();

  factory _$_FavProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FavProductListResponseFromJson(json);

  @override
  @JsonKey(name: "fav")
  final FavInnerProductListResponse? fav;

  @override
  String toString() {
    return 'FavProductListResponse(fav: $fav)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavProductListResponse &&
            const DeepCollectionEquality().equals(other.fav, fav));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fav));

  @JsonKey(ignore: true)
  @override
  _$FavProductListResponseCopyWith<_FavProductListResponse> get copyWith =>
      __$FavProductListResponseCopyWithImpl<_FavProductListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavProductListResponseToJson(this);
  }
}

abstract class _FavProductListResponse extends FavProductListResponse {
  factory _FavProductListResponse(
          {@JsonKey(name: "fav") FavInnerProductListResponse? fav}) =
      _$_FavProductListResponse;
  _FavProductListResponse._() : super._();

  factory _FavProductListResponse.fromJson(Map<String, dynamic> json) =
      _$_FavProductListResponse.fromJson;

  @override
  @JsonKey(name: "fav")
  FavInnerProductListResponse? get fav;
  @override
  @JsonKey(ignore: true)
  _$FavProductListResponseCopyWith<_FavProductListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FavInnerProductListResponse _$FavInnerProductListResponseFromJson(
    Map<String, dynamic> json) {
  return _FavInnerProductListResponse.fromJson(json);
}

/// @nodoc
class _$FavInnerProductListResponseTearOff {
  const _$FavInnerProductListResponseTearOff();

  _FavInnerProductListResponse call(
      {@JsonKey(name: "products") Map<String, dynamic>? products}) {
    return _FavInnerProductListResponse(
      products: products,
    );
  }

  FavInnerProductListResponse fromJson(Map<String, Object?> json) {
    return FavInnerProductListResponse.fromJson(json);
  }
}

/// @nodoc
const $FavInnerProductListResponse = _$FavInnerProductListResponseTearOff();

/// @nodoc
mixin _$FavInnerProductListResponse {
  @JsonKey(name: "products")
  Map<String, dynamic>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavInnerProductListResponseCopyWith<FavInnerProductListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavInnerProductListResponseCopyWith<$Res> {
  factory $FavInnerProductListResponseCopyWith(
          FavInnerProductListResponse value,
          $Res Function(FavInnerProductListResponse) then) =
      _$FavInnerProductListResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "products") Map<String, dynamic>? products});
}

/// @nodoc
class _$FavInnerProductListResponseCopyWithImpl<$Res>
    implements $FavInnerProductListResponseCopyWith<$Res> {
  _$FavInnerProductListResponseCopyWithImpl(this._value, this._then);

  final FavInnerProductListResponse _value;
  // ignore: unused_field
  final $Res Function(FavInnerProductListResponse) _then;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$FavInnerProductListResponseCopyWith<$Res>
    implements $FavInnerProductListResponseCopyWith<$Res> {
  factory _$FavInnerProductListResponseCopyWith(
          _FavInnerProductListResponse value,
          $Res Function(_FavInnerProductListResponse) then) =
      __$FavInnerProductListResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "products") Map<String, dynamic>? products});
}

/// @nodoc
class __$FavInnerProductListResponseCopyWithImpl<$Res>
    extends _$FavInnerProductListResponseCopyWithImpl<$Res>
    implements _$FavInnerProductListResponseCopyWith<$Res> {
  __$FavInnerProductListResponseCopyWithImpl(
      _FavInnerProductListResponse _value,
      $Res Function(_FavInnerProductListResponse) _then)
      : super(_value, (v) => _then(v as _FavInnerProductListResponse));

  @override
  _FavInnerProductListResponse get _value =>
      super._value as _FavInnerProductListResponse;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_FavInnerProductListResponse(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavInnerProductListResponse extends _FavInnerProductListResponse {
  _$_FavInnerProductListResponse({@JsonKey(name: "products") this.products})
      : super._();

  factory _$_FavInnerProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FavInnerProductListResponseFromJson(json);

  @override
  @JsonKey(name: "products")
  final Map<String, dynamic>? products;

  @override
  String toString() {
    return 'FavInnerProductListResponse(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavInnerProductListResponse &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$FavInnerProductListResponseCopyWith<_FavInnerProductListResponse>
      get copyWith => __$FavInnerProductListResponseCopyWithImpl<
          _FavInnerProductListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavInnerProductListResponseToJson(this);
  }
}

abstract class _FavInnerProductListResponse
    extends FavInnerProductListResponse {
  factory _FavInnerProductListResponse(
          {@JsonKey(name: "products") Map<String, dynamic>? products}) =
      _$_FavInnerProductListResponse;
  _FavInnerProductListResponse._() : super._();

  factory _FavInnerProductListResponse.fromJson(Map<String, dynamic> json) =
      _$_FavInnerProductListResponse.fromJson;

  @override
  @JsonKey(name: "products")
  Map<String, dynamic>? get products;
  @override
  @JsonKey(ignore: true)
  _$FavInnerProductListResponseCopyWith<_FavInnerProductListResponse>
      get copyWith => throw _privateConstructorUsedError;
}
