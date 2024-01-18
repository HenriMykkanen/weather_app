import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:weather_app/constants/theme.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isDarkTheme = ref.watch(appThemeProvider);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SettingsList(
            sections: [
              SettingsSection(
                title: Text(
                  'Common',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: Icon(Icons.language),
                    title: Text(
                      'Language',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    value: Text(
                      'English',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                  SettingsTile.switchTile(
                    onToggle: (value) {
                      ref.read(appThemeProvider.notifier).state = value;
                    },
                    initialValue: isDarkTheme,
                    leading: Icon(Icons.format_paint),
                    title: Text(
                      'Enable custom theme',
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
