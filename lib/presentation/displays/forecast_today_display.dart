import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/application/providers.dart';
import 'package:weather_app/constants/theme.dart';
import 'package:intl/intl.dart';

class TodaysWeather extends ConsumerWidget {
  const TodaysWeather({super.key, required this.cityProvider});
  final StateProvider cityProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final city = ref.watch(cityProvider);
    final weatherToday = ref.watch(forecastDayProvider(city));
    return weatherToday.when(
        data: (data) {
          return SizedBox(
            width: double.infinity,
            child: ListView.builder(
              // TODO: Should make this only return hours in the future instead of a whole 00-23h cycle
              itemCount: data.forecastByHour.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 96,
                  color: colors(context).color1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        DateFormat.Hm().format(data.forecastByHour[index].time),
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      CachedNetworkImage(
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        imageUrl:
                            'https:${data.forecastByHour[index].weather.weatherIconURL}',
                        width: 48,
                        height: 48,
                      ),
                      Text(
                        '${data.forecastByHour[index].temperature}\u2103',
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
