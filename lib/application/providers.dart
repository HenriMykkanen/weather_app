import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/data/forecast_repository.dart';
import 'package:weather_app/domain/current_weather.dart';
import 'package:weather_app/domain/forecast_day.dart';
import 'package:weather_app/domain/forecast_five_days.dart';

final defaultCityProvider = StateProvider<String>((ref) {
  return 'Kuopio';
});

final currentWeatherProvider = FutureProvider<CurrentWeather>((ref) async {
  final city = ref.watch(defaultCityProvider);
  final currentWeather =
      await ref.watch(forecastRepositoryProvider).getCurrentWeather(city: city);
  return currentWeather;
});

final forecastDayProvider = FutureProvider<ForecastDay>((ref) async {
  final city = ref.watch(defaultCityProvider);
  final forecastDay =
      await ref.watch(forecastRepositoryProvider).getForecastDay(city: city);
  return forecastDay;
});

final forecastFiveDaysProvider = FutureProvider<ForecastFiveDays>((ref) async {
  final city = ref.watch(defaultCityProvider);
  final forecastFiveDays = await ref
      .watch(forecastRepositoryProvider)
      .getForecastFiveDays(city: city);
  return forecastFiveDays;
});

final defaultdefaultCityProvider = StateProvider<String>((ref) {
  var defaultCity = 'Kuopio';
  return defaultCity;
});
