import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/application/providers.dart';
import 'package:weather_app/constants/theme.dart';

class DefaultCityController {
  static void showEditDialog(BuildContext context, WidgetRef ref) {
    final defaultCityController =
        TextEditingController(text: ref.read(defaultCityProvider));
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
                ref.read(defaultCityProvider.notifier).state =
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
}
