// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_details_by_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDetailsByIdResponse _$$_ProfileDetailsByIdResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileDetailsByIdResponse(
      user: json['user'] == null
          ? null
          : UserDetailsModelResponse.fromJson(
              json['user'] as Map<String, dynamic>),
      totalFollowers: json['totalFollowers'] as int?,
      totalFollowings: json['totalFollowings'] as int?,
      totalLikes: json['totalLikes'] as int?,
      totalPosts: json['totalPosts'] as int?,
    );

Map<String, dynamic> _$$_ProfileDetailsByIdResponseToJson(
        _$_ProfileDetailsByIdResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
      'totalFollowers': instance.totalFollowers,
      'totalFollowings': instance.totalFollowings,
      'totalLikes': instance.totalLikes,
      'totalPosts': instance.totalPosts,
    };
