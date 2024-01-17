import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/constants/theme.dart';
import 'package:weather_app/presentation/current_weather.dart';
import 'package:weather_app/presentation/today_weather.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                CurrentWeather(),
                TodaysWeather(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
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
                                '11/01 Today',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                            Expanded(child: Icon(Icons.cloud)),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('-18\u2103/-10\u2103',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                                '11/01 Tomorrow',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                            Expanded(child: Icon(Icons.cloud)),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('-18\u2103/-10\u2103',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                                '11/01 Today',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                            Expanded(child: Icon(Icons.cloud)),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('-18\u2103/-10\u2103',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                                '11/01 Today',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                            Expanded(child: Icon(Icons.cloud)),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('-18\u2103/-10\u2103',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                                '11/01 Today',
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                            Expanded(child: Icon(Icons.cloud)),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('-18\u2103/-10\u2103',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
