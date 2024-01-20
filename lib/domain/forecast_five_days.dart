import 'package:weather_app/domain/forecast_day.dart';

class ForecastFiveDays {
  ForecastFiveDays(this.forecastFiveDays);

  final List<ForecastDay> forecastFiveDays;

  factory ForecastFiveDays.fromJSON(Map<String, dynamic> json) {
    // Calls the ForecastDay.fromJSON 5 times and passes the index from here to the ForecastDay.fromJSON method
    final forecastdays =
        List.generate(5, (index) => ForecastDay.fromJSON(json, index));
    return ForecastFiveDays(forecastdays);
  }
}
