// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
class _$ProductResponseTearOff {
  const _$ProductResponseTearOff();

  _ProductResponse call(
      {@JsonKey(name: "images") List<String>? images,
      @JsonKey(name: "sizes") List<String>? sizes,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "brand") String? brand,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "originalPrice") double? originalPrice,
      @JsonKey(name: "discountedPrice") double? discountPrice,
      @JsonKey(name: "rating") double? rating,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "createdAt") String? createdAt,
      @JsonKey(name: "updatedAt") String? updatedAt,
      @JsonKey(name: "isFav") bool? isFav,
      @JsonKey(name: "isCarted") bool? isCarted,
      @JsonKey(name: "color") List<String>? color}) {
    return _ProductResponse(
      images: images,
      sizes: sizes,
      id: id,
      category: category,
      name: name,
      brand: brand,
      description: description,
      originalPrice: originalPrice,
      discountPrice: discountPrice,
      rating: rating,
      avatar: avatar,
      createdAt: createdAt,
      updatedAt: updatedAt,
      isFav: isFav,
      isCarted: isCarted,
      color: color,
    );
  }

  ProductResponse fromJson(Map<String, Object?> json) {
    return ProductResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductResponse = _$ProductResponseTearOff();

/// @nodoc
mixin _$ProductResponse {
  @JsonKey(name: "images")
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "sizes")
  List<String>? get sizes => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "brand")
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "originalPrice")
  double? get originalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "discountedPrice")
  double? get discountPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "isFav")
  bool? get isFav => throw _privateConstructorUsedError;
  @JsonKey(name: "isCarted")
  bool? get isCarted => throw _privateConstructorUsedError;
  @JsonKey(name: "color")
  List<String>? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
          ProductResponse value, $Res Function(ProductResponse) then) =
      _$ProductResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "images") List<String>? images,
      @JsonKey(name: "sizes") List<String>? sizes,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "brand") String? brand,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "originalPrice") double? originalPrice,
      @JsonKey(name: "discountedPrice") double? discountPrice,
      @JsonKey(name: "rating") double? rating,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "createdAt") String? createdAt,
      @JsonKey(name: "updatedAt") String? updatedAt,
      @JsonKey(name: "isFav") bool? isFav,
      @JsonKey(name: "isCarted") bool? isCarted,
      @JsonKey(name: "color") List<String>? color});
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  final ProductResponse _value;
  // ignore: unused_field
  final $Res Function(ProductResponse) _then;

  @override
  $Res call({
    Object? images = freezed,
    Object? sizes = freezed,
    Object? id = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? originalPrice = freezed,
    Object? discountPrice = freezed,
    Object? rating = freezed,
    Object? avatar = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isFav = freezed,
    Object? isCarted = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sizes: sizes == freezed
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      originalPrice: originalPrice == freezed
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPrice: discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isFav: isFav == freezed
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCarted: isCarted == freezed
          ? _value.isCarted
          : isCarted // ignore: cast_nullable_to_non_nullable
              as bool?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$ProductResponseCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$ProductResponseCopyWith(
          _ProductResponse value, $Res Function(_ProductResponse) then) =
      __$ProductResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "images") List<String>? images,
      @JsonKey(name: "sizes") List<String>? sizes,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "brand") String? brand,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "originalPrice") double? originalPrice,
      @JsonKey(name: "discountedPrice") double? discountPrice,
      @JsonKey(name: "rating") double? rating,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "createdAt") String? createdAt,
      @JsonKey(name: "updatedAt") String? updatedAt,
      @JsonKey(name: "isFav") bool? isFav,
      @JsonKey(name: "isCarted") bool? isCarted,
      @JsonKey(name: "color") List<String>? color});
}

