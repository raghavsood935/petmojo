// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfNotificationResponse _$$_ListOfNotificationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListOfNotificationResponse(
      listOfNotification: (json['notifications'] as List<dynamic>?)
          ?.map((e) => NotificationResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOfNotificationResponseToJson(
        _$_ListOfNotificationResponse instance) =>
    <String, dynamic>{
      'notifications': instance.listOfNotification,
    };

_$_NotificationResponse _$$_NotificationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationResponse(
      Id: json['_id'] as String?,
      read: json['read'] as bool?,
      userReceiverResponse: (json['Userreceiver'] as List<dynamic>?)
          ?.map((e) => UserReceiverResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      notificationType: json['notificationType'] as String?,
      date: json['date'] as String?,
      notificationDataResponse: json['notificationData'] == null
          ? null
          : NotificationDataResponse.fromJson(
              json['notificationData'] as Map<String, dynamic>),
      senderUserResponse: (json['senderUser'] as List<dynamic>?)
          ?.map((e) => SenderUserResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      senderAnimalResponse: (json['senderAnimal'] as List<dynamic>?)
          ?.map((e) => SenderUserResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      animalReceiverResponse: (json['Animalreciever'] as List<dynamic>?)
          ?.map((e) => UserReceiverResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NotificationResponseToJson(
        _$_NotificationResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'read': instance.read,
      'Userreceiver': instance.userReceiverResponse,
      'notificationType': instance.notificationType,
      'date': instance.date,
      'notificationData': instance.notificationDataResponse,
      'senderUser': instance.senderUserResponse,
      'senderAnimal': instance.senderAnimalResponse,
      'Animalreciever': instance.animalReceiverResponse,
    };

_$_UserReceiverResponse _$$_UserReceiverResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserReceiverResponse(
      Id: json['_id'] as String?,
    );

Map<String, dynamic> _$$_UserReceiverResponseToJson(
        _$_UserReceiverResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
    };

_$_SenderUserResponse _$$_SenderUserResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SenderUserResponse(
      Id: json['_id'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$_SenderUserResponseToJson(
        _$_SenderUserResponse instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'username': instance.username,
    };

_$_NotificationDataResponse _$$_NotificationDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationDataResponse(
      postId: json['postId'] as String?,
      image: json['image'] as String?,
      message: json['message'] as String?,
      body: json['body'] as String?,
      textOnCTA: json['textOnCTA'] as String?,
      actionOnCTA: json['actionOnCTA'] as String?,
      icon: json['icon'] as String?,
      valueForCTA: json['valueForCTA'] as String?,
      walkNo: json['walkNumber'] as String?,
      serviceProviderId: json['serviceProviderId'] as String?,
      userId: json['userId'] as String?,
      appointmentId: json['appointmentId'] as String?,
      bookingDetailsId: json['bookingDetailsId'] as String?,
      sessionNo: json['sessionNo'] as int?,
      dogs: (json['dogs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      noOfDogs: json['noOfDogs'] as int?,
      date: json['date'] as int?,
    );

Map<String, dynamic> _$$_NotificationDataResponseToJson(
        _$_NotificationDataResponse instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'image': instance.image,
      'message': instance.message,
      'body': instance.body,
      'textOnCTA': instance.textOnCTA,
      'actionOnCTA': instance.actionOnCTA,
      'icon': instance.icon,
      'valueForCTA': instance.valueForCTA,
      'walkNumber': instance.walkNo,
      'serviceProviderId': instance.serviceProviderId,
      'userId': instance.userId,
      'appointmentId': instance.appointmentId,
      'bookingDetailsId': instance.bookingDetailsId,
      'sessionNo': instance.sessionNo,
      'dogs': instance.dogs,
      'noOfDogs': instance.noOfDogs,
      'date': instance.date,
    };
