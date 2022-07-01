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
      user: json['User'] == null
          ? null
          : UserDetailsResponse.fromJson(json['User'] as Map<String, dynamic>),
      partner: json['ServiceProvider'] == null
          ? null
          : UserDetailsResponse.fromJson(
              json['ServiceProvider'] as Map<String, dynamic>),
      bookingDetails: json['DogTrainingbookingDetails'] == null
          ? null
          : GetTrainingBookingDetailsResponse.fromJson(
              json['DogTrainingbookingDetails'] as Map<String, dynamic>),
      index: json['index'] as int?,
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
      'User': instance.user,
      'ServiceProvider': instance.partner,
      'DogTrainingbookingDetails': instance.bookingDetails,
      'index': instance.index,
    };

_$_GetBookingDetailsResponse _$$_GetBookingDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetBookingDetailsResponse(
      petRunningLocation: json['petRunningLocation'] == null
          ? null
          : LocationResponse.fromJson(
              json['petRunningLocation'] as Map<String, dynamic>),
      paymentDetails: json['paymentDetails'] == null
          ? null
          : PaymentDetailsResponse.fromJson(
              json['paymentDetails'] as Map<String, dynamic>),
      package: json['package'] == null
          ? null
          : TrainingPackageResponse.fromJson(
              json['package'] as Map<String, dynamic>),
      numberOfPets: json['numberOfPets'] as int?,
      startDate: json['startDate'] as String?,
      runDetails: (json['runDetails'] as List<dynamic>?)
          ?.map((e) => trainDetailsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetBookingDetailsResponseToJson(
        _$_GetBookingDetailsResponse instance) =>
    <String, dynamic>{
      'petRunningLocation': instance.petRunningLocation,
      'paymentDetails': instance.paymentDetails,
      'package': instance.package,
      'numberOfPets': instance.numberOfPets,
      'startDate': instance.startDate,
      'runDetails': instance.runDetails,
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

_$_trainDetailsResponse _$$_trainDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_trainDetailsResponse(
      sessionNo: json['sessionNo'] as int?,
      sessionStatus: json['sessionStatus'] as int?,
    );

Map<String, dynamic> _$$_trainDetailsResponseToJson(
        _$_trainDetailsResponse instance) =>
    <String, dynamic>{
      'sessionNo': instance.sessionNo,
      'sessionStatus': instance.sessionStatus,
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

_$_PaymentDetailsResponse _$$_PaymentDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentDetailsResponse(
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PaymentDetailsResponseToJson(
        _$_PaymentDetailsResponse instance) =>
    <String, dynamic>{
      'amount': instance.amount,
    };
