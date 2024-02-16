import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/forecast_day.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  factory Forecast({
    @JsonKey(name: 'forecastday') required List<ForecastDay> forecastDays,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json['forecast']);
}
