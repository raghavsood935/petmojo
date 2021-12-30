// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_feed_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfFeedPostResponse _$$_ListOfFeedPostResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListOfFeedPostResponse(
      listOfPosts: (json['posts'] as List<dynamic>?)
          ?.map((e) => FeedPostResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOfFeedPostResponseToJson(
        _$_ListOfFeedPostResponse instance) =>
    <String, dynamic>{
      'posts': instance.listOfPosts,
    };
