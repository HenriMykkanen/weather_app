import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/weather_condition.dart';
import 'package:weather_app/utilities/double_int_converter.dart';
import 'package:weather_app/utilities/epoch_datetime_converter.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  factory CurrentWeather({
    @EpochDateTimeConverter()
    @JsonKey(name: 'last_updated_epoch')
    required DateTime time,
    @DoubleIntConverter() @JsonKey(name: 'temp_c') required int temperature,
    @JsonKey(name: 'wind_kph') required double wind,
    @JsonKey(name: 'condition') required WeatherCondition weatherCondition,
    @DoubleIntConverter()
    @JsonKey(name: 'feelslike_c')
    required int temperatureFeelsLike,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json['current']);
}
