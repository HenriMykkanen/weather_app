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
    final upcomingWeather = ref.watch(forecastThreeDaysProvider(city));
    return upcomingWeather.when(
      data: (data) {
        return Column(
          children: [
            ...data.forecastThreeDays.asMap().entries.map(
              (index) {
                return Expanded(
                    child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Spacer(),
                      Expanded(
                        flex: 2,
                        child: Text(
                          DateFormat('dd/MM E')
                              .format(data.forecastThreeDays[index.key].date),
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: CachedNetworkImage(
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageUrl:
                              'https:${data.forecastThreeDays[index.key].weather.weatherIconURL}',
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '${data.forecastThreeDays[index.key].temperatureMax}\u2103/${data.forecastThreeDays[index.key].temperatureMin}\u2103',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                      ),
                      const Spacer()
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
      error: (e, _) => Text(
        e.toString(),
      ),
    );
  }
}
