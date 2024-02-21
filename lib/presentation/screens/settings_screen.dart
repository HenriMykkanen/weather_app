import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:weather_app/application/providers.dart';
import 'package:weather_app/constants/theme.dart';
import 'package:weather_app/presentation/controllers/default_city_controller.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  void _editDefaultCity(BuildContext context, WidgetRef ref) {
    DefaultCityController.showEditDialog(context, ref);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(appThemeProvider);
    final defaultCity = ref.watch(defaultCityProvider);
    return ColorfulSafeArea(
      color: colors(context).color2!.withOpacity(1),
      child: Scaffold(
        body: Center(
          child: SettingsList(
            darkTheme: SettingsThemeData(
              settingsListBackground: colors(context).color2,
            ),
            lightTheme: SettingsThemeData(
                settingsListBackground: colors(context).color2),
            sections: [
              SettingsSection(
                title: Text(
                  'Settings',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                tiles: <SettingsTile>[
                  SettingsTile(
                    leading: const Icon(Icons.location_city),
                    trailing: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Default city',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    value: Text(
                      defaultCity,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    onPressed: (context) => _editDefaultCity(context, ref),
                  ),
                  // SettingsTile.switchTile(
                  //   onToggle: (value) {
                  //     ref.read(appThemeProvider.notifier).state = value;
                  //   },
                  //   initialValue: isDarkTheme,
                  //   activeSwitchColor: colors(context).color2,
                  //   leading: const Icon(Icons.format_paint),
                  //   title: Text(
                  //     'Dark theme',
                  //     style: Theme.of(context).textTheme.displaySmall,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
