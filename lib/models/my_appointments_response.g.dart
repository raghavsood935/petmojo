// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_appointments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyAppointmentsResponse _$$_MyAppointmentsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MyAppointmentsResponse(
      dogRunningAppointmentsList: (json['serviceList'] as List<dynamic>?)
          ?.map((e) => DogRunningAppointmentListResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      dogTrainingAppointmentsList: (json['Traininglist'] as List<dynamic>?)
          ?.map((e) => DogTrainingAppointmentListResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      dogGroomingAppointmentsList: (json['Groominglist'] as List<dynamic>?)
          ?.map((e) => DogGroomingAppointmentListResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MyAppointmentsResponseToJson(
        _$_MyAppointmentsResponse instance) =>
    <String, dynamic>{
      'serviceList': instance.dogRunningAppointmentsList,
      'Traininglist': instance.dogTrainingAppointmentsList,
      'Groominglist': instance.dogGroomingAppointmentsList,
    };

_$_DogTrainingAppointmentListResponse
    _$$_DogTrainingAppointmentListResponseFromJson(Map<String, dynamic> json) =>
        _$_DogTrainingAppointmentListResponse(
          petDetails: (json['petDetails'] as List<dynamic>?)
              ?.map(
                  (e) => PetDetailsResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
          bookingStatus: json['bookingStatus'] as int?,
          serviceType: json['serviceType'] as int?,
          appointmentId: json['_id'] as String?,
          user: json['ServiceProvider'] == null
              ? null
              : UserDetailsResponse.fromJson(
                  json['ServiceProvider'] as Map<String, dynamic>),
          bookingDetails: json['DogTrainingbookingDetails'] == null
              ? null
              : DogTrainingBookingDetailsResponse.fromJson(
                  json['DogTrainingbookingDetails'] as Map<String, dynamic>),
          sessionsLeft: json['sessionsLeft'] as int?,
          isReorderDone: json['isReorderDone'] as bool?,
          createdAt: json['createdAt'] as String?,
          sessionsCompleted: json['sessionsCompleted'] as int?,
        );

Map<String, dynamic> _$$_DogTrainingAppointmentListResponseToJson(
        _$_DogTrainingAppointmentListResponse instance) =>
    <String, dynamic>{
      'petDetails': instance.petDetails,
      'bookingStatus': instance.bookingStatus,
      'serviceType': instance.serviceType,
      '_id': instance.appointmentId,
      'ServiceProvider': instance.user,
      'DogTrainingbookingDetails': instance.bookingDetails,
      'sessionsLeft': instance.sessionsLeft,
      'isReorderDone': instance.isReorderDone,
      'createdAt': instance.createdAt,
      'sessionsCompleted': instance.sessionsCompleted,
    };

_$_DogGroomingAppointmentListResponse
    _$$_DogGroomingAppointmentListResponseFromJson(Map<String, dynamic> json) =>
        _$_DogGroomingAppointmentListResponse(
          appointmentId: json['_id'] as String?,
          petDetails: (json['petDetails'] as List<dynamic>?)
              ?.map(
                  (e) => PetDetailsResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
          bookingStatus: json['bookingStatus'] as int?,
          serviceStatus: json['serviceStatus'] as int?,
          isRated: json['isRated'] as bool?,
          serviceType: json['serviceType'] as int?,
          userId: json['User'] as String?,
          bookingDetails: json['DogGroomingbookingDetails'] == null
              ? null
              : DogGroomingBookingDetailsResponse.fromJson(
                  json['DogGroomingbookingDetails'] as Map<String, dynamic>),
          amount: json['amount'] as int?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          v: json['__v'] as int?,
          user: json['ServiceProvider'] == null
              ? null
              : UserDetailsResponse.fromJson(
                  json['ServiceProvider'] as Map<String, dynamic>),
          isReorderDone: json['isReorderDone'] as bool?,
        );

Map<String, dynamic> _$$_DogGroomingAppointmentListResponseToJson(
        _$_DogGroomingAppointmentListResponse instance) =>
    <String, dynamic>{
      '_id': instance.appointmentId,
      'petDetails': instance.petDetails,
      'bookingStatus': instance.bookingStatus,
      'serviceStatus': instance.serviceStatus,
      'isRated': instance.isRated,
      'serviceType': instance.serviceType,
      'User': instance.userId,
      'DogGroomingbookingDetails': instance.bookingDetails,
      'amount': instance.amount,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.v,
      'ServiceProvider': instance.user,
      'isReorderDone': instance.isReorderDone,
    };

_$_DogRunningAppointmentListResponse
    _$$_DogRunningAppointmentListResponseFromJson(Map<String, dynamic> json) =>
        _$_DogRunningAppointmentListResponse(
          petDetails: (json['petDetails'] as List<dynamic>?)
              ?.map(
                  (e) => PetDetailsResponse.fromJson(e as Map<String, dynamic>))
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
              : DogRunningBookingDetailsResponse.fromJson(
                  json['bookingDetails'] as Map<String, dynamic>),
          daysLeft: json['daysLeft'] as int?,
          isReorderDone: json['isReorderDone'] as bool?,
          createdAt: json['createdAt'] as String?,
          lastDate: json['lastDate'] as String?,
        );

Map<String, dynamic> _$$_DogRunningAppointmentListResponseToJson(
        _$_DogRunningAppointmentListResponse instance) =>
    <String, dynamic>{
      'petDetails': instance.petDetails,
      'bookingStatus': instance.bookingStatus,
      'serviceType': instance.serviceType,
      '_id': instance.appointmentId,
      'ServiceProvider': instance.user,
      'bookingDetails': instance.bookingDetails,
      'daysLeft': instance.daysLeft,
      'isReorderDone': instance.isReorderDone,
      'createdAt': instance.createdAt,
      'lastDate': instance.lastDate,
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

_$_DogTrainingBookingDetailsResponse
    _$$_DogTrainingBookingDetailsResponseFromJson(Map<String, dynamic> json) =>
        _$_DogTrainingBookingDetailsResponse(
          package: json['package'] == null
              ? null
              : DogTrainingPackageResponse.fromJson(
                  json['package'] as Map<String, dynamic>),
          bookingId: json['_id'] as String?,
          startDate: json['startDate'] as String?,
        );

Map<String, dynamic> _$$_DogTrainingBookingDetailsResponseToJson(
        _$_DogTrainingBookingDetailsResponse instance) =>
    <String, dynamic>{
      'package': instance.package,
      '_id': instance.bookingId,
      'startDate': instance.startDate,
    };

_$_DogGroomingBookingDetailsResponse
    _$$_DogGroomingBookingDetailsResponseFromJson(Map<String, dynamic> json) =>
        _$_DogGroomingBookingDetailsResponse(
          bookingId: json['_id'] as String?,
          sessionDetails: json['sessionDetails'] == null
              ? null
              : DogGroomingSessionDetailsResponse.fromJson(
                  json['sessionDetails'] as Map<String, dynamic>),
          paymentDetails: json['paymentDetails'] == null
              ? null
              : DogGroomingPaymentDetailsResponse.fromJson(
                  json['paymentDetails'] as Map<String, dynamic>),
          numberOfPets: json['numberOfPets'] as int?,
          package: json['package'] == null
              ? null
              : DogGroomingPackageDetailsResponse.fromJson(
                  json['package'] as Map<String, dynamic>),
          startDate: json['startDate'] as String?,
        );

Map<String, dynamic> _$$_DogGroomingBookingDetailsResponseToJson(
        _$_DogGroomingBookingDetailsResponse instance) =>
    <String, dynamic>{
      '_id': instance.bookingId,
      'sessionDetails': instance.sessionDetails,
      'paymentDetails': instance.paymentDetails,
      'numberOfPets': instance.numberOfPets,
      'package': instance.package,
      'startDate': instance.startDate,
    };

_$_DogGroomingSessionDetailsResponse
    _$$_DogGroomingSessionDetailsResponseFromJson(Map<String, dynamic> json) =>
        _$_DogGroomingSessionDetailsResponse(
          sessionStatus: json['sessionStatus'] as int?,
          sessionTime: json['sessionTime'] as String?,
        );

Map<String, dynamic> _$$_DogGroomingSessionDetailsResponseToJson(
        _$_DogGroomingSessionDetailsResponse instance) =>
    <String, dynamic>{
      'sessionStatus': instance.sessionStatus,
      'sessionTime': instance.sessionTime,
    };

_$_DogGroomingPaymentDetailsResponse
    _$$_DogGroomingPaymentDetailsResponseFromJson(Map<String, dynamic> json) =>
        _$_DogGroomingPaymentDetailsResponse(
          paymentStatus: json['status'] as int?,
          amount: json['amount'] as int?,
          transactionId: json['transactionId'] as String?,
        );

Map<String, dynamic> _$$_DogGroomingPaymentDetailsResponseToJson(
        _$_DogGroomingPaymentDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.paymentStatus,
      'amount': instance.amount,
      'transactionId': instance.transactionId,
    };

_$_DogGroomingPackageDetailsResponse
    _$$_DogGroomingPackageDetailsResponseFromJson(Map<String, dynamic> json) =>
        _$_DogGroomingPackageDetailsResponse(
          description: json['description'] as String?,
          amount: json['amount'] as int?,
        );

Map<String, dynamic> _$$_DogGroomingPackageDetailsResponseToJson(
        _$_DogGroomingPackageDetailsResponse instance) =>
    <String, dynamic>{
      'description': instance.description,
      'amount': instance.amount,
    };

_$_DogRunningBookingDetailsResponse
    _$$_DogRunningBookingDetailsResponseFromJson(Map<String, dynamic> json) =>
        _$_DogRunningBookingDetailsResponse(
          package: json['package'] == null
              ? null
              : DogRunningPackageResponse.fromJson(
                  json['package'] as Map<String, dynamic>),
          bookingId: json['_id'] as String?,
          run1Time: json['run1'] as String?,
          run2Time: json['run2'] as String?,
          startDate: json['startDate'] as String?,
        );

Map<String, dynamic> _$$_DogRunningBookingDetailsResponseToJson(
        _$_DogRunningBookingDetailsResponse instance) =>
    <String, dynamic>{
      'package': instance.package,
      '_id': instance.bookingId,
      'run1': instance.run1Time,
      'run2': instance.run2Time,
      'startDate': instance.startDate,
    };

_$_DogTrainingPackageResponse _$$_DogTrainingPackageResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DogTrainingPackageResponse(
      subscriptionType: json['description'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      numberOfSessions: json['frequency'] as int?,
    );

Map<String, dynamic> _$$_DogTrainingPackageResponseToJson(
        _$_DogTrainingPackageResponse instance) =>
    <String, dynamic>{
      'description': instance.subscriptionType,
      'amount': instance.amount,
      'frequency': instance.numberOfSessions,
    };

_$_DogRunningPackageResponse _$$_DogRunningPackageResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DogRunningPackageResponse(
      subscriptionType: json['description'] as String?,
      amount: json['amount'] as String?,
      numberOfDays: json['frequency'] as int?,
      numberOfTimes: json['dayfrequency'] as int?,
    );

Map<String, dynamic> _$$_DogRunningPackageResponseToJson(
        _$_DogRunningPackageResponse instance) =>
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
