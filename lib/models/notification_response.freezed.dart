// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfNotificationResponse _$ListOfNotificationResponseFromJson(
    Map<String, dynamic> json) {
  return _ListOfNotificationResponse.fromJson(json);
}

/// @nodoc
class _$ListOfNotificationResponseTearOff {
  const _$ListOfNotificationResponseTearOff();

  _ListOfNotificationResponse call(
      {@JsonKey(name: "notifications")
          List<NotificationResponse>? listOfNotification}) {
    return _ListOfNotificationResponse(
      listOfNotification: listOfNotification,
    );
  }

  ListOfNotificationResponse fromJson(Map<String, Object?> json) {
    return ListOfNotificationResponse.fromJson(json);
  }
}

/// @nodoc
const $ListOfNotificationResponse = _$ListOfNotificationResponseTearOff();

/// @nodoc
mixin _$ListOfNotificationResponse {
  @JsonKey(name: "notifications")
  List<NotificationResponse>? get listOfNotification =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfNotificationResponseCopyWith<ListOfNotificationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfNotificationResponseCopyWith<$Res> {
  factory $ListOfNotificationResponseCopyWith(ListOfNotificationResponse value,
          $Res Function(ListOfNotificationResponse) then) =
      _$ListOfNotificationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "notifications")
          List<NotificationResponse>? listOfNotification});
}

/// @nodoc
class _$ListOfNotificationResponseCopyWithImpl<$Res>
    implements $ListOfNotificationResponseCopyWith<$Res> {
  _$ListOfNotificationResponseCopyWithImpl(this._value, this._then);

  final ListOfNotificationResponse _value;
  // ignore: unused_field
  final $Res Function(ListOfNotificationResponse) _then;

  @override
  $Res call({
    Object? listOfNotification = freezed,
  }) {
    return _then(_value.copyWith(
      listOfNotification: listOfNotification == freezed
          ? _value.listOfNotification
          : listOfNotification // ignore: cast_nullable_to_non_nullable
              as List<NotificationResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListOfNotificationResponseCopyWith<$Res>
    implements $ListOfNotificationResponseCopyWith<$Res> {
  factory _$ListOfNotificationResponseCopyWith(
          _ListOfNotificationResponse value,
          $Res Function(_ListOfNotificationResponse) then) =
      __$ListOfNotificationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "notifications")
          List<NotificationResponse>? listOfNotification});
}

/// @nodoc
class __$ListOfNotificationResponseCopyWithImpl<$Res>
    extends _$ListOfNotificationResponseCopyWithImpl<$Res>
    implements _$ListOfNotificationResponseCopyWith<$Res> {
  __$ListOfNotificationResponseCopyWithImpl(_ListOfNotificationResponse _value,
      $Res Function(_ListOfNotificationResponse) _then)
      : super(_value, (v) => _then(v as _ListOfNotificationResponse));

  @override
  _ListOfNotificationResponse get _value =>
      super._value as _ListOfNotificationResponse;

  @override
  $Res call({
    Object? listOfNotification = freezed,
  }) {
    return _then(_ListOfNotificationResponse(
      listOfNotification: listOfNotification == freezed
          ? _value.listOfNotification
          : listOfNotification // ignore: cast_nullable_to_non_nullable
              as List<NotificationResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfNotificationResponse extends _ListOfNotificationResponse {
  _$_ListOfNotificationResponse(
      {@JsonKey(name: "notifications") this.listOfNotification})
      : super._();

  factory _$_ListOfNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListOfNotificationResponseFromJson(json);

  @override
  @JsonKey(name: "notifications")
  final List<NotificationResponse>? listOfNotification;

  @override
  String toString() {
    return 'ListOfNotificationResponse(listOfNotification: $listOfNotification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListOfNotificationResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfNotification, listOfNotification));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfNotification));

  @JsonKey(ignore: true)
  @override
  _$ListOfNotificationResponseCopyWith<_ListOfNotificationResponse>
      get copyWith => __$ListOfNotificationResponseCopyWithImpl<
          _ListOfNotificationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfNotificationResponseToJson(this);
  }
}

abstract class _ListOfNotificationResponse extends ListOfNotificationResponse {
  factory _ListOfNotificationResponse(
          {@JsonKey(name: "notifications")
              List<NotificationResponse>? listOfNotification}) =
      _$_ListOfNotificationResponse;
  _ListOfNotificationResponse._() : super._();

  factory _ListOfNotificationResponse.fromJson(Map<String, dynamic> json) =
      _$_ListOfNotificationResponse.fromJson;

  @override
  @JsonKey(name: "notifications")
  List<NotificationResponse>? get listOfNotification;
  @override
  @JsonKey(ignore: true)
  _$ListOfNotificationResponseCopyWith<_ListOfNotificationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationResponse _$NotificationResponseFromJson(Map<String, dynamic> json) {
  return _NotificationResponse.fromJson(json);
}

/// @nodoc
class _$NotificationResponseTearOff {
  const _$NotificationResponseTearOff();

  _NotificationResponse call(
      {@JsonKey(name: "_id")
          String? Id,
      @JsonKey(name: "read")
          bool? read,
      @JsonKey(name: "Userreceiver")
          List<UserReceiverResponse>? userReceiverResponse,
      @JsonKey(name: "notificationType")
          String? notificationType,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "notificationData")
          NotificationDataResponse? notificationDataResponse,
      @JsonKey(name: "senderUser")
          List<SenderUserResponse>? senderUserResponse,
      @JsonKey(name: "senderAnimal")
          List<SenderUserResponse>? senderAnimalResponse,
      @JsonKey(name: "Animalreciever")
          List<UserReceiverResponse>? animalReceiverResponse}) {
    return _NotificationResponse(
      Id: Id,
      read: read,
      userReceiverResponse: userReceiverResponse,
      notificationType: notificationType,
      date: date,
      notificationDataResponse: notificationDataResponse,
      senderUserResponse: senderUserResponse,
      senderAnimalResponse: senderAnimalResponse,
      animalReceiverResponse: animalReceiverResponse,
    );
  }

  NotificationResponse fromJson(Map<String, Object?> json) {
    return NotificationResponse.fromJson(json);
  }
}

/// @nodoc
const $NotificationResponse = _$NotificationResponseTearOff();

/// @nodoc
mixin _$NotificationResponse {
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "read")
  bool? get read => throw _privateConstructorUsedError;
  @JsonKey(name: "Userreceiver")
  List<UserReceiverResponse>? get userReceiverResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "notificationType")
  String? get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "notificationData")
  NotificationDataResponse? get notificationDataResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "senderUser")
  List<SenderUserResponse>? get senderUserResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "senderAnimal")
  List<SenderUserResponse>? get senderAnimalResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "Animalreciever")
  List<UserReceiverResponse>? get animalReceiverResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationResponseCopyWith<NotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationResponseCopyWith<$Res> {
  factory $NotificationResponseCopyWith(NotificationResponse value,
          $Res Function(NotificationResponse) then) =
      _$NotificationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id")
          String? Id,
      @JsonKey(name: "read")
          bool? read,
      @JsonKey(name: "Userreceiver")
          List<UserReceiverResponse>? userReceiverResponse,
      @JsonKey(name: "notificationType")
          String? notificationType,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "notificationData")
          NotificationDataResponse? notificationDataResponse,
      @JsonKey(name: "senderUser")
          List<SenderUserResponse>? senderUserResponse,
      @JsonKey(name: "senderAnimal")
          List<SenderUserResponse>? senderAnimalResponse,
      @JsonKey(name: "Animalreciever")
          List<UserReceiverResponse>? animalReceiverResponse});

  $NotificationDataResponseCopyWith<$Res>? get notificationDataResponse;
}

