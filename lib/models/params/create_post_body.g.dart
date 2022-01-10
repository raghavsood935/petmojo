// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePostBody _$CreatePostBodyFromJson(Map<String, dynamic> json) =>
    CreatePostBody(
      json['caption'] as String,
      json['filter'] as String,
      json['Userauthor'] as String,
      json['authorType'] as String,
      json['image'] as String,
      json['thumbnail'] as String,
      json['Animalauthor'] as String,
      json['group'] as String,
    );

Map<String, dynamic> _$CreatePostBodyToJson(CreatePostBody instance) =>
    <String, dynamic>{
      'caption': instance.caption,
      'filter': instance.filter,
      'Userauthor': instance.Userauthor,
      'authorType': instance.authorType,
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'Animalauthor': instance.Animalauthor,
      'group': instance.group,
    };
