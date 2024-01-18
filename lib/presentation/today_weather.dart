import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/application/providers.dart';
import 'package:weather_app/constants/theme.dart';

class TodaysWeather extends ConsumerWidget {
  const TodaysWeather({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherToday = ref.watch(forecastFiveDaysProvider);
    return weatherToday.when(
        data: (data) {
          return Container(
            width: double.infinity,
            child: ListView.builder(
              itemCount: 9,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final weatherObject = data.list[index];
                return Container(
                  width: 96,
                  color: colors(context).color1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        weatherObject.time,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      CachedNetworkImage(
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        imageUrl:
                            "http://openweathermap.org/img/wn/${weatherObject.weatherIcon}@2x.png",
                        width: 48,
                        height: 48,
                      ),
                      Text(
                        '${weatherObject.temperature}\u2103',
                        style: Theme.of(context).textTheme.displaySmall,
                      )
                    ],
                  ),
                );
              },
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Text(e.toString()));
  }
}
