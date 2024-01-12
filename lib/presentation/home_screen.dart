import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/constants/theme.dart';

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
                const SizedBox(
                  height: 24,
                ),
                Container(
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
                        'Kuopio',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Text(
                        '-13\u2103',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
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
                      Container(
                        width: 96,
                        color: colors(context).color1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '18:00',
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
                      Container(
                        width: 96,
                        color: colors(context).color1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '19:00',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            Icon(Icons.sunny),
                            Text(
                              '-15\u2103',
                              style: Theme.of(context).textTheme.displaySmall,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 96,
                        color: colors(context).color1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '20:00',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            Icon(Icons.sunny),
                            Text(
                              '-18\u2103',
                              style: Theme.of(context).textTheme.displaySmall,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 96,
                        color: colors(context).color1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '21:00',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            Icon(Icons.sunny),
                            Text(
                              '-20\u2103',
                              style: Theme.of(context).textTheme.displaySmall,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 48,
                  height: 48,
                ),
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
