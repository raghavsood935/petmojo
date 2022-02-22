// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_payment_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPaymentDetailsResponse _$GetPaymentDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetPaymentDetailsResponse.fromJson(json);
}

/// @nodoc
class _$GetPaymentDetailsResponseTearOff {
  const _$GetPaymentDetailsResponseTearOff();

  _GetPaymentDetailsResponse call(
      {@JsonKey(name: "id") String? orderId,
      @JsonKey(name: "entity") String? entity,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "amount_paid") int? amountPaid,
      @JsonKey(name: "amount_due") int? amountDue,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "receipt") String? receiptId,
      @JsonKey(name: "offer_id") String? offerId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "attempts") int? attempts,
      @JsonKey(name: "created_at") int? bookingDetails}) {
    return _GetPaymentDetailsResponse(
      orderId: orderId,
      entity: entity,
      amount: amount,
      amountPaid: amountPaid,
      amountDue: amountDue,
      currency: currency,
      receiptId: receiptId,
      offerId: offerId,
      status: status,
      attempts: attempts,
      bookingDetails: bookingDetails,
    );
  }

  GetPaymentDetailsResponse fromJson(Map<String, Object?> json) {
    return GetPaymentDetailsResponse.fromJson(json);
  }
}

/// @nodoc
const $GetPaymentDetailsResponse = _$GetPaymentDetailsResponseTearOff();

/// @nodoc
mixin _$GetPaymentDetailsResponse {
  @JsonKey(name: "id")
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "entity")
  String? get entity => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_paid")
  int? get amountPaid => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_due")
  int? get amountDue => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "receipt")
  String? get receiptId => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_id")
  String? get offerId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "attempts")
  int? get attempts => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  int? get bookingDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPaymentDetailsResponseCopyWith<GetPaymentDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPaymentDetailsResponseCopyWith<$Res> {
  factory $GetPaymentDetailsResponseCopyWith(GetPaymentDetailsResponse value,
          $Res Function(GetPaymentDetailsResponse) then) =
      _$GetPaymentDetailsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String? orderId,
      @JsonKey(name: "entity") String? entity,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "amount_paid") int? amountPaid,
      @JsonKey(name: "amount_due") int? amountDue,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "receipt") String? receiptId,
      @JsonKey(name: "offer_id") String? offerId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "attempts") int? attempts,
      @JsonKey(name: "created_at") int? bookingDetails});
}

/// @nodoc
class _$GetPaymentDetailsResponseCopyWithImpl<$Res>
    implements $GetPaymentDetailsResponseCopyWith<$Res> {
  _$GetPaymentDetailsResponseCopyWithImpl(this._value, this._then);

  final GetPaymentDetailsResponse _value;
  // ignore: unused_field
  final $Res Function(GetPaymentDetailsResponse) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? entity = freezed,
    Object? amount = freezed,
    Object? amountPaid = freezed,
    Object? amountDue = freezed,
    Object? currency = freezed,
    Object? receiptId = freezed,
    Object? offerId = freezed,
    Object? status = freezed,
    Object? attempts = freezed,
    Object? bookingDetails = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      amountPaid: amountPaid == freezed
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as int?,
      amountDue: amountDue == freezed
          ? _value.amountDue
          : amountDue // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptId: receiptId == freezed
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerId: offerId == freezed
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      attempts: attempts == freezed
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$GetPaymentDetailsResponseCopyWith<$Res>
    implements $GetPaymentDetailsResponseCopyWith<$Res> {
  factory _$GetPaymentDetailsResponseCopyWith(_GetPaymentDetailsResponse value,
          $Res Function(_GetPaymentDetailsResponse) then) =
      __$GetPaymentDetailsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String? orderId,
      @JsonKey(name: "entity") String? entity,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "amount_paid") int? amountPaid,
      @JsonKey(name: "amount_due") int? amountDue,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "receipt") String? receiptId,
      @JsonKey(name: "offer_id") String? offerId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "attempts") int? attempts,
      @JsonKey(name: "created_at") int? bookingDetails});
}

