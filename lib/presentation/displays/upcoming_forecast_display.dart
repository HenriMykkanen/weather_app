import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/application/providers.dart';

class UpcomingWeather extends ConsumerWidget {
  const UpcomingWeather({super.key, required this.cityProvider});
  final StateProvider cityProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final city = ref.watch(cityProvider);
    final upcomingWeather = ref.watch(forecastFiveDaysProvider(city));
    return upcomingWeather.when(
      data: (data) {
        return Column(
          children: [
            ...data.forecastFiveDays.asMap().entries.map(
              (index) {
                return Expanded(
                    child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            DateFormat('dd/MM')
                                .format(data.forecastFiveDays[index.key].date),
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
                              'https:${data.forecastFiveDays[index.key].weather.weatherIconURL}',
                          width: 48,
                          height: 48,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              '${data.forecastFiveDays[index.key].temperatureMax}\u2103/${data.forecastFiveDays[index.key].temperatureMin}\u2103',
                              style: Theme.of(context).textTheme.displaySmall),
                        ),
                      ),
                    ],
                  ),
                ));
              },
            )
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
