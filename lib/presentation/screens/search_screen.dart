import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:weather_app/application/providers.dart';

class SearchScreen extends ConsumerWidget {
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customCity = ref.watch(customCityProvider);
    return Scaffold(
      appBar: EasySearchBar(
          title: Text('City search'),
          onSearch: (searchText) {
            ref.read(customCityProvider.notifier).state = searchText;
          }),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(children: [
            const SizedBox(
              width: 48,
              height: 96,
            ),
            Text(
              'custom city is ${customCity}',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ]),
        ),
      ),
    );
  }
}
