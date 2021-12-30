// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_pending_requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfPendingRequestsResponse _$$_ListOfPendingRequestsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListOfPendingRequestsResponse(
      listOfPendingRequests: (json['pendingRequests'] as List<dynamic>?)
          ?.map(
              (e) => AnimalProfileResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOfPendingRequestsResponseToJson(
        _$_ListOfPendingRequestsResponse instance) =>
    <String, dynamic>{
      'pendingRequests': instance.listOfPendingRequests,
    };
