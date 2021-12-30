// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_pending_relation_requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfRelationsRequestResponse _$$_ListOfRelationsRequestResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListOfRelationsRequestResponse(
      listOfRelationRequests:
          (json['pendingIncomingRequests'] as List<dynamic>?)
              ?.map((e) =>
                  RelationRequestResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_ListOfRelationsRequestResponseToJson(
        _$_ListOfRelationsRequestResponse instance) =>
    <String, dynamic>{
      'pendingIncomingRequests': instance.listOfRelationRequests,
    };

_$_RelationRequestResponse _$$_RelationRequestResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RelationRequestResponse(
      confirmed: json['confirmed'] as bool?,
      relation: json['relation'] as String?,
      Id: json['_id'] as String?,
      animalProfile: json['animal'] == null
          ? null
          : AnimalProfileResponse.fromJson(
              json['animal'] as Map<String, dynamic>),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_RelationRequestResponseToJson(
        _$_RelationRequestResponse instance) =>
    <String, dynamic>{
      'confirmed': instance.confirmed,
      'relation': instance.relation,
      '_id': instance.Id,
      'animal': instance.animalProfile,
      'status': instance.status,
    };
