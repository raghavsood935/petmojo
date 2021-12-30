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
      followingDetailsResponse: json['followingDetails'] == null
          ? null
          : FollowingDetailsResponse.fromJson(
              json['followingDetails'] as Map<String, dynamic>),
      followingType: json['followingType'] as String?,
    );

Map<String, dynamic> _$$_FollowingResponseToJson(
        _$_FollowingResponse instance) =>
    <String, dynamic>{
      'followingDetails': instance.followingDetailsResponse,
      'followingType': instance.followingType,
    };

_$_FollowingDetailsResponse _$$_FollowingDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FollowingDetailsResponse(
      followingInnerDetailsResponse: json['followingId'] == null
          ? null
          : FollowingInnerDetailsResponse.fromJson(
              json['followingId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FollowingDetailsResponseToJson(
        _$_FollowingDetailsResponse instance) =>
    <String, dynamic>{
      'followingId': instance.followingInnerDetailsResponse,
    };

_$_FollowingInnerDetailsResponse _$$_FollowingInnerDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FollowingInnerDetailsResponse(
      Id: json['_id'] as String?,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      fullName: json['fullName'] as String?,
    );

Map<String, dynamic> _$$_FollowingInnerDetailsResponseToJson(
        _$_FollowingInnerDetailsResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'username': instance.username,
      'avatar': instance.avatar,
      'fullName': instance.fullName,
    };