/// @nodoc
class _$NotificationResponseCopyWithImpl<$Res>
    implements $NotificationResponseCopyWith<$Res> {
  _$NotificationResponseCopyWithImpl(this._value, this._then);

  final NotificationResponse _value;
  // ignore: unused_field
  final $Res Function(NotificationResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? read = freezed,
    Object? userReceiverResponse = freezed,
    Object? notificationType = freezed,
    Object? date = freezed,
    Object? notificationDataResponse = freezed,
    Object? senderUserResponse = freezed,
    Object? senderAnimalResponse = freezed,
    Object? animalReceiverResponse = freezed,
  }) {
    return _then(_value.copyWith(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      userReceiverResponse: userReceiverResponse == freezed
          ? _value.userReceiverResponse
          : userReceiverResponse // ignore: cast_nullable_to_non_nullable
              as List<UserReceiverResponse>?,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationDataResponse: notificationDataResponse == freezed
          ? _value.notificationDataResponse
          : notificationDataResponse // ignore: cast_nullable_to_non_nullable
              as NotificationDataResponse?,
      senderUserResponse: senderUserResponse == freezed
          ? _value.senderUserResponse
          : senderUserResponse // ignore: cast_nullable_to_non_nullable
              as List<SenderUserResponse>?,
      senderAnimalResponse: senderAnimalResponse == freezed
          ? _value.senderAnimalResponse
          : senderAnimalResponse // ignore: cast_nullable_to_non_nullable
              as List<SenderUserResponse>?,
      animalReceiverResponse: animalReceiverResponse == freezed
          ? _value.animalReceiverResponse
          : animalReceiverResponse // ignore: cast_nullable_to_non_nullable
              as List<UserReceiverResponse>?,
    ));
  }

  @override
  $NotificationDataResponseCopyWith<$Res>? get notificationDataResponse {
    if (_value.notificationDataResponse == null) {
      return null;
    }

    return $NotificationDataResponseCopyWith<$Res>(
        _value.notificationDataResponse!, (value) {
      return _then(_value.copyWith(notificationDataResponse: value));
    });
  }
}

