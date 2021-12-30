// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfPostResponse _$$_ListOfPostResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListOfPostResponse(
      listOfPosts: (json['posts'] as List<dynamic>?)
          ?.map((e) => PostResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOfPostResponseToJson(
        _$_ListOfPostResponse instance) =>
    <String, dynamic>{
      'posts': instance.listOfPosts,
    };
