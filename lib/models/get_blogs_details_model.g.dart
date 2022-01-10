// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_blogs_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetBlogDetailsResponse _$$_GetBlogDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetBlogDetailsResponse(
      blog: json['blog'] == null
          ? null
          : blogDetails.fromJson(json['blog'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetBlogDetailsResponseToJson(
        _$_GetBlogDetailsResponse instance) =>
    <String, dynamic>{
      'blog': instance.blog,
    };
