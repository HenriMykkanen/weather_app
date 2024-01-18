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
        return Expanded(
          child: ListView.builder(
              itemCount: (data.list.length / 8).ceil(),
              itemBuilder: (context, index) {
                final int targetIndex = index * 8;
                final weatherObject = data.list[targetIndex];
                if (index == 0) {
                  Forecast firstItem = data.list[0];
                  return Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: colors(context).color2!),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            firstItem.date,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                        CachedNetworkImage(
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                            imageUrl:
                                "http://openweathermap.org/img/wn/${weatherObject.weatherIcon}@2x.png"),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                                '${firstItem.temperatureMin}\u2103/${firstItem.temperatureMin}\u2103',
                                style:
                                    Theme.of(context).textTheme.displaySmall),
                          ),
                        ),
                      ],
                    ),
                  );
                } else
                  return Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: colors(context).color2!),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            weatherObject.date,
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        ),
                        CachedNetworkImage(
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                            imageUrl:
                                "http://openweathermap.org/img/wn/${weatherObject.weatherIcon}@2x.png"),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                                '${weatherObject.temperatureMin}\u2103/${weatherObject.temperatureMin}\u2103',
                                style:
                                    Theme.of(context).textTheme.displaySmall),
                          ),
                        ),
                      ],
                    ),
                  );
              }),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (e, _) => Text(e.toString()),
    );
  }
}
