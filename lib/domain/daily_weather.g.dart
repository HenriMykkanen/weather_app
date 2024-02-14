// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyWeatherImpl _$$DailyWeatherImplFromJson(Map<String, dynamic> json) =>
    _$DailyWeatherImpl(
      maxTemperature:
          const DoubleIntConverter().fromJson(json['maxtemp_c'] as double),
      minTemperature:
          const DoubleIntConverter().fromJson(json['mintemp_c'] as double),
      weatherCondition:
          WeatherCondition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DailyWeatherImplToJson(_$DailyWeatherImpl instance) =>
    <String, dynamic>{
      'maxtemp_c': const DoubleIntConverter().toJson(instance.maxTemperature),
      'mintemp_c': const DoubleIntConverter().toJson(instance.minTemperature),
      'condition': instance.weatherCondition,
    };
