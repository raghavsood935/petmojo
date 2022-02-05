// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_details_by_id_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetailsByIdResponse _$ProductDetailsByIdResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailsByIdResponse.fromJson(json);
}

/// @nodoc
class _$ProductDetailsByIdResponseTearOff {
  const _$ProductDetailsByIdResponseTearOff();

  _ProductDetailsByIdResponse call(
      {@JsonKey(name: "product") ProductResponse? product}) {
    return _ProductDetailsByIdResponse(
      product: product,
    );
  }

  ProductDetailsByIdResponse fromJson(Map<String, Object?> json) {
    return ProductDetailsByIdResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductDetailsByIdResponse = _$ProductDetailsByIdResponseTearOff();

/// @nodoc
mixin _$ProductDetailsByIdResponse {
  @JsonKey(name: "product")
  ProductResponse? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsByIdResponseCopyWith<ProductDetailsByIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsByIdResponseCopyWith<$Res> {
  factory $ProductDetailsByIdResponseCopyWith(ProductDetailsByIdResponse value,
          $Res Function(ProductDetailsByIdResponse) then) =
      _$ProductDetailsByIdResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "product") ProductResponse? product});

  $ProductResponseCopyWith<$Res>? get product;
}

/// @nodoc
class _$ProductDetailsByIdResponseCopyWithImpl<$Res>
    implements $ProductDetailsByIdResponseCopyWith<$Res> {
  _$ProductDetailsByIdResponseCopyWithImpl(this._value, this._then);

  final ProductDetailsByIdResponse _value;
  // ignore: unused_field
  final $Res Function(ProductDetailsByIdResponse) _then;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductResponse?,
    ));
  }

  @override
  $ProductResponseCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductResponseCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$ProductDetailsByIdResponseCopyWith<$Res>
    implements $ProductDetailsByIdResponseCopyWith<$Res> {
  factory _$ProductDetailsByIdResponseCopyWith(
          _ProductDetailsByIdResponse value,
          $Res Function(_ProductDetailsByIdResponse) then) =
      __$ProductDetailsByIdResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "product") ProductResponse? product});

  @override
  $ProductResponseCopyWith<$Res>? get product;
}

/// @nodoc
class __$ProductDetailsByIdResponseCopyWithImpl<$Res>
    extends _$ProductDetailsByIdResponseCopyWithImpl<$Res>
    implements _$ProductDetailsByIdResponseCopyWith<$Res> {
  __$ProductDetailsByIdResponseCopyWithImpl(_ProductDetailsByIdResponse _value,
      $Res Function(_ProductDetailsByIdResponse) _then)
      : super(_value, (v) => _then(v as _ProductDetailsByIdResponse));

  @override
  _ProductDetailsByIdResponse get _value =>
      super._value as _ProductDetailsByIdResponse;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_ProductDetailsByIdResponse(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailsByIdResponse extends _ProductDetailsByIdResponse {
  _$_ProductDetailsByIdResponse({@JsonKey(name: "product") this.product})
      : super._();

  factory _$_ProductDetailsByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsByIdResponseFromJson(json);

  @override
  @JsonKey(name: "product")
  final ProductResponse? product;

  @override
  String toString() {
    return 'ProductDetailsByIdResponse(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDetailsByIdResponse &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$ProductDetailsByIdResponseCopyWith<_ProductDetailsByIdResponse>
      get copyWith => __$ProductDetailsByIdResponseCopyWithImpl<
          _ProductDetailsByIdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsByIdResponseToJson(this);
  }
}

abstract class _ProductDetailsByIdResponse extends ProductDetailsByIdResponse {
  factory _ProductDetailsByIdResponse(
          {@JsonKey(name: "product") ProductResponse? product}) =
      _$_ProductDetailsByIdResponse;
  _ProductDetailsByIdResponse._() : super._();

  factory _ProductDetailsByIdResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailsByIdResponse.fromJson;

  @override
  @JsonKey(name: "product")
  ProductResponse? get product;
  @override
  @JsonKey(ignore: true)
  _$ProductDetailsByIdResponseCopyWith<_ProductDetailsByIdResponse>
      get copyWith => throw _privateConstructorUsedError;
}
