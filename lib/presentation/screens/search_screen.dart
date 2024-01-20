import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/application/providers.dart';
import 'package:weather_app/presentation/displays/current_weather_display.dart';
import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';

class SearchScreen extends ConsumerWidget {
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBarWithSearchSwitch(
        onSubmitted: (text) {
          ref.read(customCityProvider.notifier).state = text;
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
          child: Column(children: [
            Expanded(
                flex: 3,
                child: CurrentWeatherDisplay(cityProvider: customCityProvider))
          ]),
        ),
      ),
    ));
  }
}
