// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_followings_resopnse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfFollowingsResponse _$$_ListOfFollowingsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListOfFollowingsResponse(
      listOfFollowings: (json['following'] as List<dynamic>?)
          ?.map((e) => FollowingResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOfFollowingsResponseToJson(
        _$_ListOfFollowingsResponse instance) =>
    <String, dynamic>{
      'following': instance.listOfFollowings,
    };

_$_FollowingResponse _$$_FollowingResponseFromJson(Map<String, dynamic> json) =>
    _$_FollowingResponse(
      followersDetailsResponse: json['followerDetails'] == null
          ? null
          : FollowingDetailsResponse.fromJson(
              json['followerDetails'] as Map<String, dynamic>),
      isFollowing: json['followingType'] as int?,
    );

Map<String, dynamic> _$$_FollowingResponseToJson(
        _$_FollowingResponse instance) =>
    <String, dynamic>{
      'followerDetails': instance.followersDetailsResponse,
      'followingType': instance.isFollowing,
    };

_$_FollowingDetailsResponse _$$_FollowingDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FollowingDetailsResponse(
      Id: json['_id'] as String?,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      fullName: json['fullName'] as String?,
    );

Map<String, dynamic> _$$_FollowingDetailsResponseToJson(
        _$_FollowingDetailsResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'username': instance.username,
      'avatar': instance.avatar,
      'fullName': instance.fullName,
    };
