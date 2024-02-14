// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day_new.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDayNewImpl _$$ForecastDayNewImplFromJson(Map<String, dynamic> json) =>
    _$ForecastDayNewImpl(
      date: const EpochDateTimeConverter().fromJson(json['date_epoch'] as int),
      dailyWeather: DailyWeather.fromJson(json['day'] as Map<String, dynamic>),
      forecastByHour: (json['hour'] as List<dynamic>?)
              ?.map((e) => ForecastHourNew.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ForecastDayNewImplToJson(
        _$ForecastDayNewImpl instance) =>
    <String, dynamic>{
      'date_epoch': const EpochDateTimeConverter().toJson(instance.date),
      'day': instance.dailyWeather,
      'hour': instance.forecastByHour,
    };
