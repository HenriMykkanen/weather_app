// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherCondition _$WeatherConditionFromJson(Map<String, dynamic> json) {
  return _WeatherCondition.fromJson(json);
}

/// @nodoc
mixin _$WeatherCondition {
  String get weatherType => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  Uri get weatherIconUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherConditionCopyWith<WeatherCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionCopyWith<$Res> {
  factory $WeatherConditionCopyWith(
          WeatherCondition value, $Res Function(WeatherCondition) then) =
      _$WeatherConditionCopyWithImpl<$Res, WeatherCondition>;
  @useResult
  $Res call({String weatherType, @JsonKey(name: 'icon') Uri weatherIconUrl});
}

/// @nodoc
class _$WeatherConditionCopyWithImpl<$Res, $Val extends WeatherCondition>
    implements $WeatherConditionCopyWith<$Res> {
  _$WeatherConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherType = null,
    Object? weatherIconUrl = null,
  }) {
    return _then(_value.copyWith(
      weatherType: null == weatherType
          ? _value.weatherType
          : weatherType // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIconUrl: null == weatherIconUrl
          ? _value.weatherIconUrl
          : weatherIconUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherConditionImplCopyWith<$Res>
    implements $WeatherConditionCopyWith<$Res> {
  factory _$$WeatherConditionImplCopyWith(_$WeatherConditionImpl value,
          $Res Function(_$WeatherConditionImpl) then) =
      __$$WeatherConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String weatherType, @JsonKey(name: 'icon') Uri weatherIconUrl});
}

/// @nodoc
class __$$WeatherConditionImplCopyWithImpl<$Res>
    extends _$WeatherConditionCopyWithImpl<$Res, _$WeatherConditionImpl>
    implements _$$WeatherConditionImplCopyWith<$Res> {
  __$$WeatherConditionImplCopyWithImpl(_$WeatherConditionImpl _value,
      $Res Function(_$WeatherConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherType = null,
    Object? weatherIconUrl = null,
  }) {
    return _then(_$WeatherConditionImpl(
      weatherType: null == weatherType
          ? _value.weatherType
          : weatherType // ignore: cast_nullable_to_non_nullable
              as String,
      weatherIconUrl: null == weatherIconUrl
          ? _value.weatherIconUrl
          : weatherIconUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherConditionImpl implements _WeatherCondition {
  _$WeatherConditionImpl(
      {required this.weatherType,
      @JsonKey(name: 'icon') required this.weatherIconUrl});

  factory _$WeatherConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherConditionImplFromJson(json);

  @override
  final String weatherType;
  @override
  @JsonKey(name: 'icon')
  final Uri weatherIconUrl;

  @override
  String toString() {
    return 'WeatherCondition(weatherType: $weatherType, weatherIconUrl: $weatherIconUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherConditionImpl &&
            (identical(other.weatherType, weatherType) ||
                other.weatherType == weatherType) &&
            (identical(other.weatherIconUrl, weatherIconUrl) ||
                other.weatherIconUrl == weatherIconUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, weatherType, weatherIconUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherConditionImplCopyWith<_$WeatherConditionImpl> get copyWith =>
      __$$WeatherConditionImplCopyWithImpl<_$WeatherConditionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherConditionImplToJson(
      this,
    );
  }
}

abstract class _WeatherCondition implements WeatherCondition {
  factory _WeatherCondition(
          {required final String weatherType,
          @JsonKey(name: 'icon') required final Uri weatherIconUrl}) =
      _$WeatherConditionImpl;

  factory _WeatherCondition.fromJson(Map<String, dynamic> json) =
      _$WeatherConditionImpl.fromJson;

  @override
  String get weatherType;
  @override
  @JsonKey(name: 'icon')
  Uri get weatherIconUrl;
  @override
  @JsonKey(ignore: true)
  _$$WeatherConditionImplCopyWith<_$WeatherConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
