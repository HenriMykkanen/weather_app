import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/application/providers.dart';
import 'package:weather_app/constants/theme.dart';
import 'package:weather_app/domain/forecast/forecast.dart';

class TodaysWeather extends ConsumerWidget {
  const TodaysWeather({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherToday = ref.watch(forecastFiveDaysProvider);
    return weatherToday.when(
        data: (data) {
          return Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: colors(context).color2!),
              borderRadius: BorderRadius.circular(8),
            ),
            width: double.infinity,
            height: 96,
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
                        '${weatherObject.time}',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(weatherObject.weatherType),
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
