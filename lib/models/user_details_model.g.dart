// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetailsModelResponse _$$_UserDetailsModelResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserDetailsModelResponse(
      private: json['private'] as bool?,
      confirmed: json['confirmed'] as bool?,
      Id: json['_id'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      bio: json['bio'] as String?,
      fullName: json['fullName'] as String?,
      listOfPets: (json['pets'] as List<dynamic>?)
          ?.map((e) =>
              PetBasicDetailsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserDetailsModelResponseToJson(
        _$_UserDetailsModelResponse instance) =>
    <String, dynamic>{
      'private': instance.private,
      'confirmed': instance.confirmed,
      '_id': instance.Id,
      'email': instance.email,
      'username': instance.username,
      'avatar': instance.avatar,
      'bio': instance.bio,
      'fullName': instance.fullName,
      'pets': instance.listOfPets,
    };
