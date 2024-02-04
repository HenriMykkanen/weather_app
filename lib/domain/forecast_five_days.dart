import 'package:weather_app/domain/forecast_day.dart';

class ForecastThreeDays {
  ForecastThreeDays(this.forecastThreeDays);

  final List<ForecastDay> forecastThreeDays;

  factory ForecastThreeDays.fromJSON(Map<String, dynamic> json) {
    // Calls the ForecastDay.fromJSON 5 times and passes the index from here to the ForecastDay.fromJSON method
    final forecastdays =
        List.generate(3, (index) => ForecastDay.fromJSON(json, index));
    return ForecastThreeDays(forecastdays);
  }
}
