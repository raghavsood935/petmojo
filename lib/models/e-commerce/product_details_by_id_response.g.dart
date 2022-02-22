// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_by_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetailsByIdResponse _$$_ProductDetailsByIdResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailsByIdResponse(
      product: json['product'] == null
          ? null
          : ProductResponse.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductDetailsByIdResponseToJson(
        _$_ProductDetailsByIdResponse instance) =>
    <String, dynamic>{
      'product': instance.product,
    };
