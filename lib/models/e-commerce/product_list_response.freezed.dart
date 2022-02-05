// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductListResponse _$ProductListResponseFromJson(Map<String, dynamic> json) {
  return _ProductListResponse.fromJson(json);
}

/// @nodoc
class _$ProductListResponseTearOff {
  const _$ProductListResponseTearOff();

  _ProductListResponse call(
      {@JsonKey(name: "products") List<ProductResponse>? products}) {
    return _ProductListResponse(
      products: products,
    );
  }

  ProductListResponse fromJson(Map<String, Object?> json) {
    return ProductListResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductListResponse = _$ProductListResponseTearOff();

/// @nodoc
mixin _$ProductListResponse {
  @JsonKey(name: "products")
  List<ProductResponse>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListResponseCopyWith<ProductListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListResponseCopyWith<$Res> {
  factory $ProductListResponseCopyWith(
          ProductListResponse value, $Res Function(ProductListResponse) then) =
      _$ProductListResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "products") List<ProductResponse>? products});
}

/// @nodoc
class _$ProductListResponseCopyWithImpl<$Res>
    implements $ProductListResponseCopyWith<$Res> {
  _$ProductListResponseCopyWithImpl(this._value, this._then);

  final ProductListResponse _value;
  // ignore: unused_field
  final $Res Function(ProductListResponse) _then;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ProductListResponseCopyWith<$Res>
    implements $ProductListResponseCopyWith<$Res> {
  factory _$ProductListResponseCopyWith(_ProductListResponse value,
          $Res Function(_ProductListResponse) then) =
      __$ProductListResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "products") List<ProductResponse>? products});
}

/// @nodoc
class __$ProductListResponseCopyWithImpl<$Res>
    extends _$ProductListResponseCopyWithImpl<$Res>
    implements _$ProductListResponseCopyWith<$Res> {
  __$ProductListResponseCopyWithImpl(
      _ProductListResponse _value, $Res Function(_ProductListResponse) _then)
      : super(_value, (v) => _then(v as _ProductListResponse));

  @override
  _ProductListResponse get _value => super._value as _ProductListResponse;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_ProductListResponse(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductListResponse extends _ProductListResponse {
  _$_ProductListResponse({@JsonKey(name: "products") this.products})
      : super._();

  factory _$_ProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductListResponseFromJson(json);

  @override
  @JsonKey(name: "products")
  final List<ProductResponse>? products;

  @override
  String toString() {
    return 'ProductListResponse(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductListResponse &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$ProductListResponseCopyWith<_ProductListResponse> get copyWith =>
      __$ProductListResponseCopyWithImpl<_ProductListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductListResponseToJson(this);
  }
}

abstract class _ProductListResponse extends ProductListResponse {
  factory _ProductListResponse(
          {@JsonKey(name: "products") List<ProductResponse>? products}) =
      _$_ProductListResponse;
  _ProductListResponse._() : super._();

  factory _ProductListResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductListResponse.fromJson;

  @override
  @JsonKey(name: "products")
  List<ProductResponse>? get products;
  @override
  @JsonKey(ignore: true)
  _$ProductListResponseCopyWith<_ProductListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
