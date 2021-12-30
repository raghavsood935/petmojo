// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostResponse _$$_PostResponseFromJson(Map<String, dynamic> json) =>
    _$_PostResponse(
      Id: json['_id'] as String?,
      hashtags: (json['hashtags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      image: json['image'] as String?,
      thumbnail: json['thumbnail'] as String?,
      filter: json['filter'] as String?,
      caption: json['caption'] as String?,
      author: json['author'] as String?,
      postOwnerDetailsResponse: json['postOwnerDetails'] == null
          ? null
          : PostOwnerDetailsResponse.fromJson(
              json['postOwnerDetails'] as Map<String, dynamic>),
      date: json['date'] as String?,
      v: json['__v'] as int?,
      totalVotes: json['totalVotes'] as int?,
      totalComments: json['totalComments'] as int?,
    );

Map<String, dynamic> _$$_PostResponseToJson(_$_PostResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'hashtags': instance.hashtags,
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'filter': instance.filter,
      'caption': instance.caption,
      'author': instance.author,
      'postOwnerDetails': instance.postOwnerDetailsResponse,
      'date': instance.date,
      '__v': instance.v,
      'totalVotes': instance.totalVotes,
      'totalComments': instance.totalComments,
    };
