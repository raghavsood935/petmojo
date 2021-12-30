// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileDetailsResponse _$$_UserProfileDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserProfileDetailsResponse(
      userDetailsModel: json['user_details'] == null
          ? null
          : UserDetailsModelResponse.fromJson(
              json['user_details'] as Map<String, dynamic>),
      totalFollowers: json['totalFollowers'] as int?,
      totalFollowings: json['totalFollowings'] as int?,
      totalLikes: json['totalLikes'] as int?,
      totalPosts: json['totalPosts'] as int?,
    );

Map<String, dynamic> _$$_UserProfileDetailsResponseToJson(
        _$_UserProfileDetailsResponse instance) =>
    <String, dynamic>{
      'user_details': instance.userDetailsModel,
      'totalFollowers': instance.totalFollowers,
      'totalFollowings': instance.totalFollowings,
      'totalLikes': instance.totalLikes,
      'totalPosts': instance.totalPosts,
    };
