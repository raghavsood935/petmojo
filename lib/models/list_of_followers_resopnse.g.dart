// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_followers_resopnse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfFollowersResponse _$$_ListOfFollowersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListOfFollowersResponse(
      listOfFollowers: (json['followers'] as List<dynamic>?)
          ?.map((e) => FollowersResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOfFollowersResponseToJson(
        _$_ListOfFollowersResponse instance) =>
    <String, dynamic>{
      'followers': instance.listOfFollowers,
    };

_$_FollowersResponse _$$_FollowersResponseFromJson(Map<String, dynamic> json) =>
    _$_FollowersResponse(
      followersDetailsResponse: json['followerDetails'] == null
          ? null
          : FollowersDetailsResponse.fromJson(
              json['followerDetails'] as Map<String, dynamic>),
      isFollowing: json['isFollowing'] as int?,
    );

Map<String, dynamic> _$$_FollowersResponseToJson(
        _$_FollowersResponse instance) =>
    <String, dynamic>{
      'followerDetails': instance.followersDetailsResponse,
      'isFollowing': instance.isFollowing,
    };

_$_FollowersDetailsResponse _$$_FollowersDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FollowersDetailsResponse(
      followersInnerDetailsResponse: json['followerId'] == null
          ? null
          : FollowersInnerDetailsResponse.fromJson(
              json['followerId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FollowersDetailsResponseToJson(
        _$_FollowersDetailsResponse instance) =>
    <String, dynamic>{
      'followerId': instance.followersInnerDetailsResponse,
    };

_$_FollowersInnerDetailsResponse _$$_FollowersInnerDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FollowersInnerDetailsResponse(
      Id: json['_id'] as String?,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      fullName: json['fullName'] as String?,
    );

Map<String, dynamic> _$$_FollowersInnerDetailsResponseToJson(
        _$_FollowersInnerDetailsResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'username': instance.username,
      'avatar': instance.avatar,
      'fullName': instance.fullName,
    };
