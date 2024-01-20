import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/application/providers.dart';
import 'package:weather_app/presentation/displays/current_weather_display.dart';
import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:weather_app/presentation/displays/forecast_today_display.dart';
import 'package:weather_app/presentation/displays/upcoming_forecast_display.dart';

class SearchScreen extends ConsumerWidget {
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBarWithSearchSwitch(
        onSubmitted: (text) {
          if (text != null && text.isNotEmpty) {
            ref.read(customCityProvider.notifier).state = text;
          }
        },
        animation: AppBarAnimationSlideLeft.call,
        appBarBuilder: (context) {
          return AppBar(
            title: Text(('City search')),
            actions: const [
              AppBarSearchButton(),
            ],
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          // TODO: These widgets should not try to render before a search has been made
          child: Column(children: [
            Expanded(
                flex: 3,
                child: CurrentWeatherDisplay(
                  cityProvider: customCityProvider,
                )),
            Expanded(
                flex: 2,
                child: TodaysWeather(
                  cityProvider: customCityProvider,
                )),
            Expanded(
                flex: 3,
                child: UpcomingWeather(
                  cityProvider: customCityProvider,
                )),
          ]),
        ),
      ),
    ));
  }
}
