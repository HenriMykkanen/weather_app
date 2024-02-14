import 'package:weather_app/domain/weather.dart';

class CurrentWeather {
  CurrentWeather(
      {required this.currentWeather, required this.currentTemperature});

  final int currentTemperature;
  final Weather currentWeather;

  factory CurrentWeather.fromJSON(Map<String, dynamic> json) {
    final timestamp = json['current']['last_updated_epoch'] as int;
    final time = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    final currentTemperature =
        (json['current']['temp_c'] as num).toInt().round();
    final weatherType = json['current']['condition']['text'];
    final weatherIconURL = json['current']['condition']['icon'] as String;
    final wind = json['current']['wind_kph'] as double;

    return CurrentWeather(
      currentTemperature: currentTemperature,
      currentWeather: Weather(
          time: time,
          weatherType: weatherType,
          weatherIconURL: weatherIconURL,
          wind: wind),
    );
  }
}
