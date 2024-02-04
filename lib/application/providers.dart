import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/data/forecast_repository.dart';
import 'package:weather_app/domain/current_weather.dart';
import 'package:weather_app/domain/forecast_day.dart';
import 'package:weather_app/domain/forecast_five_days.dart';

final defaultCityProvider = StateProvider<String>((ref) {
  return 'Kuopio';
});

final customCityProvider = StateProvider<String>((ref) {
  String customCity = '';
  return customCity;
});

final searchStateProvider = StateProvider<bool>((ref) {
  bool searchPerformed = false;
  return searchPerformed;
});

final currentWeatherProvider =
    FutureProvider.family<CurrentWeather, String>((ref, city) async {
  final currentWeather =
      await ref.watch(forecastRepositoryProvider).getCurrentWeather(city: city);
  return currentWeather;
});

final forecastDayProvider =
    FutureProvider.family<ForecastDay, String>((ref, city) async {
  final forecastDay =
      await ref.watch(forecastRepositoryProvider).getForecastDay(city: city);
  return forecastDay;
});

final forecastThreeDaysProvider =
    FutureProvider.family<ForecastThreeDays, String>((ref, city) async {
  final forecastThreeDays = await ref
      .watch(forecastRepositoryProvider)
      .getForecastThreeDays(city: city);
  return forecastThreeDays;
});
