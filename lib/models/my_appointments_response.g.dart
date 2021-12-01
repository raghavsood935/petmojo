// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_appointments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyAppointmentsResponse _$$_MyAppointmentsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MyAppointmentsResponse(
      appointmentsList: (json['serviceList'] as List<dynamic>?)
          ?.map((e) =>
              AppointmentListResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MyAppointmentsResponseToJson(
        _$_MyAppointmentsResponse instance) =>
    <String, dynamic>{
      'serviceList': instance.appointmentsList,
    };

_$_AppointmentListResponse _$$_AppointmentListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AppointmentListResponse(
      petDetails: (json['petDetails'] as List<dynamic>?)
          ?.map((e) => PetDetailsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookingStatus: json['bookingStatus'] as int?,
      serviceType: json['serviceType'] as int?,
      appointmentId: json['_id'] as String?,
      user: json['ServiceProvider'] == null
          ? null
          : UserDetailsResponse.fromJson(
              json['ServiceProvider'] as Map<String, dynamic>),
      bookingDetails: json['bookingDetails'] == null
          ? null
          : BookingDetailsResponse.fromJson(
              json['bookingDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppointmentListResponseToJson(
        _$_AppointmentListResponse instance) =>
    <String, dynamic>{
      'petDetails': instance.petDetails,
      'bookingStatus': instance.bookingStatus,
      'serviceType': instance.serviceType,
      '_id': instance.appointmentId,
      'ServiceProvider': instance.user,
      'bookingDetails': instance.bookingDetails,
    };

_$_UserDetailsResponse _$$_UserDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserDetailsResponse(
      userId: json['_id'] as String?,
      username: json['username'] as String?,
      fullName: json['fullName'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_UserDetailsResponseToJson(
        _$_UserDetailsResponse instance) =>
    <String, dynamic>{
      '_id': instance.userId,
      'username': instance.username,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
    };

_$_BookingDetailsResponse _$$_BookingDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BookingDetailsResponse(
      package: json['package'] == null
          ? null
          : PackageResponse.fromJson(json['package'] as Map<String, dynamic>),
      bookingId: json['_id'] as String?,
      run1Time: json['run1'] as String?,
      run2Time: json['run2'] as String?,
      startDate: json['startDate'] as String?,
    );

Map<String, dynamic> _$$_BookingDetailsResponseToJson(
        _$_BookingDetailsResponse instance) =>
    <String, dynamic>{
      'package': instance.package,
      '_id': instance.bookingId,
      'run1': instance.run1Time,
      'run2': instance.run2Time,
      'startDate': instance.startDate,
    };

_$_PackageResponse _$$_PackageResponseFromJson(Map<String, dynamic> json) =>
    _$_PackageResponse(
      subscriptionType: json['description'] as String?,
      amount: json['amount'] as String?,
      numberOfDays: json['frequency'] as int?,
      numberOfTimes: json['dayfrequency'] as int?,
    );

Map<String, dynamic> _$$_PackageResponseToJson(_$_PackageResponse instance) =>
    <String, dynamic>{
      'description': instance.subscriptionType,
      'amount': instance.amount,
      'frequency': instance.numberOfDays,
      'dayfrequency': instance.numberOfTimes,
    };

_$_PetDetailsResponse _$$_PetDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PetDetailsResponse(
      petId: json['_id'] as String?,
      petName: json['name'] as String?,
      petUserName: json['username'] as String?,
    );

Map<String, dynamic> _$$_PetDetailsResponseToJson(
        _$_PetDetailsResponse instance) =>
    <String, dynamic>{
      '_id': instance.petId,
      'name': instance.petName,
      'username': instance.petUserName,
    };
