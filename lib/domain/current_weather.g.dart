// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherImpl _$$CurrentWeatherImplFromJson(Map<String, dynamic> json) =>
    _$CurrentWeatherImpl(
      time: const EpochDateTimeConverter()
          .fromJson(json['last_updated_epoch'] as int),
      temperature:
          const DoubleIntConverter().fromJson(json['temp_c'] as double),
      wind: (json['wind_kph'] as num).toDouble(),
      weatherCondition:
          WeatherCondition.fromJson(json['condition'] as Map<String, dynamic>),
      temperatureFeelsLike:
          const DoubleIntConverter().fromJson(json['feelslike_c'] as double),
    );

Map<String, dynamic> _$$CurrentWeatherImplToJson(
        _$CurrentWeatherImpl instance) =>
    <String, dynamic>{
      'last_updated_epoch':
          const EpochDateTimeConverter().toJson(instance.time),
      'temp_c': const DoubleIntConverter().toJson(instance.temperature),
      'wind_kph': instance.wind,
      'condition': instance.weatherCondition,
      'feelslike_c':
          const DoubleIntConverter().toJson(instance.temperatureFeelsLike),
    };
