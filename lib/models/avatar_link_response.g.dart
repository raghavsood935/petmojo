// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_link_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AvatarLinkResponse _$$_AvatarLinkResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AvatarLinkResponse(
      avatarLinkInnerResponse: json['avatarLink'] == null
          ? null
          : AvatarLinkInnerResponse.fromJson(
              json['avatarLink'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AvatarLinkResponseToJson(
        _$_AvatarLinkResponse instance) =>
    <String, dynamic>{
      'avatarLink': instance.avatarLinkInnerResponse,
    };

_$_AvatarLinkInnerResponse _$$_AvatarLinkInnerResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AvatarLinkInnerResponse(
      image: json['image'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_AvatarLinkInnerResponseToJson(
        _$_AvatarLinkInnerResponse instance) =>
    <String, dynamic>{
      'image': instance.image,
      'thumbnail': instance.thumbnail,
    };
