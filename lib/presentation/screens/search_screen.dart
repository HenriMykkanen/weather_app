import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/application/providers.dart';
import 'package:weather_app/constants/theme.dart';
import 'package:weather_app/presentation/displays/current_weather_display.dart';
import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:weather_app/presentation/displays/forecast_today_display.dart';
import 'package:weather_app/presentation/displays/upcoming_forecast_display.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // This is used to see if a search has been performed for conditional rendering of widgets
    bool searchPerformed = ref.watch(searchStateProvider);
    return ColorfulSafeArea(
        color: colors(context).color3!,
        child: Scaffold(
            appBar: AppBarWithSearchSwitch(
              clearOnSubmit: true,
              keepAppBarColors: false,
              searchInputDecoration: const InputDecoration(
                  hintText: 'Search', border: InputBorder.none),
              titleTextStyle:
                  TextStyle(color: colors(context).color2, fontSize: 22),
              onSubmitted: (text) {
                if (text.isNotEmpty) {
                  ref.read(customCityProvider.notifier).state = text;
                  ref.read(searchStateProvider.notifier).state = true;
                }
              },
              animation: AppBarAnimationSlideLeft.call,
              appBarBuilder: (context) {
                return AppBar(
                  backgroundColor: colors(context).color1,
                  title: Text(
                    ('City search'),
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  iconTheme: IconThemeData(color: colors(context).color2),
                  actions: const [
                    AppBarSearchButton(),
                  ],
                );
              },
            ),
            // Search has been done so we render:
            body: searchPerformed
                ? Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          colors(context).color3!,
                          colors(context).color4!,
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        // TODO: These widgets should not try to render before a search has been made
                        child: SingleChildScrollView(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
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
                      ),
                    ),
                  )
                // Search has not been done so we render:
                : Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                        colors(context).color3!,
                        colors(context).color4!,
                      ])))));
  }
}
