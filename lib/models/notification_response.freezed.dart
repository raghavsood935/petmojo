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
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.read, read) || other.read == read) &&
            const DeepCollectionEquality()
                .equals(other.userReceiverResponse, userReceiverResponse) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(
                    other.notificationDataResponse, notificationDataResponse) ||
                other.notificationDataResponse == notificationDataResponse) &&
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
      Id,
      read,
      const DeepCollectionEquality().hash(userReceiverResponse),
      notificationType,
      date,
      notificationDataResponse,
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
            (identical(other.Id, Id) || other.Id == Id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Id);

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
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Id, username);

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
      @JsonKey(name: "message") String? message}) {
    return _NotificationDataResponse(
      postId: postId,
      image: image,
      message: message,
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
      @JsonKey(name: "message") String? message});
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
      @JsonKey(name: "message") String? message});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationDataResponse extends _NotificationDataResponse {
  _$_NotificationDataResponse(
      {@JsonKey(name: "postId") this.postId,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "message") this.message})
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
  String toString() {
    return 'NotificationDataResponse(postId: $postId, image: $image, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationDataResponse &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, image, message);

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
      @JsonKey(name: "message") String? message}) = _$_NotificationDataResponse;
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
  @JsonKey(ignore: true)
  _$NotificationDataResponseCopyWith<_NotificationDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
