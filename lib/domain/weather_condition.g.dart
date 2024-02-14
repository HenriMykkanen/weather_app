// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherConditionImpl _$$WeatherConditionImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherConditionImpl(
      weatherType: json['text'] as String,
      weatherIconUrl: json['icon'] as String,
    );

Map<String, dynamic> _$$WeatherConditionImplToJson(
        _$WeatherConditionImpl instance) =>
    <String, dynamic>{
      'text': instance.weatherType,
      'icon': instance.weatherIconUrl,
    };
