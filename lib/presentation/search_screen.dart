import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/constants/theme.dart';
import 'package:weather_app/domain/forecast/forecast.dart';
import 'package:weather_app/widgets/ScaffoldWithNavbar.dart';

class SearchScreen extends ConsumerWidget {
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isDarkTheme = ref.watch(appThemeProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(children: [
            const SizedBox(
              width: 48,
              height: 96,
            ),
            Text(
              'Search Screen',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Switch(
              activeColor: Colors.orange,
              onChanged: (value) {
                ref.read(appThemeProvider.notifier).state = value;
              },
              value: isDarkTheme,
            ),
          ]),
        ),
      ),
    );
  }
}
