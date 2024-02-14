import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/application/forecast_provider.dart';
import 'package:weather_app/application/providers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:weather_app/application/weather_provider.dart';
import 'package:weather_app/domain/current_weather.dart';
import 'package:weather_app/domain/current_weather_new.dart';
import 'package:weather_app/domain/forecast.dart';

class CurrentWeatherDisplay extends ConsumerWidget {
  const CurrentWeatherDisplay({super.key, required this.cityProvider});
  final StateProvider cityProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final city = ref.watch(cityProvider);
    final AsyncValue<CurrentWeatherNew> currentWeather =
        ref.watch(weatherNowProvider(city));

    return currentWeather.when(
      data: (data) {
        return SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  city,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                // CachedNetworkImage(
                //     placeholder: (context, url) =>
                //         const CircularProgressIndicator(),
                //     errorWidget: (context, url, error) =>
                //         const Icon(Icons.error),
                //     imageUrl: data.weatherCondition.weatherIconUrl.toString()),
                Text(
                  '${data.temperature}\u2103',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(data.wind.toString())
              ],
            ));
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (e, _) => Text(e.toString()),
    );
  }
}
