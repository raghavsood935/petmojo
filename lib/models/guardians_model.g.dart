// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardians_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuardiansModelResponse _$$_GuardiansModelResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GuardiansModelResponse(
      confirmed: json['confirmed'] as bool?,
      Id: json['_id'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$_GuardiansModelResponseToJson(
        _$_GuardiansModelResponse instance) =>
    <String, dynamic>{
      'confirmed': instance.confirmed,
      '_id': instance.Id,
      'user': instance.user,
    };
