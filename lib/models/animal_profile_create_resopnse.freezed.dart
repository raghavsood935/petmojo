// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'animal_profile_create_resopnse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnimalProfileCreateResopnse _$AnimalProfileCreateResopnseFromJson(
    Map<String, dynamic> json) {
  return _AnimalProfileCreateResopnse.fromJson(json);
}

/// @nodoc
class _$AnimalProfileCreateResopnseTearOff {
  const _$AnimalProfileCreateResopnseTearOff();

  _AnimalProfileCreateResopnse call({@JsonKey(name: "token") String? token}) {
    return _AnimalProfileCreateResopnse(
      token: token,
    );
  }

  AnimalProfileCreateResopnse fromJson(Map<String, Object?> json) {
    return AnimalProfileCreateResopnse.fromJson(json);
  }
}

/// @nodoc
const $AnimalProfileCreateResopnse = _$AnimalProfileCreateResopnseTearOff();

/// @nodoc
mixin _$AnimalProfileCreateResopnse {
  @JsonKey(name: "token")
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimalProfileCreateResopnseCopyWith<AnimalProfileCreateResopnse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalProfileCreateResopnseCopyWith<$Res> {
  factory $AnimalProfileCreateResopnseCopyWith(
          AnimalProfileCreateResopnse value,
          $Res Function(AnimalProfileCreateResopnse) then) =
      _$AnimalProfileCreateResopnseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "token") String? token});
}

/// @nodoc
class _$AnimalProfileCreateResopnseCopyWithImpl<$Res>
    implements $AnimalProfileCreateResopnseCopyWith<$Res> {
  _$AnimalProfileCreateResopnseCopyWithImpl(this._value, this._then);

  final AnimalProfileCreateResopnse _value;
  // ignore: unused_field
  final $Res Function(AnimalProfileCreateResopnse) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AnimalProfileCreateResopnseCopyWith<$Res>
    implements $AnimalProfileCreateResopnseCopyWith<$Res> {
  factory _$AnimalProfileCreateResopnseCopyWith(
          _AnimalProfileCreateResopnse value,
          $Res Function(_AnimalProfileCreateResopnse) then) =
      __$AnimalProfileCreateResopnseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "token") String? token});
}

/// @nodoc
class __$AnimalProfileCreateResopnseCopyWithImpl<$Res>
    extends _$AnimalProfileCreateResopnseCopyWithImpl<$Res>
    implements _$AnimalProfileCreateResopnseCopyWith<$Res> {
  __$AnimalProfileCreateResopnseCopyWithImpl(
      _AnimalProfileCreateResopnse _value,
      $Res Function(_AnimalProfileCreateResopnse) _then)
      : super(_value, (v) => _then(v as _AnimalProfileCreateResopnse));

  @override
  _AnimalProfileCreateResopnse get _value =>
      super._value as _AnimalProfileCreateResopnse;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_AnimalProfileCreateResopnse(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimalProfileCreateResopnse extends _AnimalProfileCreateResopnse {
  _$_AnimalProfileCreateResopnse({@JsonKey(name: "token") this.token})
      : super._();

  factory _$_AnimalProfileCreateResopnse.fromJson(Map<String, dynamic> json) =>
      _$$_AnimalProfileCreateResopnseFromJson(json);

  @override
  @JsonKey(name: "token")
  final String? token;

  @override
  String toString() {
    return 'AnimalProfileCreateResopnse(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimalProfileCreateResopnse &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  _$AnimalProfileCreateResopnseCopyWith<_AnimalProfileCreateResopnse>
      get copyWith => __$AnimalProfileCreateResopnseCopyWithImpl<
          _AnimalProfileCreateResopnse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimalProfileCreateResopnseToJson(this);
  }
}

abstract class _AnimalProfileCreateResopnse
    extends AnimalProfileCreateResopnse {
  factory _AnimalProfileCreateResopnse(
      {@JsonKey(name: "token") String? token}) = _$_AnimalProfileCreateResopnse;
  _AnimalProfileCreateResopnse._() : super._();

  factory _AnimalProfileCreateResopnse.fromJson(Map<String, dynamic> json) =
      _$_AnimalProfileCreateResopnse.fromJson;

  @override
  @JsonKey(name: "token")
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$AnimalProfileCreateResopnseCopyWith<_AnimalProfileCreateResopnse>
      get copyWith => throw _privateConstructorUsedError;
}
