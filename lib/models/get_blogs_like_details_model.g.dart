// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_blogs_like_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetBlogLikeDetailsResponse _$$_GetBlogLikeDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetBlogLikeDetailsResponse(
      like: (json['like'] as List<dynamic>?)
          ?.map((e) => BlogLikeDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$_GetBlogLikeDetailsResponseToJson(
        _$_GetBlogLikeDetailsResponse instance) =>
    <String, dynamic>{
      'like': instance.like,
      'success': instance.success,
    };

_$_BlogLikeDetails _$$_BlogLikeDetailsFromJson(Map<String, dynamic> json) =>
    _$_BlogLikeDetails(
      sId: json['_id'] as String?,
      person: json['person'] == null
          ? null
          : ProfileResponse.fromJson(json['person'] as Map<String, dynamic>),
      personType: json['personType'] as String?,
    );

Map<String, dynamic> _$$_BlogLikeDetailsToJson(_$_BlogLikeDetails instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'person': instance.person,
      'personType': instance.personType,
    };
