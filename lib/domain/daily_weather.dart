import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/weather_condition.dart';
import 'package:weather_app/utilities/double_int_converter.dart';

part 'daily_weather.freezed.dart';
part 'daily_weather.g.dart';

@freezed
class DailyWeather with _$DailyWeather {
  factory DailyWeather({
    @DoubleIntConverter()
    @JsonKey(name: 'maxtemp_c')
    required int maxTemperature,
    @DoubleIntConverter()
    @JsonKey(name: 'mintemp_c')
    required int minTemperature,
    @JsonKey(name: 'condition') required WeatherCondition weatherCondition,
  }) = _DailyWeather;

  factory DailyWeather.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherFromJson(json);
}
