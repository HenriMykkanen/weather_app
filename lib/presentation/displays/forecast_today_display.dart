import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/application/forecast_provider.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/domain/forecast.dart';

class TodaysWeather extends ConsumerWidget {
  const TodaysWeather({super.key, required this.cityProvider});
  final StateProvider cityProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final city = ref.watch(cityProvider);
    final AsyncValue<Forecast> forecastToday =
        ref.watch(forecastProvider(city));
    return forecastToday.when(
        data: (data) {
          var day = data.forecastDays[0];

          return SizedBox(
            width: double.infinity,
            child: ListView.builder(
              itemCount: day.forecastByHour.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 96,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        DateFormat.Hm().format(
                            data.forecastDays[0].forecastByHour[index].time),
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      CachedNetworkImage(
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        imageUrl:
                            'https:${data.forecastDays[0].forecastByHour[index].weatherCondition.weatherIconUrl}',
                        width: 48,
                        height: 48,
                      ),
                      Text(
                        '${data.forecastDays[0].forecastByHour[index].temperature}\u2103',
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
