import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/application/weather_provider.dart';
import 'package:weather_app/domain/current_weather.dart';

class CurrentWeatherDisplay extends ConsumerWidget {
  const CurrentWeatherDisplay({super.key, required this.cityProvider});
  final StateProvider cityProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final city = ref.watch(cityProvider);
    final AsyncValue<CurrentWeather> currentWeather =
        ref.watch(weatherNowProvider(city));

    return currentWeather.when(
      data: (data) {
        return Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      city,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      DateFormat.MMMMEEEEd().format(data.time),
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // CachedNetworkImage(
                //     placeholder: (context, url) =>
                //         const CircularProgressIndicator(),
                //     errorWidget: (context, url, error) =>
                //         const Icon(Icons.error),
                //     imageUrl: 'https:${data.weatherCondition.weatherIconUrl}'),
                Text(
                  '${data.temperature}\u2103',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  data.weatherCondition.weatherType,
                  style: Theme.of(context).textTheme.displayMedium,
                )
              ],
            ),
          ],
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (e, _) => Text(e.toString()),
    );
  }
}
