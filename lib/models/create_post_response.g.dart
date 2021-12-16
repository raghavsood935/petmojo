// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatePostResponse _$$_CreatePostResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreatePostResponse(
      createPostDetailsResponse: json['post'] == null
          ? null
          : CreatePostDetailsResponse.fromJson(
              json['post'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreatePostResponseToJson(
        _$_CreatePostResponse instance) =>
    <String, dynamic>{
      'post': instance.createPostDetailsResponse,
    };

_$_CreatePostDetailsResponse _$$_CreatePostDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreatePostDetailsResponse(
      hashtags: (json['hashtags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      Id: json['_id'] as String?,
      image: json['image'] as String?,
      thumbnail: json['thumbnail'] as String?,
      filter: json['filter'] as String?,
      caption: json['caption'] as String?,
      Userauthor: json['Userauthor'] as String?,
      authorType: json['authorType'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_CreatePostDetailsResponseToJson(
        _$_CreatePostDetailsResponse instance) =>
    <String, dynamic>{
      'hashtags': instance.hashtags,
      '_id': instance.Id,
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'filter': instance.filter,
      'caption': instance.caption,
      'Userauthor': instance.Userauthor,
      'authorType': instance.authorType,
      'date': instance.date,
    };
