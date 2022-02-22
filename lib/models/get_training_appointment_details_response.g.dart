// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_training_appointment_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAppointmentDetailsResponse _$$_GetAppointmentDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetAppointmentDetailsResponse(
      petDetails: (json['petDetails'] as List<dynamic>?)
          ?.map((e) => PetDetailsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookingStatus: json['bookingStatus'] as int?,
      serviceStatus: json['serviceStatus'] as int?,
      hasTestimony: json['israted'] as bool?,
      serviceType: json['serviceType'] as int?,
      appointmentId: json['_id'] as String?,
      userId: json['User'] as String?,
      partner: json['ServiceProvider'] == null
          ? null
          : UserDetailsResponse.fromJson(
              json['ServiceProvider'] as Map<String, dynamic>),
      bookingDetails: json['DogTrainingbookingDetails'] == null
          ? null
          : GetTrainingBookingDetailsResponse.fromJson(
              json['DogTrainingbookingDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetAppointmentDetailsResponseToJson(
        _$_GetAppointmentDetailsResponse instance) =>
    <String, dynamic>{
      'petDetails': instance.petDetails,
      'bookingStatus': instance.bookingStatus,
      'serviceStatus': instance.serviceStatus,
      'israted': instance.hasTestimony,
      'serviceType': instance.serviceType,
      '_id': instance.appointmentId,
      'User': instance.userId,
      'ServiceProvider': instance.partner,
      'DogTrainingbookingDetails': instance.bookingDetails,
    };

_$_GetBookingDetailsResponse _$$_GetBookingDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetBookingDetailsResponse(
      petRunningLocation: json['petRunningLocation'] == null
          ? null
          : LocationResponse.fromJson(
              json['petRunningLocation'] as Map<String, dynamic>),
      package: json['package'] == null
          ? null
          : TrainingPackageResponse.fromJson(
              json['package'] as Map<String, dynamic>),
      numberOfPets: json['numberOfPets'] as int?,
      startDate: json['startDate'] as String?,
    );

Map<String, dynamic> _$$_GetBookingDetailsResponseToJson(
        _$_GetBookingDetailsResponse instance) =>
    <String, dynamic>{
      'petRunningLocation': instance.petRunningLocation,
      'package': instance.package,
      'numberOfPets': instance.numberOfPets,
      'startDate': instance.startDate,
    };

_$_LocationResponse _$$_LocationResponseFromJson(Map<String, dynamic> json) =>
    _$_LocationResponse(
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      pinCode: json['pinCode'] as String?,
    );

Map<String, dynamic> _$$_LocationResponseToJson(_$_LocationResponse instance) =>
    <String, dynamic>{
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'state': instance.state,
      'city': instance.city,
      'pinCode': instance.pinCode,
    };

_$_PackageResponse _$$_PackageResponseFromJson(Map<String, dynamic> json) =>
    _$_PackageResponse(
      subscriptionType: json['description'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      numberOfSessions: json['frequency'] as int?,
    );

Map<String, dynamic> _$$_PackageResponseToJson(_$_PackageResponse instance) =>
    <String, dynamic>{
      'description': instance.subscriptionType,
      'amount': instance.amount,
      'frequency': instance.numberOfSessions,
    };
