import 'dart:convert';
import 'dart:io';
import 'package:weather_app/api/api_keys.dart';
import 'package:weather_app/api/api.dart';
import 'package:weather_app/data/api_exception.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/domain/current_weather.dart';
import 'package:weather_app/domain/forecast.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'forecast_repository.g.dart';

// https://codewithandrea.com/articles/flutter-repository-pattern/

class HttpForecastRepository {
  HttpForecastRepository({required this.api, required this.client});
  final WeatherMapAPI api;
  final http.Client client;

  Future<Forecast> getForecast({required String city}) => _getData(
        uri: api.forecast(city),
        builder: (data) => Forecast.fromJson(data),
      );

  Future<CurrentWeather> getWeather({required String city}) => _getData(
        uri: api.forecast(city),
        builder: (data) => CurrentWeather.fromJson(data),
      );

  Future<GenericType> _getData<GenericType>({
    required Uri uri,
    required GenericType Function(dynamic data) builder,
  }) async {
    try {
      final response = await client.get(uri);
      switch (response.statusCode) {
        case 200: // 200 OK - Indicates that the request has succeeded
          final data = json.decode(response.body);
          return builder(data);
        case 401: // 401 Unauthorized -  Indicates that the request requires user authentication information
          throw InvalidApiKeyException();
        case 404: // 404 Not Found - The server can not find the requested resource
          throw CityNotFoundException();
        default:
          throw UnknownException();
      }
    } on SocketException catch (_) {
      throw NoInternetConnectionException();
    }
  }
}

@Riverpod(keepAlive: true)
HttpForecastRepository forecastRepository(ForecastRepositoryRef ref) {
  const apiKey =
      String.fromEnvironment('API_KEY', defaultValue: APIKeys.weatherAPIkey);
  return HttpForecastRepository(
      api: WeatherMapAPI(apiKey), client: http.Client());
}