/// @nodoc
class __$ProductResponseCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res>
    implements _$ProductResponseCopyWith<$Res> {
  __$ProductResponseCopyWithImpl(
      _ProductResponse _value, $Res Function(_ProductResponse) _then)
      : super(_value, (v) => _then(v as _ProductResponse));

  @override
  _ProductResponse get _value => super._value as _ProductResponse;

  @override
  $Res call({
    Object? images = freezed,
    Object? sizes = freezed,
    Object? id = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? originalPrice = freezed,
    Object? discountPrice = freezed,
    Object? rating = freezed,
    Object? avatar = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isFav = freezed,
    Object? isCarted = freezed,
    Object? color = freezed,
  }) {
    return _then(_ProductResponse(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sizes: sizes == freezed
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      originalPrice: originalPrice == freezed
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPrice: discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isFav: isFav == freezed
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCarted: isCarted == freezed
          ? _value.isCarted
          : isCarted // ignore: cast_nullable_to_non_nullable
              as bool?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductResponse extends _ProductResponse {
  _$_ProductResponse(
      {@JsonKey(name: "images") this.images,
      @JsonKey(name: "sizes") this.sizes,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "category") this.category,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "brand") this.brand,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "originalPrice") this.originalPrice,
      @JsonKey(name: "discountedPrice") this.discountPrice,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "avatar") this.avatar,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "isFav") this.isFav,
      @JsonKey(name: "isCarted") this.isCarted,
      @JsonKey(name: "color") this.color})
      : super._();

  factory _$_ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductResponseFromJson(json);

  @override
  @JsonKey(name: "images")
  final List<String>? images;
  @override
  @JsonKey(name: "sizes")
  final List<String>? sizes;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "category")
  final String? category;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "brand")
  final String? brand;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "originalPrice")
  final double? originalPrice;
  @override
  @JsonKey(name: "discountedPrice")
  final double? discountPrice;
  @override
  @JsonKey(name: "rating")
  final double? rating;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;
  @override
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final String? updatedAt;
  @override
  @JsonKey(name: "isFav")
  final bool? isFav;
  @override
  @JsonKey(name: "isCarted")
  final bool? isCarted;
  @override
  @JsonKey(name: "color")
  final List<String>? color;

  @override
  String toString() {
    return 'ProductResponse(images: $images, sizes: $sizes, id: $id, category: $category, name: $name, brand: $brand, description: $description, originalPrice: $originalPrice, discountPrice: $discountPrice, rating: $rating, avatar: $avatar, createdAt: $createdAt, updatedAt: $updatedAt, isFav: $isFav, isCarted: $isCarted, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductResponse &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.sizes, sizes) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.originalPrice, originalPrice) &&
            const DeepCollectionEquality()
                .equals(other.discountPrice, discountPrice) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.isFav, isFav) &&
            const DeepCollectionEquality().equals(other.isCarted, isCarted) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(images),
      const DeepCollectionEquality().hash(sizes),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(originalPrice),
      const DeepCollectionEquality().hash(discountPrice),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(isFav),
      const DeepCollectionEquality().hash(isCarted),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$ProductResponseCopyWith<_ProductResponse> get copyWith =>
      __$ProductResponseCopyWithImpl<_ProductResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductResponseToJson(this);
  }
}

abstract class _ProductResponse extends ProductResponse {
  factory _ProductResponse(
      {@JsonKey(name: "images") List<String>? images,
      @JsonKey(name: "sizes") List<String>? sizes,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "brand") String? brand,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "originalPrice") double? originalPrice,
      @JsonKey(name: "discountedPrice") double? discountPrice,
      @JsonKey(name: "rating") double? rating,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "createdAt") String? createdAt,
      @JsonKey(name: "updatedAt") String? updatedAt,
      @JsonKey(name: "isFav") bool? isFav,
      @JsonKey(name: "isCarted") bool? isCarted,
      @JsonKey(name: "color") List<String>? color}) = _$_ProductResponse;
  _ProductResponse._() : super._();

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductResponse.fromJson;

  @override
  @JsonKey(name: "images")
  List<String>? get images;
  @override
  @JsonKey(name: "sizes")
  List<String>? get sizes;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "category")
  String? get category;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "brand")
  String? get brand;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "originalPrice")
  double? get originalPrice;
  @override
  @JsonKey(name: "discountedPrice")
  double? get discountPrice;
  @override
  @JsonKey(name: "rating")
  double? get rating;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(name: "createdAt")
  String? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  String? get updatedAt;
  @override
  @JsonKey(name: "isFav")
  bool? get isFav;
  @override
  @JsonKey(name: "isCarted")
  bool? get isCarted;
  @override
  @JsonKey(name: "color")
  List<String>? get color;
  @override
  @JsonKey(ignore: true)
  _$ProductResponseCopyWith<_ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
