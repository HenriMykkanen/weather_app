import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/data/forecast_repository.dart';
import 'package:weather_app/domain/forecast/forecast.dart';

final cityProvider = StateProvider<String>((ref) {
  return 'Kuopio';
});

final forecastProvider = FutureProvider<Forecast>((ref) async {
  final city = ref.watch(cityProvider);
  final forecast =
      await ref.watch(forecastRepositoryProvider).getForecastList(city: city);
  return forecast;
});

final forecastFiveDaysProvider = FutureProvider<ForecastList>((ref) async {
  final city = ref.watch(cityProvider);
  final forecast = await ref
      .watch(forecastRepositoryProvider)
      .getForecastFiveDays(city: city);
  return forecast;
});

final defaultCityProvider = StateProvider<String>((ref) {
  var defaultCity = 'Kuopio';
  return defaultCity;
});
