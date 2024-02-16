import 'package:weather_app/data/forecast_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/domain/current_weather.dart';
import 'package:weather_app/domain/forecast.dart';

part 'weather_provider.g.dart';

@Riverpod(keepAlive: true)
Future<CurrentWeather> weatherNow(WeatherNowRef ref, String city) async {
  final forecastRepository = ref.watch(forecastRepositoryProvider);
  final currentWeather = await forecastRepository.getWeather(city: city);
  return currentWeather;
}
