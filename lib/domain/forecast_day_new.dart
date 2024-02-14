import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/daily_weather.dart';
import 'package:weather_app/domain/forecast_hour_new.dart';
import 'package:weather_app/utilities/epoch_datetime_converter.dart';

part 'forecast_day_new.freezed.dart';
part 'forecast_day_new.g.dart';

@freezed
class ForecastDayNew with _$ForecastDayNew {
  factory ForecastDayNew({
    @EpochDateTimeConverter()
    @JsonKey(name: 'date_epoch')
    required DateTime date,
    @JsonKey(name: 'day') required DailyWeather dailyWeather,
    @JsonKey(name: 'hour') @Default([]) List<ForecastHourNew> forecastByHour,
  }) = _ForecastDayNew;

  factory ForecastDayNew.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayNewFromJson(json);
}
