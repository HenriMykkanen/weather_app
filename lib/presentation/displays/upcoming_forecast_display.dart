import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/application/providers.dart';

class UpcomingWeather extends ConsumerWidget {
  const UpcomingWeather({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final upcomingWeather = ref.watch(forecastFiveDaysProvider);
    return upcomingWeather.when(
      data: (data) {
        return ListView.builder(
            itemCount: (data.forecastFiveDays.length),
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            DateFormat('dd/MM')
                                .format(data.forecastFiveDays[0].date),
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
                              'https:${data.forecastFiveDays[0].weather.weatherIconURL}',
                          width: 48,
                          height: 48,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              '${data.forecastFiveDays[0].temperatureMax}\u2103/${data.forecastFiveDays[0].temperatureMin}\u2103',
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
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            DateFormat('dd/MM')
                                .format(data.forecastFiveDays[index].date),
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
                              'https:${data.forecastFiveDays[index].weather.weatherIconURL}',
                          width: 48,
                          height: 48,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              '${data.forecastFiveDays[index].temperatureMax}\u2103/${data.forecastFiveDays[index].temperatureMin}\u2103',
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
