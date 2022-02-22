// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guardians_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuardiansModelResponse _$GuardiansModelResponseFromJson(
    Map<String, dynamic> json) {
  return _GuardiansModelResponse.fromJson(json);
}

/// @nodoc
class _$GuardiansModelResponseTearOff {
  const _$GuardiansModelResponseTearOff();

  _GuardiansModelResponse call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "user") String? user}) {
    return _GuardiansModelResponse(
      confirmed: confirmed,
      Id: Id,
      user: user,
    );
  }

  GuardiansModelResponse fromJson(Map<String, Object?> json) {
    return GuardiansModelResponse.fromJson(json);
  }
}

/// @nodoc
const $GuardiansModelResponse = _$GuardiansModelResponseTearOff();

/// @nodoc
mixin _$GuardiansModelResponse {
  @JsonKey(name: "confirmed")
  bool? get confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  String? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuardiansModelResponseCopyWith<GuardiansModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuardiansModelResponseCopyWith<$Res> {
  factory $GuardiansModelResponseCopyWith(GuardiansModelResponse value,
          $Res Function(GuardiansModelResponse) then) =
      _$GuardiansModelResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "user") String? user});
}

/// @nodoc
class _$GuardiansModelResponseCopyWithImpl<$Res>
    implements $GuardiansModelResponseCopyWith<$Res> {
  _$GuardiansModelResponseCopyWithImpl(this._value, this._then);

  final GuardiansModelResponse _value;
  // ignore: unused_field
  final $Res Function(GuardiansModelResponse) _then;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? Id = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GuardiansModelResponseCopyWith<$Res>
    implements $GuardiansModelResponseCopyWith<$Res> {
  factory _$GuardiansModelResponseCopyWith(_GuardiansModelResponse value,
          $Res Function(_GuardiansModelResponse) then) =
      __$GuardiansModelResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "user") String? user});
}

/// @nodoc
class __$GuardiansModelResponseCopyWithImpl<$Res>
    extends _$GuardiansModelResponseCopyWithImpl<$Res>
    implements _$GuardiansModelResponseCopyWith<$Res> {
  __$GuardiansModelResponseCopyWithImpl(_GuardiansModelResponse _value,
      $Res Function(_GuardiansModelResponse) _then)
      : super(_value, (v) => _then(v as _GuardiansModelResponse));

  @override
  _GuardiansModelResponse get _value => super._value as _GuardiansModelResponse;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? Id = freezed,
    Object? user = freezed,
  }) {
    return _then(_GuardiansModelResponse(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      Id: Id == freezed
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GuardiansModelResponse extends _GuardiansModelResponse {
  _$_GuardiansModelResponse(
      {@JsonKey(name: "confirmed") this.confirmed,
      @JsonKey(name: "_id") this.Id,
      @JsonKey(name: "user") this.user})
      : super._();

  factory _$_GuardiansModelResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GuardiansModelResponseFromJson(json);

  @override
  @JsonKey(name: "confirmed")
  final bool? confirmed;
  @override
  @JsonKey(name: "_id")
  final String? Id;
  @override
  @JsonKey(name: "user")
  final String? user;

  @override
  String toString() {
    return 'GuardiansModelResponse(confirmed: $confirmed, Id: $Id, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GuardiansModelResponse &&
            const DeepCollectionEquality().equals(other.confirmed, confirmed) &&
            const DeepCollectionEquality().equals(other.Id, Id) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(confirmed),
      const DeepCollectionEquality().hash(Id),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$GuardiansModelResponseCopyWith<_GuardiansModelResponse> get copyWith =>
      __$GuardiansModelResponseCopyWithImpl<_GuardiansModelResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuardiansModelResponseToJson(this);
  }
}

abstract class _GuardiansModelResponse extends GuardiansModelResponse {
  factory _GuardiansModelResponse(
      {@JsonKey(name: "confirmed") bool? confirmed,
      @JsonKey(name: "_id") String? Id,
      @JsonKey(name: "user") String? user}) = _$_GuardiansModelResponse;
  _GuardiansModelResponse._() : super._();

  factory _GuardiansModelResponse.fromJson(Map<String, dynamic> json) =
      _$_GuardiansModelResponse.fromJson;

  @override
  @JsonKey(name: "confirmed")
  bool? get confirmed;
  @override
  @JsonKey(name: "_id")
  String? get Id;
  @override
  @JsonKey(name: "user")
  String? get user;
  @override
  @JsonKey(ignore: true)
  _$GuardiansModelResponseCopyWith<_GuardiansModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