/// @nodoc
abstract class _$NotificationResponseCopyWith<$Res>
    implements $NotificationResponseCopyWith<$Res> {
  factory _$NotificationResponseCopyWith(_NotificationResponse value,
          $Res Function(_NotificationResponse) then) =
      __$NotificationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id")
          String? Id,
      @JsonKey(name: "read")
          bool? read,
      @JsonKey(name: "Userreceiver")
          List<UserReceiverResponse>? userReceiverResponse,
      @JsonKey(name: "notificationType")
          String? notificationType,
      @JsonKey(name: "date")
          String? date,
      @JsonKey(name: "notificationData")
          NotificationDataResponse? notificationDataResponse,
      @JsonKey(name: "senderUser")
          List<SenderUserResponse>? senderUserResponse,
      @JsonKey(name: "senderAnimal")
          List<SenderUserResponse>? senderAnimalResponse,
      @JsonKey(name: "Animalreciever")
          List<UserReceiverResponse>? animalReceiverResponse});

  @override
  $NotificationDataResponseCopyWith<$Res>? get notificationDataResponse;
}

/// @nodoc
class __$NotificationResponseCopyWithImpl<$Res>
    extends _$NotificationResponseCopyWithImpl<$Res>
    implements _$NotificationResponseCopyWith<$Res> {
  __$NotificationResponseCopyWithImpl(
      _NotificationResponse _value, $Res Function(_NotificationResponse) _then)
      : super(_value, (v) => _then(v as _NotificationResponse));

  @override
  _NotificationResponse get _value => super._value as _NotificationResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? read = freezed,
    Object? userReceiverResponse = freezed,
    Object? notificationType = freezed,
    Object? date = freezed,
    Object? notificationDataResponse = freezed,
    Object? senderUserResponse = freezed,
    Object? senderAnimalResponse = freezed,
    Object? animalReceiverResponse = freezed,
  }) {
    return _then(_NotificationResponse(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      read: read == freezed
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      userReceiverResponse: userReceiverResponse == freezed
          ? _value.userReceiverResponse
          : userReceiverResponse // ignore: cast_nullable_to_non_nullable
              as List<UserReceiverResponse>?,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationDataResponse: notificationDataResponse == freezed
          ? _value.notificationDataResponse
          : notificationDataResponse // ignore: cast_nullable_to_non_nullable
              as NotificationDataResponse?,
      senderUserResponse: senderUserResponse == freezed
          ? _value.senderUserResponse
          : senderUserResponse // ignore: cast_nullable_to_non_nullable
              as List<SenderUserResponse>?,
      senderAnimalResponse: senderAnimalResponse == freezed
          ? _value.senderAnimalResponse
          : senderAnimalResponse // ignore: cast_nullable_to_non_nullable
              as List<SenderUserResponse>?,
      animalReceiverResponse: animalReceiverResponse == freezed
          ? _value.animalReceiverResponse
          : animalReceiverResponse // ignore: cast_nullable_to_non_nullable
              as List<UserReceiverResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationResponse extends _NotificationResponse {
  _$_NotificationResponse(
      {@JsonKey(name: "_id") this.Id,
      @JsonKey(name: "read") this.read,
      @JsonKey(name: "Userreceiver") this.userReceiverResponse,
      @JsonKey(name: "notificationType") this.notificationType,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "notificationData") this.notificationDataResponse,
      @JsonKey(name: "senderUser") this.senderUserResponse,
      @JsonKey(name: "senderAnimal") this.senderAnimalResponse,
      @JsonKey(name: "Animalreciever") this.animalReceiverResponse})
      : super._();

  factory _$_NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "read")
  final bool? read;
  @override
  @JsonKey(name: "Userreceiver")
  final List<UserReceiverResponse>? userReceiverResponse;
  @override
  @JsonKey(name: "notificationType")
  final String? notificationType;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "notificationData")
  final NotificationDataResponse? notificationDataResponse;
  @override
  @JsonKey(name: "senderUser")
  final List<SenderUserResponse>? senderUserResponse;
  @override
  @JsonKey(name: "senderAnimal")
  final List<SenderUserResponse>? senderAnimalResponse;
  @override
  @JsonKey(name: "Animalreciever")
  final List<UserReceiverResponse>? animalReceiverResponse;

  @override
  String toString() {
    return 'NotificationResponse(Id: $Id, read: $read, userReceiverResponse: $userReceiverResponse, notificationType: $notificationType, date: $date, notificationDataResponse: $notificationDataResponse, senderUserResponse: $senderUserResponse, senderAnimalResponse: $senderAnimalResponse, animalReceiverResponse: $animalReceiverResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationResponse &&
            const DeepCollectionEquality().equals(other.Id, Id) &&
            const DeepCollectionEquality().equals(other.read, read) &&
            const DeepCollectionEquality()
                .equals(other.userReceiverResponse, userReceiverResponse) &&
            const DeepCollectionEquality()
                .equals(other.notificationType, notificationType) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(
                other.notificationDataResponse, notificationDataResponse) &&
            const DeepCollectionEquality()
                .equals(other.senderUserResponse, senderUserResponse) &&
            const DeepCollectionEquality()
                .equals(other.senderAnimalResponse, senderAnimalResponse) &&
            const DeepCollectionEquality()
                .equals(other.animalReceiverResponse, animalReceiverResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(Id),
      const DeepCollectionEquality().hash(read),
      const DeepCollectionEquality().hash(userReceiverResponse),
      const DeepCollectionEquality().hash(notificationType),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(notificationDataResponse),
      const DeepCollectionEquality().hash(senderUserResponse),
      const DeepCollectionEquality().hash(senderAnimalResponse),
      const DeepCollectionEquality().hash(animalReceiverResponse));

  @JsonKey(ignore: true)
  @override
  _$NotificationResponseCopyWith<_NotificationResponse> get copyWith =>
      __$NotificationResponseCopyWithImpl<_NotificationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationResponseToJson(this);
  }
}

