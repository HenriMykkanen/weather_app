class Weather {
  Weather(
      {required this.time,
      required this.weatherType,
      required this.weatherIconURL,
      this.wind});

  final DateTime time;
  final String weatherType;
  final String weatherIconURL;
  final double? wind;
}
