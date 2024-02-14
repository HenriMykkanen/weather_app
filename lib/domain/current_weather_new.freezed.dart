// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_new.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentWeatherNew _$CurrentWeatherNewFromJson(Map<String, dynamic> json) {
  return _CurrentWeatherNew.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherNew {
  @EpochDateTimeConverter()
  @JsonKey(name: 'last_updated_epoch')
  DateTime get time => throw _privateConstructorUsedError;
  @DoubleIntConverter()
  @JsonKey(name: 'temp_c')
  int get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_kph')
  double get wind => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition')
  WeatherCondition get weatherCondition => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_c')
  int get temperatureFeelsLike => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherNewCopyWith<CurrentWeatherNew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherNewCopyWith<$Res> {
  factory $CurrentWeatherNewCopyWith(
          CurrentWeatherNew value, $Res Function(CurrentWeatherNew) then) =
      _$CurrentWeatherNewCopyWithImpl<$Res, CurrentWeatherNew>;
  @useResult
  $Res call(
      {@EpochDateTimeConverter()
      @JsonKey(name: 'last_updated_epoch')
      DateTime time,
      @DoubleIntConverter() @JsonKey(name: 'temp_c') int temperature,
      @JsonKey(name: 'wind_kph') double wind,
      @JsonKey(name: 'condition') WeatherCondition weatherCondition,
      @JsonKey(name: 'feelslike_c') int temperatureFeelsLike});

  $WeatherConditionCopyWith<$Res> get weatherCondition;
}

/// @nodoc
class _$CurrentWeatherNewCopyWithImpl<$Res, $Val extends CurrentWeatherNew>
    implements $CurrentWeatherNewCopyWith<$Res> {
  _$CurrentWeatherNewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? wind = null,
    Object? weatherCondition = null,
    Object? temperatureFeelsLike = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as double,
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      temperatureFeelsLike: null == temperatureFeelsLike
          ? _value.temperatureFeelsLike
          : temperatureFeelsLike // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherConditionCopyWith<$Res> get weatherCondition {
    return $WeatherConditionCopyWith<$Res>(_value.weatherCondition, (value) {
      return _then(_value.copyWith(weatherCondition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherNewImplCopyWith<$Res>
    implements $CurrentWeatherNewCopyWith<$Res> {
  factory _$$CurrentWeatherNewImplCopyWith(_$CurrentWeatherNewImpl value,
          $Res Function(_$CurrentWeatherNewImpl) then) =
      __$$CurrentWeatherNewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@EpochDateTimeConverter()
      @JsonKey(name: 'last_updated_epoch')
      DateTime time,
      @DoubleIntConverter() @JsonKey(name: 'temp_c') int temperature,
      @JsonKey(name: 'wind_kph') double wind,
      @JsonKey(name: 'condition') WeatherCondition weatherCondition,
      @JsonKey(name: 'feelslike_c') int temperatureFeelsLike});

  @override
  $WeatherConditionCopyWith<$Res> get weatherCondition;
}

/// @nodoc
class __$$CurrentWeatherNewImplCopyWithImpl<$Res>
    extends _$CurrentWeatherNewCopyWithImpl<$Res, _$CurrentWeatherNewImpl>
    implements _$$CurrentWeatherNewImplCopyWith<$Res> {
  __$$CurrentWeatherNewImplCopyWithImpl(_$CurrentWeatherNewImpl _value,
      $Res Function(_$CurrentWeatherNewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? wind = null,
    Object? weatherCondition = null,
    Object? temperatureFeelsLike = null,
  }) {
    return _then(_$CurrentWeatherNewImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as double,
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
      temperatureFeelsLike: null == temperatureFeelsLike
          ? _value.temperatureFeelsLike
          : temperatureFeelsLike // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherNewImpl implements _CurrentWeatherNew {
  _$CurrentWeatherNewImpl(
      {@EpochDateTimeConverter()
      @JsonKey(name: 'last_updated_epoch')
      required this.time,
      @DoubleIntConverter() @JsonKey(name: 'temp_c') required this.temperature,
      @JsonKey(name: 'wind_kph') required this.wind,
      @JsonKey(name: 'condition') required this.weatherCondition,
      @JsonKey(name: 'feelslike_c') required this.temperatureFeelsLike});

  factory _$CurrentWeatherNewImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherNewImplFromJson(json);

  @override
  @EpochDateTimeConverter()
  @JsonKey(name: 'last_updated_epoch')
  final DateTime time;
  @override
  @DoubleIntConverter()
  @JsonKey(name: 'temp_c')
  final int temperature;
  @override
  @JsonKey(name: 'wind_kph')
  final double wind;
  @override
  @JsonKey(name: 'condition')
  final WeatherCondition weatherCondition;
  @override
  @JsonKey(name: 'feelslike_c')
  final int temperatureFeelsLike;

  @override
  String toString() {
    return 'CurrentWeatherNew(time: $time, temperature: $temperature, wind: $wind, weatherCondition: $weatherCondition, temperatureFeelsLike: $temperatureFeelsLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherNewImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.temperatureFeelsLike, temperatureFeelsLike) ||
                other.temperatureFeelsLike == temperatureFeelsLike));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, temperature, wind,
      weatherCondition, temperatureFeelsLike);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherNewImplCopyWith<_$CurrentWeatherNewImpl> get copyWith =>
      __$$CurrentWeatherNewImplCopyWithImpl<_$CurrentWeatherNewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherNewImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherNew implements CurrentWeatherNew {
  factory _CurrentWeatherNew(
      {@EpochDateTimeConverter()
      @JsonKey(name: 'last_updated_epoch')
      required final DateTime time,
      @DoubleIntConverter()
      @JsonKey(name: 'temp_c')
      required final int temperature,
      @JsonKey(name: 'wind_kph') required final double wind,
      @JsonKey(name: 'condition')
      required final WeatherCondition weatherCondition,
      @JsonKey(name: 'feelslike_c')
      required final int temperatureFeelsLike}) = _$CurrentWeatherNewImpl;

  factory _CurrentWeatherNew.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherNewImpl.fromJson;

  @override
  @EpochDateTimeConverter()
  @JsonKey(name: 'last_updated_epoch')
  DateTime get time;
  @override
  @DoubleIntConverter()
  @JsonKey(name: 'temp_c')
  int get temperature;
  @override
  @JsonKey(name: 'wind_kph')
  double get wind;
  @override
  @JsonKey(name: 'condition')
  WeatherCondition get weatherCondition;
  @override
  @JsonKey(name: 'feelslike_c')
  int get temperatureFeelsLike;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherNewImplCopyWith<_$CurrentWeatherNewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
