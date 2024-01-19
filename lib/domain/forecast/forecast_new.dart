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
    print(json);
    final timestamp = json['current']['last_updated_epoch'] as int;
    print(timestamp);
    final time = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    print(time);
    final currentTemperature =
        (json['current']['temp_c'] as num).toInt().round();
    print(currentTemperature);
    final weatherType = json['current']['condition']['text'];
    print(weatherType);
    final weatherIconURL = json['current']['condition']['icon'] as String;
    print(weatherIconURL);

    return CurrentWeather(
      currentTemperature: currentTemperature,
      currentWeather: Weather(
          time: time, weatherType: weatherType, weatherIconURL: weatherIconURL),
    );
  }
}

class ForecastDay {
  ForecastDay({
    required this.time,
    required this.temperatureMax,
    required this.temperatureMin,
    required this.weather,
  });

  final DateTime time;
  final int temperatureMax;
  final int temperatureMin;
  final Weather weather;

  factory ForecastDay.fromJSON(Map<String, dynamic> json) {
    final time = DateTime.fromMillisecondsSinceEpoch(
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
        time: time, weatherType: weatherType, weatherIconURL: weatherIconURL);
    return ForecastDay(
        time: time,
        temperatureMax: temperatureMax,
        temperatureMin: temperatureMin,
        weather: weather);
  }
}

class ForecastHour {
  ForecastHour(
      {required this.time, required this.temperature, required this.weather});

  final DateTime time;
  final int temperature;
  final Weather weather;

  factory ForecastHour.fromJSON(Map<String, dynamic> json) {
    final time = DateTime.fromMillisecondsSinceEpoch(
        json['forecast']['forecastday'][0]['hour']['time_epoch'] * 1000);
    final temperature =
        (json['forecast']['forecastday'][0]['hour']['temp_c'] as num)
            .toInt()
            .round();
    final weatherType =
        json['forecast']['forecastday'][0]['hour']['condition']['text'];
    final weatherIconURL =
        json['forecast']['forecastday'][0]['hour']['condition']['icon'];
    final weather = Weather(
        time: time, weatherType: weatherType, weatherIconURL: weatherIconURL);
    return ForecastHour(
      time: time,
      temperature: temperature,
      weather: weather,
    );
  }
}
