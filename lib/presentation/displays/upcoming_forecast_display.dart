import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/application/forecast_provider.dart';
import 'package:weather_app/domain/forecast.dart';

class UpcomingWeather extends ConsumerWidget {
  const UpcomingWeather({super.key, required this.cityProvider});
  final StateProvider cityProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final city = ref.watch(cityProvider);
    final AsyncValue<Forecast> forecast = ref.watch(forecastProvider(city));
    return forecast.when(
      data: (data) {
        return Column(
          children: [
            ...data.forecastDays.asMap().entries.map(
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
                              .format(data.forecastDays[index.key].date),
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
                              'https:${data.forecastDays[index.key].dailyWeather.weatherCondition.weatherIconUrl}',
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '${data.forecastDays[index.key].dailyWeather.maxTemperature}\u2103/${data.forecastDays[index.key].dailyWeather.minTemperature}\u2103',
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
