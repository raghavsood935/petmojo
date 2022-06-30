// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_appointment_details_response.dart';

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
      bookingDetails: json['bookingDetails'] == null
          ? null
          : GetBookingDetailsResponse.fromJson(
              json['bookingDetails'] as Map<String, dynamic>),
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
      'bookingDetails': instance.bookingDetails,
    };

_$_GetBookingDetailsResponse _$$_GetBookingDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetBookingDetailsResponse(
      petBehaviour: json['petBehaviour'] == null
          ? null
          : PetBehaviourResponse.fromJson(
              json['petBehaviour'] as Map<String, dynamic>),
      petRunningLocation: json['petRunningLocation'] == null
          ? null
          : LocationResponse.fromJson(
              json['petRunningLocation'] as Map<String, dynamic>),
      package: json['package'] == null
          ? null
          : DogRunningPackageResponse.fromJson(
              json['package'] as Map<String, dynamic>),
      numberOfPets: json['numberOfPets'] as int?,
      petDetails: (json['petDetails'] as List<dynamic>?)
          ?.map((e) => PetSizeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      specialInstructions: json['specialInstructions'] as String?,
      phone: json['phone'] as String?,
      run1Time: json['run1'] as String?,
      run2Time: json['run2'] as String?,
      startDate: json['startDate'] as String?,
      daysOff: (json['dayOff'] as List<dynamic>?)
          ?.map((e) => DayOffResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      runDetails: (json['runDetails'] as List<dynamic>?)
          ?.map((e) => runDetailsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetBookingDetailsResponseToJson(
        _$_GetBookingDetailsResponse instance) =>
    <String, dynamic>{
      'petBehaviour': instance.petBehaviour,
      'petRunningLocation': instance.petRunningLocation,
      'package': instance.package,
      'numberOfPets': instance.numberOfPets,
      'petDetails': instance.petDetails,
      'specialInstructions': instance.specialInstructions,
      'phone': instance.phone,
      'run1': instance.run1Time,
      'run2': instance.run2Time,
      'startDate': instance.startDate,
      'dayOff': instance.daysOff,
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

_$_DayOffResponse _$$_DayOffResponseFromJson(Map<String, dynamic> json) =>
    _$_DayOffResponse(
      off: json['off'] as String?,
    );

Map<String, dynamic> _$$_DayOffResponseToJson(_$_DayOffResponse instance) =>
    <String, dynamic>{
      'off': instance.off,
    };

_$_runDetailsResponse _$$_runDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_runDetailsResponse(
      run2Status: json['run2Status'] as int?,
      run1Status: json['run1Status'] as int?,
      runDate: json['runDate'] as String?,
    );

Map<String, dynamic> _$$_runDetailsResponseToJson(
        _$_runDetailsResponse instance) =>
    <String, dynamic>{
      'run2Status': instance.run2Status,
      'run1Status': instance.run1Status,
      'runDate': instance.runDate,
    };

_$_PetSizeResponse _$$_PetSizeResponseFromJson(Map<String, dynamic> json) =>
    _$_PetSizeResponse(
      size: json['size'] as String?,
    );

Map<String, dynamic> _$$_PetSizeResponseToJson(_$_PetSizeResponse instance) =>
    <String, dynamic>{
      'size': instance.size,
    };

_$_PetBehaviourResponse _$$_PetBehaviourResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PetBehaviourResponse(
      petBehaviourOne: json['pullsOnTheLeash'] as bool?,
      petBehaviourTwo: json['likeInteractingWithOtherDogsOrPeople'] as bool?,
      petBehaviourThree: json['jumpsUpOnPeopleAndThings'] as bool?,
      petBehaviourFour: json['chaseSmallerAnimals'] as bool?,
      petBehaviourFive: json['protectiveOfHome'] as bool?,
    );

Map<String, dynamic> _$$_PetBehaviourResponseToJson(
        _$_PetBehaviourResponse instance) =>
    <String, dynamic>{
      'pullsOnTheLeash': instance.petBehaviourOne,
      'likeInteractingWithOtherDogsOrPeople': instance.petBehaviourTwo,
      'jumpsUpOnPeopleAndThings': instance.petBehaviourThree,
      'chaseSmallerAnimals': instance.petBehaviourFour,
      'protectiveOfHome': instance.petBehaviourFive,
    };
