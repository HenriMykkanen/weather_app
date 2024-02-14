// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_hour_new.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastHourNewImpl _$$ForecastHourNewImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastHourNewImpl(
      time: const EpochDateTimeConverter().fromJson(json['time_epoch'] as int),
      temperature:
          const DoubleIntConverter().fromJson(json['temp_c'] as double),
      weatherCondition:
          WeatherCondition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastHourNewImplToJson(
        _$ForecastHourNewImpl instance) =>
    <String, dynamic>{
      'time_epoch': const EpochDateTimeConverter().toJson(instance.time),
      'temp_c': const DoubleIntConverter().toJson(instance.temperature),
      'condition': instance.weatherCondition,
    };
