import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/daily_weather.dart';
import 'package:weather_app/domain/forecast_hour.dart';
import 'package:weather_app/utilities/epoch_datetime_converter.dart';

part 'forecast_day.freezed.dart';
part 'forecast_day.g.dart';

@freezed
class ForecastDay with _$ForecastDay {
  factory ForecastDay({
    @EpochDateTimeConverter()
    @JsonKey(name: 'date_epoch')
    required DateTime date,
    @JsonKey(name: 'day') required DailyWeather dailyWeather,
    @JsonKey(name: 'hour') @Default([]) List<ForecastHour> forecastByHour,
  }) = _ForecastDay;

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);
}
