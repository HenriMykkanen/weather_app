import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchScreen extends ConsumerWidget {
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          ]),
        ),
      ),
    );
  }
}
