import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/constants/theme.dart';

class CurrentWeather extends ConsumerWidget {
  const CurrentWeather(
      {super.key, required this.city, required this.currentTemperature});
  final String city;
  final double currentTemperature;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
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
          Text(
            '$currentTemperature\u2103',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
