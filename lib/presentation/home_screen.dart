import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/constants/theme.dart';
import 'package:weather_app/presentation/current_weather.dart';
import 'package:weather_app/presentation/today_weather.dart';
import 'package:weather_app/presentation/upcoming_weather.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Expanded(flex: 4, child: CurrentWeather()),
                Expanded(flex: 1, child: TodaysWeather()),
                Expanded(flex: 3, child: UpcomingWeather()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
