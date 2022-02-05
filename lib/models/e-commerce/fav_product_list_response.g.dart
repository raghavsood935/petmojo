// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_product_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavProductListResponse _$$_FavProductListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FavProductListResponse(
      fav: json['fav'] == null
          ? null
          : FavInnerProductListResponse.fromJson(
              json['fav'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FavProductListResponseToJson(
        _$_FavProductListResponse instance) =>
    <String, dynamic>{
      'fav': instance.fav,
    };

_$_FavInnerProductListResponse _$$_FavInnerProductListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FavInnerProductListResponse(
      products: json['products'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_FavInnerProductListResponseToJson(
        _$_FavInnerProductListResponse instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
