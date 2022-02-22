// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reorder_a_run_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReorderARunResponse _$$_ReorderARunResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ReorderARunResponse(
      success: json['success'] as bool?,
      newBookingId: json['bookingId'] as String?,
      newAmount: json['amount'] as String?,
    );

Map<String, dynamic> _$$_ReorderARunResponseToJson(
        _$_ReorderARunResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'bookingId': instance.newBookingId,
      'amount': instance.newAmount,
    };
