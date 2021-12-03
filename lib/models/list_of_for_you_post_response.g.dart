// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_for_you_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfForYouPostResponse _$$_ListOfForYouPostResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListOfForYouPostResponse(
      listOfPosts: (json['posts'] as List<dynamic>?)
          ?.map((e) => ForYouPostResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOfForYouPostResponseToJson(
        _$_ListOfForYouPostResponse instance) =>
    <String, dynamic>{
      'posts': instance.listOfPosts,
    };

_$_ForYouPostResponse _$$_ForYouPostResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ForYouPostResponse(
      Id: json['_id'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_ForYouPostResponseToJson(
        _$_ForYouPostResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'thumbnail': instance.thumbnail,
    };
