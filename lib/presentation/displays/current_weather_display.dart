import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/application/providers.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CurrentWeatherDisplay extends ConsumerWidget {
  const CurrentWeatherDisplay({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final city = ref.watch(defaultCityProvider);
    final weatherToday = ref.watch(currentWeatherProvider);
    return weatherToday.when(
      data: (data) {
        return Container(
            width: double.infinity,
            height: 192,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  city,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                CachedNetworkImage(
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    imageUrl: 'https:${data.currentWeather.weatherIconURL}'),
                Text(
                  '${data.currentTemperature}\u2103',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
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