abstract class _NotificationResponse extends NotificationResponse {
  factory _NotificationResponse(
          {@JsonKey(name: "_id")
              String? Id,
          @JsonKey(name: "read")
              bool? read,
          @JsonKey(name: "Userreceiver")
              List<UserReceiverResponse>? userReceiverResponse,
          @JsonKey(name: "notificationType")
              String? notificationType,
          @JsonKey(name: "date")
              String? date,
          @JsonKey(name: "notificationData")
              NotificationDataResponse? notificationDataResponse,
          @JsonKey(name: "senderUser")
              List<SenderUserResponse>? senderUserResponse,
          @JsonKey(name: "senderAnimal")
              List<SenderUserResponse>? senderAnimalResponse,
          @JsonKey(name: "Animalreciever")
              List<UserReceiverResponse>? animalReceiverResponse}) =
      _$_NotificationResponse;
  _NotificationResponse._() : super._();

  factory _NotificationResponse.fromJson(Map<String, dynamic> json) =
      _$_NotificationResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "read")
  bool? get read;
  @override
  @JsonKey(name: "Userreceiver")
  List<UserReceiverResponse>? get userReceiverResponse;
  @override
  @JsonKey(name: "notificationType")
  String? get notificationType;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "notificationData")
  NotificationDataResponse? get notificationDataResponse;
  @override
  @JsonKey(name: "senderUser")
  List<SenderUserResponse>? get senderUserResponse;
  @override
  @JsonKey(name: "senderAnimal")
  List<SenderUserResponse>? get senderAnimalResponse;
  @override
  @JsonKey(name: "Animalreciever")
  List<UserReceiverResponse>? get animalReceiverResponse;
  @override
  @JsonKey(ignore: true)
  _$NotificationResponseCopyWith<_NotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserReceiverResponse _$UserReceiverResponseFromJson(Map<String, dynamic> json) {
  return _UserReceiverResponse.fromJson(json);
}

/// @nodoc
class _$UserReceiverResponseTearOff {
  const _$UserReceiverResponseTearOff();

  _UserReceiverResponse call({@JsonKey(name: "_id") String? Id}) {
    return _UserReceiverResponse(
      Id: Id,
    );
  }

  UserReceiverResponse fromJson(Map<String, Object?> json) {
    return UserReceiverResponse.fromJson(json);
  }
}

/// @nodoc
const $UserReceiverResponse = _$UserReceiverResponseTearOff();

/// @nodoc
mixin _$UserReceiverResponse {
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserReceiverResponseCopyWith<UserReceiverResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReceiverResponseCopyWith<$Res> {
  factory $UserReceiverResponseCopyWith(UserReceiverResponse value,
          $Res Function(UserReceiverResponse) then) =
      _$UserReceiverResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "_id") String? Id});
}

/// @nodoc
class _$UserReceiverResponseCopyWithImpl<$Res>
    implements $UserReceiverResponseCopyWith<$Res> {
  _$UserReceiverResponseCopyWithImpl(this._value, this._then);

  final UserReceiverResponse _value;
  // ignore: unused_field
  final $Res Function(UserReceiverResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
  }) {
    return _then(_value.copyWith(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserReceiverResponseCopyWith<$Res>
    implements $UserReceiverResponseCopyWith<$Res> {
  factory _$UserReceiverResponseCopyWith(_UserReceiverResponse value,
          $Res Function(_UserReceiverResponse) then) =
      __$UserReceiverResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "_id") String? Id});
}

