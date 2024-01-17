import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/application/providers.dart';
import 'package:weather_app/domain/forecast/forecast.dart';

class fromJSONTestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Forecast Display'),
        ),
        body: Center(child: ForecastDisplay()),
      ),
    );
  }
}

class ForecastDisplay extends ConsumerWidget {
  const ForecastDisplay({super.key});

  // @override
  // Widget build(BuildContext context, WidgetRef ref) {
  //   final forecastList = ref.watch(forecastProvider);
  //   return forecastList.when(
  //     data: (data) {
  //       final forecast = data.temperature;
  //       return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
  //         Text(
  //           'Time: $forecast',
  //           style: TextStyle(fontSize: 20),
  //         ),
  //       ]);
  //     },
  //     loading: () => const Center(child: CircularProgressIndicator()),
  //     error: (e, _) => Text(e.toString()),
  //   );
  // }
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forecastList = ref.watch(forecastFiveDaysProvider);
    return forecastList.when(
      data: (data) {
        return ListView.builder(
            itemCount: data.list.length,
            itemBuilder: (context, index) {
              final forecast = data.list[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Time: ${forecast.time}'),
                  Text('Temp: ${forecast.temperature}'),
                ],
              );
            });
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Text(e.toString()),
    );
  }
}
