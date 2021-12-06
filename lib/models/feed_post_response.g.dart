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
      userAuthor: (json['Userauthor'] as List<dynamic>?)
          ?.map((e) => ProfileResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      authorType: json['authorType'] as String?,
      date: json['date'] as String?,
      votesCounts: (json['votesCount'] as List<dynamic>?)
          ?.map((e) => VotesCountResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'Userauthor': instance.userAuthor,
      'authorType': instance.authorType,
      'date': instance.date,
      'votesCount': instance.votesCounts,
      'commentData': instance.commentResponse,
    };

_$_VotesCountResponse _$$_VotesCountResponseFromJson(
        Map<String, dynamic> json) =>
    _$_VotesCountResponse(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_VotesCountResponseToJson(
        _$_VotesCountResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

_$_FeedPostCommentResponse _$$_FeedPostCommentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FeedPostCommentResponse(
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) =>
              FeedPostInnerCommentResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      commentCount: json['commentCount'] as int?,
    );

Map<String, dynamic> _$$_FeedPostCommentResponseToJson(
        _$_FeedPostCommentResponse instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'commentCount': instance.commentCount,
    };

_$_FeedPostInnerCommentResponse _$$_FeedPostInnerCommentResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FeedPostInnerCommentResponse(
      postId: json['post'] as String?,
      message: json['message'] as String?,
      date: json['date'] as String?,
      userAuthor: (json['UserAuthor'] as List<dynamic>?)
          ?.map((e) => ProfileResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      authorType: json['authorType'] as String?,
      animalAuthor: (json['Animalauthor'] as List<dynamic>?)
          ?.map((e) => AnimalAuthorResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FeedPostInnerCommentResponseToJson(
        _$_FeedPostInnerCommentResponse instance) =>
    <String, dynamic>{
      'post': instance.postId,
      'message': instance.message,
      'date': instance.date,
      'UserAuthor': instance.userAuthor,
      'authorType': instance.authorType,
      'Animalauthor': instance.animalAuthor,
    };

_$_AuthorDetailsResponse _$$_AuthorDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AuthorDetailsResponse(
      authorDetails: json['authorDetails'] as String?,
      authorId: json['authorId'] as String?,
    );

Map<String, dynamic> _$$_AuthorDetailsResponseToJson(
        _$_AuthorDetailsResponse instance) =>
    <String, dynamic>{
      'authorDetails': instance.authorDetails,
      'authorId': instance.authorId,
    };

_$_AnimalAuthorResponse _$$_AnimalAuthorResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AnimalAuthorResponse(
      Id: json['_id'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_AnimalAuthorResponseToJson(
        _$_AnimalAuthorResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'name': instance.name,
      'avatar': instance.avatar,
    };
