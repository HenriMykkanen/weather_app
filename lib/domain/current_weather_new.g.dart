// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_new.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentWeatherNewImpl _$$CurrentWeatherNewImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWeatherNewImpl(
      time: const EpochDateTimeConverter()
          .fromJson(json['last_updated_epoch'] as int),
      temperature:
          const DoubleIntConverter().fromJson(json['temp_c'] as double),
      wind: (json['wind_kph'] as num).toDouble(),
      weatherCondition:
          WeatherCondition.fromJson(json['condition'] as Map<String, dynamic>),
      temperatureFeelsLike: json['feelslike_c'] as int,
    );

Map<String, dynamic> _$$CurrentWeatherNewImplToJson(
        _$CurrentWeatherNewImpl instance) =>
    <String, dynamic>{
      'last_updated_epoch':
          const EpochDateTimeConverter().toJson(instance.time),
      'temp_c': const DoubleIntConverter().toJson(instance.temperature),
      'wind_kph': instance.wind,
      'condition': instance.weatherCondition,
      'feelslike_c': instance.temperatureFeelsLike,
    };
