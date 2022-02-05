// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductListResponse _$$_ProductListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProductListResponse(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductListResponseToJson(
        _$_ProductListResponse instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
