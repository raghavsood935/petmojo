// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_of_pending_requests.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfPendingRequestsResponse _$ListOfPendingRequestsResponseFromJson(
    Map<String, dynamic> json) {
  return _ListOfPendingRequestsResponse.fromJson(json);
}

/// @nodoc
class _$ListOfPendingRequestsResponseTearOff {
  const _$ListOfPendingRequestsResponseTearOff();

  _ListOfPendingRequestsResponse call(
      {@JsonKey(name: "pendingRequests")
          List<AnimalProfileResponse>? listOfPendingRequests}) {
    return _ListOfPendingRequestsResponse(
      listOfPendingRequests: listOfPendingRequests,
    );
  }

  ListOfPendingRequestsResponse fromJson(Map<String, Object?> json) {
    return ListOfPendingRequestsResponse.fromJson(json);
  }
}

/// @nodoc
const $ListOfPendingRequestsResponse = _$ListOfPendingRequestsResponseTearOff();

/// @nodoc
mixin _$ListOfPendingRequestsResponse {
  @JsonKey(name: "pendingRequests")
  List<AnimalProfileResponse>? get listOfPendingRequests =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfPendingRequestsResponseCopyWith<ListOfPendingRequestsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfPendingRequestsResponseCopyWith<$Res> {
  factory $ListOfPendingRequestsResponseCopyWith(
          ListOfPendingRequestsResponse value,
          $Res Function(ListOfPendingRequestsResponse) then) =
      _$ListOfPendingRequestsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "pendingRequests")
          List<AnimalProfileResponse>? listOfPendingRequests});
}

/// @nodoc
class _$ListOfPendingRequestsResponseCopyWithImpl<$Res>
    implements $ListOfPendingRequestsResponseCopyWith<$Res> {
  _$ListOfPendingRequestsResponseCopyWithImpl(this._value, this._then);

  final ListOfPendingRequestsResponse _value;
  // ignore: unused_field
  final $Res Function(ListOfPendingRequestsResponse) _then;

  @override
  $Res call({
    Object? listOfPendingRequests = freezed,
  }) {
    return _then(_value.copyWith(
      listOfPendingRequests: listOfPendingRequests == freezed
          ? _value.listOfPendingRequests
          : listOfPendingRequests // ignore: cast_nullable_to_non_nullable
              as List<AnimalProfileResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$ListOfPendingRequestsResponseCopyWith<$Res>
    implements $ListOfPendingRequestsResponseCopyWith<$Res> {
  factory _$ListOfPendingRequestsResponseCopyWith(
          _ListOfPendingRequestsResponse value,
          $Res Function(_ListOfPendingRequestsResponse) then) =
      __$ListOfPendingRequestsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "pendingRequests")
          List<AnimalProfileResponse>? listOfPendingRequests});
}

/// @nodoc
class __$ListOfPendingRequestsResponseCopyWithImpl<$Res>
    extends _$ListOfPendingRequestsResponseCopyWithImpl<$Res>
    implements _$ListOfPendingRequestsResponseCopyWith<$Res> {
  __$ListOfPendingRequestsResponseCopyWithImpl(
      _ListOfPendingRequestsResponse _value,
      $Res Function(_ListOfPendingRequestsResponse) _then)
      : super(_value, (v) => _then(v as _ListOfPendingRequestsResponse));

  @override
  _ListOfPendingRequestsResponse get _value =>
      super._value as _ListOfPendingRequestsResponse;

  @override
  $Res call({
    Object? listOfPendingRequests = freezed,
  }) {
    return _then(_ListOfPendingRequestsResponse(
      listOfPendingRequests: listOfPendingRequests == freezed
          ? _value.listOfPendingRequests
          : listOfPendingRequests // ignore: cast_nullable_to_non_nullable
              as List<AnimalProfileResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfPendingRequestsResponse extends _ListOfPendingRequestsResponse {
  _$_ListOfPendingRequestsResponse(
      {@JsonKey(name: "pendingRequests") this.listOfPendingRequests})
      : super._();

  factory _$_ListOfPendingRequestsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_ListOfPendingRequestsResponseFromJson(json);

  @override
  @JsonKey(name: "pendingRequests")
  final List<AnimalProfileResponse>? listOfPendingRequests;

  @override
  String toString() {
    return 'ListOfPendingRequestsResponse(listOfPendingRequests: $listOfPendingRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListOfPendingRequestsResponse &&
            const DeepCollectionEquality()
                .equals(other.listOfPendingRequests, listOfPendingRequests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listOfPendingRequests));

  @JsonKey(ignore: true)
  @override
  _$ListOfPendingRequestsResponseCopyWith<_ListOfPendingRequestsResponse>
      get copyWith => __$ListOfPendingRequestsResponseCopyWithImpl<
          _ListOfPendingRequestsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfPendingRequestsResponseToJson(this);
  }
}

abstract class _ListOfPendingRequestsResponse
    extends ListOfPendingRequestsResponse {
  factory _ListOfPendingRequestsResponse(
          {@JsonKey(name: "pendingRequests")
              List<AnimalProfileResponse>? listOfPendingRequests}) =
      _$_ListOfPendingRequestsResponse;
  _ListOfPendingRequestsResponse._() : super._();

  factory _ListOfPendingRequestsResponse.fromJson(Map<String, dynamic> json) =
      _$_ListOfPendingRequestsResponse.fromJson;

  @override
  @JsonKey(name: "pendingRequests")
  List<AnimalProfileResponse>? get listOfPendingRequests;
  @override
  @JsonKey(ignore: true)
  _$ListOfPendingRequestsResponseCopyWith<_ListOfPendingRequestsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