/// @nodoc
class __$UserReceiverResponseCopyWithImpl<$Res>
    extends _$UserReceiverResponseCopyWithImpl<$Res>
    implements _$UserReceiverResponseCopyWith<$Res> {
  __$UserReceiverResponseCopyWithImpl(
      _UserReceiverResponse _value, $Res Function(_UserReceiverResponse) _then)
      : super(_value, (v) => _then(v as _UserReceiverResponse));

  @override
  _UserReceiverResponse get _value => super._value as _UserReceiverResponse;

  @override
  $Res call({
    Object? Id = freezed,
  }) {
    return _then(_UserReceiverResponse(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserReceiverResponse extends _UserReceiverResponse {
  _$_UserReceiverResponse({@JsonKey(name: "_id") this.Id}) : super._();

  factory _$_UserReceiverResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserReceiverResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? Id;

  @override
  String toString() {
    return 'UserReceiverResponse(Id: $Id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserReceiverResponse &&
            const DeepCollectionEquality().equals(other.Id, Id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(Id));

  @JsonKey(ignore: true)
  @override
  _$UserReceiverResponseCopyWith<_UserReceiverResponse> get copyWith =>
      __$UserReceiverResponseCopyWithImpl<_UserReceiverResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserReceiverResponseToJson(this);
  }
}

abstract class _UserReceiverResponse extends UserReceiverResponse {
  factory _UserReceiverResponse({@JsonKey(name: "_id") String? Id}) =
      _$_UserReceiverResponse;
  _UserReceiverResponse._() : super._();

  factory _UserReceiverResponse.fromJson(Map<String, dynamic> json) =
      _$_UserReceiverResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(ignore: true)
  _$UserReceiverResponseCopyWith<_UserReceiverResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SenderUserResponse _$SenderUserResponseFromJson(Map<String, dynamic> json) {
  return _SenderUserResponse.fromJson(json);
}

/// @nodoc
class _$SenderUserResponseTearOff {
  const _$SenderUserResponseTearOff();

  _SenderUserResponse call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username}) {
    return _SenderUserResponse(
      Id: Id,
      username: username,
    );
  }

  SenderUserResponse fromJson(Map<String, Object?> json) {
    return SenderUserResponse.fromJson(json);
  }
}

/// @nodoc
const $SenderUserResponse = _$SenderUserResponseTearOff();

/// @nodoc
mixin _$SenderUserResponse {
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SenderUserResponseCopyWith<SenderUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderUserResponseCopyWith<$Res> {
  factory $SenderUserResponseCopyWith(
          SenderUserResponse value, $Res Function(SenderUserResponse) then) =
      _$SenderUserResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username});
}

/// @nodoc
class _$SenderUserResponseCopyWithImpl<$Res>
    implements $SenderUserResponseCopyWith<$Res> {
  _$SenderUserResponseCopyWithImpl(this._value, this._then);

  final SenderUserResponse _value;
  // ignore: unused_field
  final $Res Function(SenderUserResponse) _then;

  @override
  $Res call({
    Object? Id = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SenderUserResponseCopyWith<$Res>
    implements $SenderUserResponseCopyWith<$Res> {
  factory _$SenderUserResponseCopyWith(
          _SenderUserResponse value, $Res Function(_SenderUserResponse) then) =
      __$SenderUserResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username});
}

/// @nodoc
class __$SenderUserResponseCopyWithImpl<$Res>
    extends _$SenderUserResponseCopyWithImpl<$Res>
    implements _$SenderUserResponseCopyWith<$Res> {
  __$SenderUserResponseCopyWithImpl(
      _SenderUserResponse _value, $Res Function(_SenderUserResponse) _then)
      : super(_value, (v) => _then(v as _SenderUserResponse));

  @override
  _SenderUserResponse get _value => super._value as _SenderUserResponse;

  @override
  $Res call({
    Object? Id = freezed,
    Object? username = freezed,
  }) {
    return _then(_SenderUserResponse(
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SenderUserResponse extends _SenderUserResponse {
  _$_SenderUserResponse(
      {@JsonKey(name: "_id") this.Id, @JsonKey(name: "username") this.username})
      : super._();

  factory _$_SenderUserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SenderUserResponseFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "username")
  final String? username;

  @override
  String toString() {
    return 'SenderUserResponse(Id: $Id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SenderUserResponse &&
            const DeepCollectionEquality().equals(other.Id, Id) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(Id),
      const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$SenderUserResponseCopyWith<_SenderUserResponse> get copyWith =>
      __$SenderUserResponseCopyWithImpl<_SenderUserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SenderUserResponseToJson(this);
  }
}

abstract class _SenderUserResponse extends SenderUserResponse {
  factory _SenderUserResponse(
      {@JsonKey(name: "_id") String? Id,
      @JsonKey(name: "username") String? username}) = _$_SenderUserResponse;
  _SenderUserResponse._() : super._();

  factory _SenderUserResponse.fromJson(Map<String, dynamic> json) =
      _$_SenderUserResponse.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$SenderUserResponseCopyWith<_SenderUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationDataResponse _$NotificationDataResponseFromJson(
    Map<String, dynamic> json) {
  return _NotificationDataResponse.fromJson(json);
}

/// @nodoc
class _$NotificationDataResponseTearOff {
  const _$NotificationDataResponseTearOff();

  _NotificationDataResponse call(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "body") String? body,
      @JsonKey(name: "textOnCTA") String? textOnCTA,
      @JsonKey(name: "actionOnCTA") String? actionOnCTA,
      @JsonKey(name: "icon") String? icon,
      @JsonKey(name: "valueForCTA") String? valueForCTA,
      @JsonKey(name: "walkNumber") String? walkNo,
      @JsonKey(name: "serviceProviderId") String? serviceProviderId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "appointmentId") String? appointmentId,
      @JsonKey(name: "bookingDetailsId") String? bookingDetailsId,
      @JsonKey(name: "sessionNo") int? sessionNo,
      @JsonKey(name: "dogs") List<String>? dogs,
      @JsonKey(name: "noOfDogs") int? noOfDogs,
      @JsonKey(name: "date") int? date}) {
    return _NotificationDataResponse(
      postId: postId,
      image: image,
      message: message,
      body: body,
      textOnCTA: textOnCTA,
      actionOnCTA: actionOnCTA,
      icon: icon,
      valueForCTA: valueForCTA,
      walkNo: walkNo,
      serviceProviderId: serviceProviderId,
      userId: userId,
      appointmentId: appointmentId,
      bookingDetailsId: bookingDetailsId,
      sessionNo: sessionNo,
      dogs: dogs,
      noOfDogs: noOfDogs,
      date: date,
    );
  }

  NotificationDataResponse fromJson(Map<String, Object?> json) {
    return NotificationDataResponse.fromJson(json);
  }
}

/// @nodoc
const $NotificationDataResponse = _$NotificationDataResponseTearOff();

/// @nodoc
mixin _$NotificationDataResponse {
  @JsonKey(name: "postId")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "body")
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "textOnCTA")
  String? get textOnCTA => throw _privateConstructorUsedError;
  @JsonKey(name: "actionOnCTA")
  String? get actionOnCTA => throw _privateConstructorUsedError;
  @JsonKey(name: "icon")
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: "valueForCTA")
  String? get valueForCTA => throw _privateConstructorUsedError;
  @JsonKey(name: "walkNumber")
  String? get walkNo => throw _privateConstructorUsedError;
  @JsonKey(name: "serviceProviderId")
  String? get serviceProviderId => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "appointmentId")
  String? get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "bookingDetailsId")
  String? get bookingDetailsId => throw _privateConstructorUsedError;
  @JsonKey(name: "sessionNo")
  int? get sessionNo => throw _privateConstructorUsedError;
  @JsonKey(name: "dogs")
  List<String>? get dogs => throw _privateConstructorUsedError;
  @JsonKey(name: "noOfDogs")
  int? get noOfDogs => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  int? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDataResponseCopyWith<NotificationDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataResponseCopyWith<$Res> {
  factory $NotificationDataResponseCopyWith(NotificationDataResponse value,
          $Res Function(NotificationDataResponse) then) =
      _$NotificationDataResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "body") String? body,
      @JsonKey(name: "textOnCTA") String? textOnCTA,
      @JsonKey(name: "actionOnCTA") String? actionOnCTA,
      @JsonKey(name: "icon") String? icon,
      @JsonKey(name: "valueForCTA") String? valueForCTA,
      @JsonKey(name: "walkNumber") String? walkNo,
      @JsonKey(name: "serviceProviderId") String? serviceProviderId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "appointmentId") String? appointmentId,
      @JsonKey(name: "bookingDetailsId") String? bookingDetailsId,
      @JsonKey(name: "sessionNo") int? sessionNo,
      @JsonKey(name: "dogs") List<String>? dogs,
      @JsonKey(name: "noOfDogs") int? noOfDogs,
      @JsonKey(name: "date") int? date});
}

