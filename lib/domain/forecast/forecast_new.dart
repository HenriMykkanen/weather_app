import 'package:intl/intl.dart';

// https://codewithandrea.com/articles/parse-json-dart/
// https://codewithandrea.com/articles/parse-json-dart-codegen-freezed/

class Weather {
  Weather({
    required this.time,
    required this.weatherType,
    required this.weatherIconURL,
  });

  final DateTime time;
  final String weatherType;
  final String weatherIconURL;
}

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

    return CurrentWeather(
      currentTemperature: currentTemperature,
      currentWeather: Weather(
          time: time, weatherType: weatherType, weatherIconURL: weatherIconURL),
    );
  }
}

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

  factory ForecastDay.fromJSON(Map<String, dynamic> json) {
    final date = DateTime.fromMillisecondsSinceEpoch(
        json['forecast']['forecastday'][0]['date_epoch'] * 1000);
    final temperatureMax =
        (json['forecast']['forecastday'][0]['day']['maxtemp_c'] as num)
            .toInt()
            .round();
    final temperatureMin =
        (json['forecast']['forecastday'][0]['day']['mintemp_c'] as num)
            .toInt()
            .round();
    final weatherType =
        json['forecast']['forecastday'][0]['day']['condition']['text'];
    final weatherIconURL =
        json['forecast']['forecastday'][0]['day']['condition']['icon'];
    final weather = Weather(
        time: date, weatherType: weatherType, weatherIconURL: weatherIconURL);
    final jsonAsDynamicList =
        json['forecast']['forecastday'][0]['hour'] as List<dynamic>;
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
