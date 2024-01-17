import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/constants/theme.dart';
import 'package:weather_app/domain/forecast/forecast.dart';

class TodaysWeather extends ConsumerWidget {
  const TodaysWeather({super.key, required this.forecast});
  final Forecast forecast;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: colors(context).color2!),
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      height: 96,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 96,
            color: colors(context).color1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Now',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Icon(Icons.sunny),
                Text(
                  '-13\u2103',
                  style: Theme.of(context).textTheme.displaySmall,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
