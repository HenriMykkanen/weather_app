import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/application/providers.dart';
import 'package:weather_app/constants/theme.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CurrentWeather extends ConsumerWidget {
  const CurrentWeather({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final city = ref.watch(cityProvider);
    final weatherToday = ref.watch(forecastProvider);
    return weatherToday.when(
      data: (data) {
        return Expanded(
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: colors(context).color2!),
                borderRadius: BorderRadius.circular(8),
              ),
              width: double.infinity,
              height: 192,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    city,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  CachedNetworkImage(
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      imageUrl:
                          "http://openweathermap.org/img/wn/${data.weatherIcon}@2x.png"),
                  Text(
                    '${data.temperature}\u2103',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              )),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (e, _) => Text(e.toString()),
    );
  }
}
