import 'package:flutter/material.dart';

// https://codewithandrea.com/articles/parse-json-dart/

class Forecast {
  Forecast({
    required this.time,
    required this.temperature,
    required this.temperatureMin,
    required this.temperatureMax,
    required this.weatherType,
  });

  final DateTime time;
  final double temperature;
  final double temperatureMin;
  final double temperatureMax;
  final String weatherType;

  factory Forecast.fromJSON(Map<String, dynamic> data) {
    final time = data['dt_txt'] as String;
    final temperature = data['temp'] as double;
    final temperatureMin = data['temp_min'] as double;
    final temperatureMax = data['temp_max'] as double;
    final weatherType = data['main'] as String;
    return Forecast(
      time: DateTime.parse(time),
      temperature: temperature,
      temperatureMin: temperatureMin,
      temperatureMax: temperatureMax,
      weatherType: weatherType,
    );
  }
}
