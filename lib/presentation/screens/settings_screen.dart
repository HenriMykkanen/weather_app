import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:weather_app/application/providers.dart';
import 'package:weather_app/constants/theme.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(appThemeProvider);
    final defaultCity = ref.watch(cityProvider);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SettingsList(
            darkTheme: SettingsThemeData(
              settingsListBackground: colors(context).color1,
            ),
            lightTheme: SettingsThemeData(
                settingsListBackground: colors(context).color1),
            sections: [
              SettingsSection(
                title: Text(
                  'Common',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                tiles: <SettingsTile>[
                  SettingsTile(
                    leading: const Icon(Icons.location_city),
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
                  SettingsTile.switchTile(
                    onToggle: (value) {
                      ref.read(appThemeProvider.notifier).state = value;
                    },
                    initialValue: isDarkTheme,
                    activeSwitchColor: colors(context).color3,
                    leading: const Icon(Icons.format_paint),
                    title: Text(
                      'Dark theme',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _editDefaultCity(BuildContext context, WidgetRef ref) {
  final defaultCityController =
      TextEditingController(text: ref.read(cityProvider));
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Edit Default City',
          style: TextStyle(color: colors(context).color2),
        ),
        content: TextField(
          controller: defaultCityController,
          style: TextStyle(color: colors(context).color2),
          decoration: const InputDecoration(labelText: 'Enter default city'),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              ref.read(cityProvider.notifier).state =
                  defaultCityController.text;
              Navigator.of(context).pop();
            },
            child: const Text('Save'),
          ),
        ],
      );
    },
  );
}
