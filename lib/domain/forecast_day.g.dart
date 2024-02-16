// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDayImpl _$$ForecastDayImplFromJson(Map<String, dynamic> json) =>
    _$ForecastDayImpl(
      date: const EpochDateTimeConverter().fromJson(json['date_epoch'] as int),
      dailyWeather: DailyWeather.fromJson(json['day'] as Map<String, dynamic>),
      forecastByHour: (json['hour'] as List<dynamic>?)
              ?.map((e) => ForecastHour.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ForecastDayImplToJson(_$ForecastDayImpl instance) =>
    <String, dynamic>{
      'date_epoch': const EpochDateTimeConverter().toJson(instance.date),
      'day': instance.dailyWeather,
      'hour': instance.forecastByHour,
    };
