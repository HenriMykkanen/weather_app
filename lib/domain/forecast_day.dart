import 'package:weather_app/domain/forecast_hour.dart';
import 'package:weather_app/domain/weather.dart';

class ForecastDay {
  ForecastDay(
      {required this.date,
      required this.temperatureMax,
      required this.temperatureMin,
      required this.weather,
      required this.forecastByHour});

  final DateTime date;
  final int temperatureMax;
  final int temperatureMin;
  final Weather weather;
  final List<ForecastHour> forecastByHour;

  factory ForecastDay.fromJSON(Map<String, dynamic> json, int daysAmount) {
    print("daysAmount: $daysAmount");
    print("forecastday length: ${json['forecast']['forecastday'].length}");
    final date = DateTime.fromMillisecondsSinceEpoch(
        json['forecast']['forecastday'][daysAmount]['date_epoch'] * 1000);
    final temperatureMax =
        (json['forecast']['forecastday'][daysAmount]['day']['maxtemp_c'] as num)
            .toInt()
            .round();
    final temperatureMin =
        (json['forecast']['forecastday'][daysAmount]['day']['mintemp_c'] as num)
            .toInt()
            .round();
    final weatherType = json['forecast']['forecastday'][daysAmount]['day']
            ['condition']['text'] as String? ??
        '';
    final weatherIconURL = json['forecast']['forecastday'][daysAmount]['day']
            ['condition']['icon'] as String? ??
        '';
    final weather = Weather(
        time: date, weatherType: weatherType, weatherIconURL: weatherIconURL);
    final jsonAsDynamicList =
        json['forecast']['forecastday'][daysAmount]['hour'] as List<dynamic>;
    final forecastByHour = jsonAsDynamicList
        .map(
          (e) => ForecastHour.fromJSON(e),
        )
        .toList();
    return ForecastDay(
        date: date,
        temperatureMax: temperatureMax,
        temperatureMin: temperatureMin,
        weather: weather,
        forecastByHour: forecastByHour);
  }
}
