// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_relations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfRelationsResponse _$$_ListOfRelationsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListOfRelationsResponse(
      listOfRelations: (json['relatives'] as List<dynamic>?)
          ?.map((e) => RelationsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOfRelationsResponseToJson(
        _$_ListOfRelationsResponse instance) =>
    <String, dynamic>{
      'relatives': instance.listOfRelations,
    };

_$_RelationsResponse _$$_RelationsResponseFromJson(Map<String, dynamic> json) =>
    _$_RelationsResponse(
      confirmed: json['confirmed'] as bool?,
      relation: json['relation'] as String?,
      animal: json['animal'] == null
          ? null
          : AnimalProfileResponse.fromJson(
              json['animal'] as Map<String, dynamic>),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_RelationsResponseToJson(
        _$_RelationsResponse instance) =>
    <String, dynamic>{
      'confirmed': instance.confirmed,
      'relation': instance.relation,
      'animal': instance.animal,
      'status': instance.status,
    };
