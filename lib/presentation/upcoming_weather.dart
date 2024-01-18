import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/application/providers.dart';
import 'package:weather_app/constants/theme.dart';
import 'package:weather_app/domain/forecast/forecast.dart';

class UpcomingWeather extends ConsumerWidget {
  const UpcomingWeather({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final upcomingWeather = ref.watch(forecastFiveDaysProvider);
    return upcomingWeather.when(
      data: (data) {
        return ListView.builder(
            itemCount: (data.list.length / 8).ceil(),
            itemBuilder: (context, index) {
              final int targetIndex = index * 8;
              final weatherObject = data.list[targetIndex];
              if (index == 0) {
                Forecast firstItem = data.list[0];
                return Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    border: Border.all(color: colors(context).color2!),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            firstItem.date,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                        child: CachedNetworkImage(
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageUrl:
                              "http://openweathermap.org/img/wn/${weatherObject.weatherIcon}@2x.png",
                          width: 48,
                          height: 48,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              '${firstItem.temperatureMax}\u2103/${firstItem.temperatureMin}\u2103',
                              style: Theme.of(context).textTheme.displaySmall),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    border: Border.all(color: colors(context).color2!),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            weatherObject.date,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                        child: CachedNetworkImage(
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageUrl:
                              "http://openweathermap.org/img/wn/${weatherObject.weatherIcon}@2x.png",
                          width: 48,
                          height: 48,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              '${weatherObject.temperatureMax}\u2103/${weatherObject.temperatureMin}\u2103',
                              style: Theme.of(context).textTheme.displaySmall),
                        ),
                      ),
                    ],
                  ),
                );
              }
            });
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (e, _) => Text(e.toString()),
    );
  }
}
