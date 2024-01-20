class Weather {
  Weather({
    required this.time,
    required this.weatherType,
    required this.weatherIconURL,
  });

  final DateTime time;
  final String weatherType;
  final String weatherIconURL;
}
