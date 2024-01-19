import 'dart:convert';
import 'dart:io';
import 'package:weather_app/api/api_keys.dart';
import 'package:weather_app/api/api_new.dart';
import 'package:weather_app/data/api_exception.dart';
import 'package:weather_app/domain/forecast/forecast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/domain/forecast/forecast_new.dart';
import 'package:weather_app/presentation/current_weather_display.dart';

// https://codewithandrea.com/articles/flutter-repository-pattern/

class HttpForecastRepositoryNew {
  HttpForecastRepositoryNew({required this.api, required this.client});
  final WeatherMapAPI api;
  final http.Client client;

  Future<CurrentWeather> getCurrentWeather({required String city}) => _getData(
      uri: api.forecastNow(city),
      builder: (data) => CurrentWeather.fromJSON(data));

  Future<GenericType> _getData<GenericType>({
    required Uri uri,
    required GenericType Function(dynamic data) builder,
  }) async {
    try {
      final response = await client.get(uri);
      print(uri);
      print(response);
      print(response.statusCode);
      print(response.body);
      switch (response.statusCode) {
        case 200: // 200 OK - Indicates that the request has succeeded
          final data = json.decode(response.body);
          // print(data);
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

final forecastRepositoryProviderNew =
    Provider<HttpForecastRepositoryNew>((ref) {
  const apiKey =
      String.fromEnvironment('API_KEY', defaultValue: APIKeys.weatherAPIkey);
  return HttpForecastRepositoryNew(
    api: WeatherMapAPI(apiKey),
    client: http.Client(),
  );
});