/// @nodoc
class _$NotificationDataResponseCopyWithImpl<$Res>
    implements $NotificationDataResponseCopyWith<$Res> {
  _$NotificationDataResponseCopyWithImpl(this._value, this._then);

  final NotificationDataResponse _value;
  // ignore: unused_field
  final $Res Function(NotificationDataResponse) _then;

  @override
  $Res call({
    Object? postId = freezed,
    Object? image = freezed,
    Object? message = freezed,
    Object? body = freezed,
    Object? textOnCTA = freezed,
    Object? actionOnCTA = freezed,
    Object? icon = freezed,
    Object? valueForCTA = freezed,
    Object? walkNo = freezed,
    Object? serviceProviderId = freezed,
    Object? userId = freezed,
    Object? appointmentId = freezed,
    Object? bookingDetailsId = freezed,
    Object? sessionNo = freezed,
    Object? dogs = freezed,
    Object? noOfDogs = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      textOnCTA: textOnCTA == freezed
          ? _value.textOnCTA
          : textOnCTA // ignore: cast_nullable_to_non_nullable
              as String?,
      actionOnCTA: actionOnCTA == freezed
          ? _value.actionOnCTA
          : actionOnCTA // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      valueForCTA: valueForCTA == freezed
          ? _value.valueForCTA
          : valueForCTA // ignore: cast_nullable_to_non_nullable
              as String?,
      walkNo: walkNo == freezed
          ? _value.walkNo
          : walkNo // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceProviderId: serviceProviderId == freezed
          ? _value.serviceProviderId
          : serviceProviderId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: appointmentId == freezed
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingDetailsId: bookingDetailsId == freezed
          ? _value.bookingDetailsId
          : bookingDetailsId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionNo: sessionNo == freezed
          ? _value.sessionNo
          : sessionNo // ignore: cast_nullable_to_non_nullable
              as int?,
      dogs: dogs == freezed
          ? _value.dogs
          : dogs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      noOfDogs: noOfDogs == freezed
          ? _value.noOfDogs
          : noOfDogs // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$NotificationDataResponseCopyWith<$Res>
    implements $NotificationDataResponseCopyWith<$Res> {
  factory _$NotificationDataResponseCopyWith(_NotificationDataResponse value,
          $Res Function(_NotificationDataResponse) then) =
      __$NotificationDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "body") String? body,
      @JsonKey(name: "textOnCTA") String? textOnCTA,
      @JsonKey(name: "actionOnCTA") String? actionOnCTA,
      @JsonKey(name: "icon") String? icon,
      @JsonKey(name: "valueForCTA") String? valueForCTA,
      @JsonKey(name: "walkNumber") String? walkNo,
      @JsonKey(name: "serviceProviderId") String? serviceProviderId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "appointmentId") String? appointmentId,
      @JsonKey(name: "bookingDetailsId") String? bookingDetailsId,
      @JsonKey(name: "sessionNo") int? sessionNo,
      @JsonKey(name: "dogs") List<String>? dogs,
      @JsonKey(name: "noOfDogs") int? noOfDogs,
      @JsonKey(name: "date") int? date});
}

