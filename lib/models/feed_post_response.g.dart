// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedPostResponse _$$_FeedPostResponseFromJson(Map<String, dynamic> json) =>
    _$_FeedPostResponse(
      Id: json['_id'] as String?,
      hashtags: (json['hashtags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      image: json['image'] as String?,
      thumbnail: json['thumbnail'] as String?,
      filter: json['filter'] as String?,
      caption: json['caption'] as String?,
      author: (json['author'] as List<dynamic>?)
          ?.map((e) => ProfileResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      postOwnerDetails: json['postOwnerDetails'] == null
          ? null
          : PostOwnerDetailsResponse.fromJson(
              json['postOwnerDetails'] as Map<String, dynamic>),
      date: json['date'] as String?,
      commentResponse: json['commentData'] == null
          ? null
          : FeedPostCommentResponse.fromJson(
              json['commentData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedPostResponseToJson(_$_FeedPostResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'hashtags': instance.hashtags,
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'filter': instance.filter,
      'caption': instance.caption,
      'author': instance.author,
      'postOwnerDetails': instance.postOwnerDetails,
      'date': instance.date,
      'commentData': instance.commentResponse,
    };

_$_FeedPostCommentResponse _$$_FeedPostCommentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FeedPostCommentResponse(
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) =>
              FeedPostInnerCommentResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FeedPostCommentResponseToJson(
        _$_FeedPostCommentResponse instance) =>
    <String, dynamic>{
      'comments': instance.comments,
    };

_$_FeedPostInnerCommentResponse _$$_FeedPostInnerCommentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FeedPostInnerCommentResponse(
      Id: json['_id'] as String?,
      message: json['message'] as String?,
      postId: json['post'] as String?,
      author: (json['author'] as List<dynamic>?)
          ?.map((e) => ProfileResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: (json['Animalauthor'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_FeedPostInnerCommentResponseToJson(
        _$_FeedPostInnerCommentResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'message': instance.message,
      'post': instance.postId,
      'author': instance.author,
      'Animalauthor': instance.comments,
    };
