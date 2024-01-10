import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/styling/theme.dart';
import 'package:weather_app/widgets/ScaffoldWithNavbar.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

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
              height: 48,
            ),
            Container(
              decoration: BoxDecoration(
                color: colors(context).color2,
                borderRadius: BorderRadius.circular(8),
              ),
              width: double.infinity,
              height: 192,
            ),
            Switch(
                activeColor: Colors.orange,
                onChanged: (value) {
                  ref.read(appThemeProvider.notifier).state = value;
                },
                value: isDarkTheme)
          ]),
        ),
      ),
    );
  }
}
