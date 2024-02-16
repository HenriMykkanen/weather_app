import 'package:weather_app/data/forecast_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/domain/forecast.dart';

part 'forecast_provider.g.dart';

@Riverpod(keepAlive: true)
Future<Forecast> forecast(ForecastRef ref, String city) async {
  final forecastRepository = ref.watch(forecastRepositoryProvider);
  final forecast = await forecastRepository.getForecast(city: city);
  return forecast;
}
