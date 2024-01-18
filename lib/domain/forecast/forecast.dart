import 'package:intl/intl.dart';
// https://codewithandrea.com/articles/parse-json-dart/
// https://codewithandrea.com/articles/parse-json-dart-codegen-freezed/

class Forecast {
  Forecast({
    required this.time,
    required this.date,
    required this.temperature,
    required this.temperatureMin,
    required this.temperatureMax,
    required this.weatherType,
  });

  final String time;
  final String date;
  final int temperature;
  final int temperatureMin;
  final int temperatureMax;
  final String weatherType;

  factory Forecast.fromJSON(Map<String, dynamic> data) {
    final timestamp = data['dt'] as int;
    final time = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    final formattedTime = DateFormat.Hm().format(time); // Format to "18:00"
    final formattedDate = DateFormat('dd/MM').format(time); // Format to "30/08"

    final temperature = (data['main']['temp'] as num).toInt().round();
    final temperatureMin = (data['main']['temp_min'] as num).toInt().round();
    final temperatureMax = (data['main']['temp_max'] as num).toInt().round();

    final weatherType = data['weather'][0]['main'] as String;
    return Forecast(
      time: formattedTime,
      date: formattedDate,
      temperature: temperature,
      temperatureMin: temperatureMin,
      temperatureMax: temperatureMax,
      weatherType: weatherType,
    );
  }
}

class ForecastList {
  final List<Forecast> list;

  ForecastList(this.list);

  factory ForecastList.fromJSON(dynamic json) {
    final forecastListDynamic = json['list'] as List<dynamic>;
    final List<Forecast> forecasts = forecastListDynamic
        .map(
          (e) => Forecast.fromJSON(e),
        )
        .toList();
    return ForecastList(forecasts);
  }
}