/// @nodoc
class __$NotificationDataResponseCopyWithImpl<$Res>
    extends _$NotificationDataResponseCopyWithImpl<$Res>
    implements _$NotificationDataResponseCopyWith<$Res> {
  __$NotificationDataResponseCopyWithImpl(_NotificationDataResponse _value,
      $Res Function(_NotificationDataResponse) _then)
      : super(_value, (v) => _then(v as _NotificationDataResponse));

  @override
  _NotificationDataResponse get _value =>
      super._value as _NotificationDataResponse;

  @override
  $Res call({
    Object? postId = freezed,
    Object? image = freezed,
    Object? message = freezed,
    Object? body = freezed,
    Object? textOnCTA = freezed,
    Object? actionOnCTA = freezed,
    Object? icon = freezed,
    Object? valueForCTA = freezed,
    Object? walkNo = freezed,
    Object? serviceProviderId = freezed,
    Object? userId = freezed,
    Object? appointmentId = freezed,
    Object? bookingDetailsId = freezed,
    Object? sessionNo = freezed,
    Object? dogs = freezed,
    Object? noOfDogs = freezed,
    Object? date = freezed,
  }) {
    return _then(_NotificationDataResponse(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      textOnCTA: textOnCTA == freezed
          ? _value.textOnCTA
          : textOnCTA // ignore: cast_nullable_to_non_nullable
              as String?,
      actionOnCTA: actionOnCTA == freezed
          ? _value.actionOnCTA
          : actionOnCTA // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      valueForCTA: valueForCTA == freezed
          ? _value.valueForCTA
          : valueForCTA // ignore: cast_nullable_to_non_nullable
              as String?,
      walkNo: walkNo == freezed
          ? _value.walkNo
          : walkNo // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceProviderId: serviceProviderId == freezed
          ? _value.serviceProviderId
          : serviceProviderId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: appointmentId == freezed
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingDetailsId: bookingDetailsId == freezed
          ? _value.bookingDetailsId
          : bookingDetailsId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionNo: sessionNo == freezed
          ? _value.sessionNo
          : sessionNo // ignore: cast_nullable_to_non_nullable
              as int?,
      dogs: dogs == freezed
          ? _value.dogs
          : dogs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      noOfDogs: noOfDogs == freezed
          ? _value.noOfDogs
          : noOfDogs // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationDataResponse extends _NotificationDataResponse {
  _$_NotificationDataResponse(
      {@JsonKey(name: "postId") this.postId,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "body") this.body,
      @JsonKey(name: "textOnCTA") this.textOnCTA,
      @JsonKey(name: "actionOnCTA") this.actionOnCTA,
      @JsonKey(name: "icon") this.icon,
      @JsonKey(name: "valueForCTA") this.valueForCTA,
      @JsonKey(name: "walkNumber") this.walkNo,
      @JsonKey(name: "serviceProviderId") this.serviceProviderId,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "appointmentId") this.appointmentId,
      @JsonKey(name: "bookingDetailsId") this.bookingDetailsId,
      @JsonKey(name: "sessionNo") this.sessionNo,
      @JsonKey(name: "dogs") this.dogs,
      @JsonKey(name: "noOfDogs") this.noOfDogs,
      @JsonKey(name: "date") this.date})
      : super._();

  factory _$_NotificationDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationDataResponseFromJson(json);

  @override
  @JsonKey(name: "postId")
  final String? postId;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "body")
  final String? body;
  @override
  @JsonKey(name: "textOnCTA")
  final String? textOnCTA;
  @override
  @JsonKey(name: "actionOnCTA")
  final String? actionOnCTA;
  @override
  @JsonKey(name: "icon")
  final String? icon;
  @override
  @JsonKey(name: "valueForCTA")
  final String? valueForCTA;
  @override
  @JsonKey(name: "walkNumber")
  final String? walkNo;
  @override
  @JsonKey(name: "serviceProviderId")
  final String? serviceProviderId;
  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "appointmentId")
  final String? appointmentId;
  @override
  @JsonKey(name: "bookingDetailsId")
  final String? bookingDetailsId;
  @override
  @JsonKey(name: "sessionNo")
  final int? sessionNo;
  @override
  @JsonKey(name: "dogs")
  final List<String>? dogs;
  @override
  @JsonKey(name: "noOfDogs")
  final int? noOfDogs;
  @override
  @JsonKey(name: "date")
  final int? date;

  @override
  String toString() {
    return 'NotificationDataResponse(postId: $postId, image: $image, message: $message, body: $body, textOnCTA: $textOnCTA, actionOnCTA: $actionOnCTA, icon: $icon, valueForCTA: $valueForCTA, walkNo: $walkNo, serviceProviderId: $serviceProviderId, userId: $userId, appointmentId: $appointmentId, bookingDetailsId: $bookingDetailsId, sessionNo: $sessionNo, dogs: $dogs, noOfDogs: $noOfDogs, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationDataResponse &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.textOnCTA, textOnCTA) &&
            const DeepCollectionEquality()
                .equals(other.actionOnCTA, actionOnCTA) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality()
                .equals(other.valueForCTA, valueForCTA) &&
            const DeepCollectionEquality().equals(other.walkNo, walkNo) &&
            const DeepCollectionEquality()
                .equals(other.serviceProviderId, serviceProviderId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.appointmentId, appointmentId) &&
            const DeepCollectionEquality()
                .equals(other.bookingDetailsId, bookingDetailsId) &&
            const DeepCollectionEquality().equals(other.sessionNo, sessionNo) &&
            const DeepCollectionEquality().equals(other.dogs, dogs) &&
            const DeepCollectionEquality().equals(other.noOfDogs, noOfDogs) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(textOnCTA),
      const DeepCollectionEquality().hash(actionOnCTA),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(valueForCTA),
      const DeepCollectionEquality().hash(walkNo),
      const DeepCollectionEquality().hash(serviceProviderId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(appointmentId),
      const DeepCollectionEquality().hash(bookingDetailsId),
      const DeepCollectionEquality().hash(sessionNo),
      const DeepCollectionEquality().hash(dogs),
      const DeepCollectionEquality().hash(noOfDogs),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$NotificationDataResponseCopyWith<_NotificationDataResponse> get copyWith =>
      __$NotificationDataResponseCopyWithImpl<_NotificationDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationDataResponseToJson(this);
  }
}

