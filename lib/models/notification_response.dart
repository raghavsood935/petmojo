import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_response.freezed.dart';
part 'notification_response.g.dart';

@freezed
class ListOfNotificationResponse with _$ListOfNotificationResponse {
  ListOfNotificationResponse._();

  factory ListOfNotificationResponse({
    @JsonKey(name: "notifications")
        List<NotificationResponse>? listOfNotification,
  }) = _ListOfNotificationResponse;

  factory ListOfNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$ListOfNotificationResponseFromJson(json);
}

@freezed
class NotificationResponse with _$NotificationResponse {
  NotificationResponse._();

  factory NotificationResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "read") bool? read,
    @JsonKey(name: "Userreceiver")
        List<UserReceiverResponse>? userReceiverResponse,
    @JsonKey(name: "notificationType") String? notificationType,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "notificationData")
        NotificationDataResponse? notificationDataResponse,
    @JsonKey(name: "senderUser") List<SenderUserResponse>? senderUserResponse,
    @JsonKey(name: "senderAnimal")
        List<SenderUserResponse>? senderAnimalResponse,
    @JsonKey(name: "Animalreciever")
        List<UserReceiverResponse>? animalReceiverResponse,
  }) = _NotificationResponse;

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);
}

@freezed
class UserReceiverResponse with _$UserReceiverResponse {
  UserReceiverResponse._();

  factory UserReceiverResponse({
    @JsonKey(name: "_id") String? Id,
  }) = _UserReceiverResponse;

  factory UserReceiverResponse.fromJson(Map<String, dynamic> json) =>
      _$UserReceiverResponseFromJson(json);
}

@freezed
class SenderUserResponse with _$SenderUserResponse {
  SenderUserResponse._();

  factory SenderUserResponse({
    @JsonKey(name: "_id") String? Id,
    @JsonKey(name: "username") String? username,
  }) = _SenderUserResponse;

  factory SenderUserResponse.fromJson(Map<String, dynamic> json) =>
      _$SenderUserResponseFromJson(json);
}

@freezed
class NotificationDataResponse with _$NotificationDataResponse {
  NotificationDataResponse._();

  factory NotificationDataResponse({
    @JsonKey(name: "postId") String? postId,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "message") String? message,
  }) = _NotificationDataResponse;

  factory NotificationDataResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataResponseFromJson(json);
}
