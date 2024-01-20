import 'package:weather_app/domain/weather.dart';

class ForecastHour {
  ForecastHour(
      {required this.time, required this.temperature, required this.weather});

  final DateTime time;
  final int temperature;
  final Weather weather;

  factory ForecastHour.fromJSON(Map<String, dynamic> json) {
    final time = DateTime.fromMillisecondsSinceEpoch(json['time_epoch'] * 1000);
    final temperature = (json['temp_c'] as num).toInt().round();
    final weatherType = json['condition']['text'];
    final weatherIconURL = json['condition']['icon'];
    final weather = Weather(
        time: time, weatherType: weatherType, weatherIconURL: weatherIconURL);
    return ForecastHour(
      time: time,
      temperature: temperature,
      weather: weather,
    );
  }
}
