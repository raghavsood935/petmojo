// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['_id'] as String?,
    email: json['email'] as String?,
    username: json['username'] as String?,
    fullName: json['fullName'] as String?,
    bio: json['bio'] as String?,
    website: json['website'] as String?,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      '_id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'fullName': instance.fullName,
      'bio': instance.bio,
      'website': instance.website,
    };
