// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductResponse _$$_ProductResponseFromJson(Map<String, dynamic> json) =>
    _$_ProductResponse(
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sizes:
          (json['sizes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['_id'] as String?,
      category: json['category'] as String?,
      name: json['name'] as String?,
      brand: json['brand'] as String?,
      description: json['description'] as String?,
      originalPrice: (json['originalPrice'] as num?)?.toDouble(),
      discountPrice: (json['discountedPrice'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      avatar: json['avatar'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      isFav: json['isFav'] as bool?,
      isCarted: json['isCarted'] as bool?,
      color:
          (json['color'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProductResponseToJson(_$_ProductResponse instance) =>
    <String, dynamic>{
      'images': instance.images,
      'sizes': instance.sizes,
      '_id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'brand': instance.brand,
      'description': instance.description,
      'originalPrice': instance.originalPrice,
      'discountedPrice': instance.discountPrice,
      'rating': instance.rating,
      'avatar': instance.avatar,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'isFav': instance.isFav,
      'isCarted': instance.isCarted,
      'color': instance.color,
    };
