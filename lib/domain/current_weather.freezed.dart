// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _CurrentWeather.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeather {
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
  @DoubleIntConverter()
  @JsonKey(name: 'feelslike_c')
  int get temperatureFeelsLike => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res, CurrentWeather>;
  @useResult
  $Res call(
      {@EpochDateTimeConverter()
      @JsonKey(name: 'last_updated_epoch')
      DateTime time,
      @DoubleIntConverter() @JsonKey(name: 'temp_c') int temperature,
      @JsonKey(name: 'wind_kph') double wind,
      @JsonKey(name: 'condition') WeatherCondition weatherCondition,
      @DoubleIntConverter()
      @JsonKey(name: 'feelslike_c')
      int temperatureFeelsLike});

  $WeatherConditionCopyWith<$Res> get weatherCondition;
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res, $Val extends CurrentWeather>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

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
abstract class _$$CurrentWeatherImplCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$$CurrentWeatherImplCopyWith(_$CurrentWeatherImpl value,
          $Res Function(_$CurrentWeatherImpl) then) =
      __$$CurrentWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@EpochDateTimeConverter()
      @JsonKey(name: 'last_updated_epoch')
      DateTime time,
      @DoubleIntConverter() @JsonKey(name: 'temp_c') int temperature,
      @JsonKey(name: 'wind_kph') double wind,
      @JsonKey(name: 'condition') WeatherCondition weatherCondition,
      @DoubleIntConverter()
      @JsonKey(name: 'feelslike_c')
      int temperatureFeelsLike});

  @override
  $WeatherConditionCopyWith<$Res> get weatherCondition;
}

/// @nodoc
class __$$CurrentWeatherImplCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res, _$CurrentWeatherImpl>
    implements _$$CurrentWeatherImplCopyWith<$Res> {
  __$$CurrentWeatherImplCopyWithImpl(
      _$CurrentWeatherImpl _value, $Res Function(_$CurrentWeatherImpl) _then)
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
    return _then(_$CurrentWeatherImpl(
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
class _$CurrentWeatherImpl implements _CurrentWeather {
  _$CurrentWeatherImpl(
      {@EpochDateTimeConverter()
      @JsonKey(name: 'last_updated_epoch')
      required this.time,
      @DoubleIntConverter() @JsonKey(name: 'temp_c') required this.temperature,
      @JsonKey(name: 'wind_kph') required this.wind,
      @JsonKey(name: 'condition') required this.weatherCondition,
      @DoubleIntConverter()
      @JsonKey(name: 'feelslike_c')
      required this.temperatureFeelsLike});

  factory _$CurrentWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherImplFromJson(json);

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
  @DoubleIntConverter()
  @JsonKey(name: 'feelslike_c')
  final int temperatureFeelsLike;

  @override
  String toString() {
    return 'CurrentWeather(time: $time, temperature: $temperature, wind: $wind, weatherCondition: $weatherCondition, temperatureFeelsLike: $temperatureFeelsLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherImpl &&
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
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      __$$CurrentWeatherImplCopyWithImpl<_$CurrentWeatherImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeather implements CurrentWeather {
  factory _CurrentWeather(
      {@EpochDateTimeConverter()
      @JsonKey(name: 'last_updated_epoch')
      required final DateTime time,
      @DoubleIntConverter()
      @JsonKey(name: 'temp_c')
      required final int temperature,
      @JsonKey(name: 'wind_kph') required final double wind,
      @JsonKey(name: 'condition')
      required final WeatherCondition weatherCondition,
      @DoubleIntConverter()
      @JsonKey(name: 'feelslike_c')
      required final int temperatureFeelsLike}) = _$CurrentWeatherImpl;

  factory _CurrentWeather.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherImpl.fromJson;

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
  @DoubleIntConverter()
  @JsonKey(name: 'feelslike_c')
  int get temperatureFeelsLike;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