/// @nodoc
class __$GetPaymentDetailsResponseCopyWithImpl<$Res>
    extends _$GetPaymentDetailsResponseCopyWithImpl<$Res>
    implements _$GetPaymentDetailsResponseCopyWith<$Res> {
  __$GetPaymentDetailsResponseCopyWithImpl(_GetPaymentDetailsResponse _value,
      $Res Function(_GetPaymentDetailsResponse) _then)
      : super(_value, (v) => _then(v as _GetPaymentDetailsResponse));

  @override
  _GetPaymentDetailsResponse get _value =>
      super._value as _GetPaymentDetailsResponse;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? entity = freezed,
    Object? amount = freezed,
    Object? amountPaid = freezed,
    Object? amountDue = freezed,
    Object? currency = freezed,
    Object? receiptId = freezed,
    Object? offerId = freezed,
    Object? status = freezed,
    Object? attempts = freezed,
    Object? bookingDetails = freezed,
  }) {
    return _then(_GetPaymentDetailsResponse(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      amountPaid: amountPaid == freezed
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as int?,
      amountDue: amountDue == freezed
          ? _value.amountDue
          : amountDue // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptId: receiptId == freezed
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as String?,
      offerId: offerId == freezed
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      attempts: attempts == freezed
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingDetails: bookingDetails == freezed
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPaymentDetailsResponse extends _GetPaymentDetailsResponse {
  _$_GetPaymentDetailsResponse(
      {@JsonKey(name: "id") this.orderId,
      @JsonKey(name: "entity") this.entity,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "amount_paid") this.amountPaid,
      @JsonKey(name: "amount_due") this.amountDue,
      @JsonKey(name: "currency") this.currency,
      @JsonKey(name: "receipt") this.receiptId,
      @JsonKey(name: "offer_id") this.offerId,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "attempts") this.attempts,
      @JsonKey(name: "created_at") this.bookingDetails})
      : super._();

  factory _$_GetPaymentDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetPaymentDetailsResponseFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? orderId;
  @override
  @JsonKey(name: "entity")
  final String? entity;
  @override
  @JsonKey(name: "amount")
  final int? amount;
  @override
  @JsonKey(name: "amount_paid")
  final int? amountPaid;
  @override
  @JsonKey(name: "amount_due")
  final int? amountDue;
  @override
  @JsonKey(name: "currency")
  final String? currency;
  @override
  @JsonKey(name: "receipt")
  final String? receiptId;
  @override
  @JsonKey(name: "offer_id")
  final String? offerId;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "attempts")
  final int? attempts;
  @override
  @JsonKey(name: "created_at")
  final int? bookingDetails;

  @override
  String toString() {
    return 'GetPaymentDetailsResponse(orderId: $orderId, entity: $entity, amount: $amount, amountPaid: $amountPaid, amountDue: $amountDue, currency: $currency, receiptId: $receiptId, offerId: $offerId, status: $status, attempts: $attempts, bookingDetails: $bookingDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetPaymentDetailsResponse &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other.entity, entity) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.amountPaid, amountPaid) &&
            const DeepCollectionEquality().equals(other.amountDue, amountDue) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.receiptId, receiptId) &&
            const DeepCollectionEquality().equals(other.offerId, offerId) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.attempts, attempts) &&
            const DeepCollectionEquality()
                .equals(other.bookingDetails, bookingDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(entity),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(amountPaid),
      const DeepCollectionEquality().hash(amountDue),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(receiptId),
      const DeepCollectionEquality().hash(offerId),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(attempts),
      const DeepCollectionEquality().hash(bookingDetails));

  @JsonKey(ignore: true)
  @override
  _$GetPaymentDetailsResponseCopyWith<_GetPaymentDetailsResponse>
      get copyWith =>
          __$GetPaymentDetailsResponseCopyWithImpl<_GetPaymentDetailsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPaymentDetailsResponseToJson(this);
  }
}

abstract class _GetPaymentDetailsResponse extends GetPaymentDetailsResponse {
  factory _GetPaymentDetailsResponse(
          {@JsonKey(name: "id") String? orderId,
          @JsonKey(name: "entity") String? entity,
          @JsonKey(name: "amount") int? amount,
          @JsonKey(name: "amount_paid") int? amountPaid,
          @JsonKey(name: "amount_due") int? amountDue,
          @JsonKey(name: "currency") String? currency,
          @JsonKey(name: "receipt") String? receiptId,
          @JsonKey(name: "offer_id") String? offerId,
          @JsonKey(name: "status") String? status,
          @JsonKey(name: "attempts") int? attempts,
          @JsonKey(name: "created_at") int? bookingDetails}) =
      _$_GetPaymentDetailsResponse;
  _GetPaymentDetailsResponse._() : super._();

  factory _GetPaymentDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetPaymentDetailsResponse.fromJson;

  @override
  @JsonKey(name: "id")
  String? get orderId;
  @override
  @JsonKey(name: "entity")
  String? get entity;
  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(name: "amount_paid")
  int? get amountPaid;
  @override
  @JsonKey(name: "amount_due")
  int? get amountDue;
  @override
  @JsonKey(name: "currency")
  String? get currency;
  @override
  @JsonKey(name: "receipt")
  String? get receiptId;
  @override
  @JsonKey(name: "offer_id")
  String? get offerId;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "attempts")
  int? get attempts;
  @override
  @JsonKey(name: "created_at")
  int? get bookingDetails;
  @override
  @JsonKey(ignore: true)
  _$GetPaymentDetailsResponseCopyWith<_GetPaymentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
