import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/constants/theme.dart';
import 'package:weather_app/presentation/displays/current_weather_display.dart';
import 'package:weather_app/presentation/displays/forecast_today_display.dart';
import 'package:weather_app/presentation/displays/upcoming_forecast_display.dart';
import 'package:weather_app/application/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ColorfulSafeArea(
      color: colors(context).color3!.withOpacity(1),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mountain.jpg'), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: CurrentWeatherDisplay(
                                cityProvider: defaultCityProvider)),
                        Expanded(
                            flex: 1,
                            child: TodaysWeather(
                              cityProvider: defaultCityProvider,
                            )),
                        Expanded(
                          flex: 3,
                          child: UpcomingWeather(
                            cityProvider: defaultCityProvider,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/c');
                    },
                    child: const Icon(Icons.settings),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