abstract class _NotificationDataResponse extends NotificationDataResponse {
  factory _NotificationDataResponse(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "body") String? body,
      @JsonKey(name: "textOnCTA") String? textOnCTA,
      @JsonKey(name: "actionOnCTA") String? actionOnCTA,
      @JsonKey(name: "icon") String? icon,
      @JsonKey(name: "valueForCTA") String? valueForCTA,
      @JsonKey(name: "walkNumber") String? walkNo,
      @JsonKey(name: "serviceProviderId") String? serviceProviderId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "appointmentId") String? appointmentId,
      @JsonKey(name: "bookingDetailsId") String? bookingDetailsId,
      @JsonKey(name: "sessionNo") int? sessionNo,
      @JsonKey(name: "dogs") List<String>? dogs,
      @JsonKey(name: "noOfDogs") int? noOfDogs,
      @JsonKey(name: "date") int? date}) = _$_NotificationDataResponse;
  _NotificationDataResponse._() : super._();

  factory _NotificationDataResponse.fromJson(Map<String, dynamic> json) =
      _$_NotificationDataResponse.fromJson;

  @override
  @JsonKey(name: "postId")
  String? get postId;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "body")
  String? get body;
  @override
  @JsonKey(name: "textOnCTA")
  String? get textOnCTA;
  @override
  @JsonKey(name: "actionOnCTA")
  String? get actionOnCTA;
  @override
  @JsonKey(name: "icon")
  String? get icon;
  @override
  @JsonKey(name: "valueForCTA")
  String? get valueForCTA;
  @override
  @JsonKey(name: "walkNumber")
  String? get walkNo;
  @override
  @JsonKey(name: "serviceProviderId")
  String? get serviceProviderId;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "appointmentId")
  String? get appointmentId;
  @override
  @JsonKey(name: "bookingDetailsId")
  String? get bookingDetailsId;
  @override
  @JsonKey(name: "sessionNo")
  int? get sessionNo;
  @override
  @JsonKey(name: "dogs")
  List<String>? get dogs;
  @override
  @JsonKey(name: "noOfDogs")
  int? get noOfDogs;
  @override
  @JsonKey(name: "date")
  int? get date;
  @override
  @JsonKey(ignore: true)
  _$NotificationDataResponseCopyWith<_NotificationDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
