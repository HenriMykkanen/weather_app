import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/data/forecast_repository.dart';


final defaultCityProvider = StateProvider<String>((ref) {
  return 'Kuopio';
});

final customCityProvider = StateProvider<String>((ref) {
  String customCity = '';
  return customCity;
});

final searchStateProvider = StateProvider<bool>((ref) {
  bool searchPerformed = false;
  return searchPerformed;
});
