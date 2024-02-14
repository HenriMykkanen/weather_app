import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/current_weather_new.dart';
import 'package:weather_app/domain/forecast_day_new.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  factory Forecast({
    @JsonKey(name: 'forecastday') required List<ForecastDayNew> forecastDays,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}
