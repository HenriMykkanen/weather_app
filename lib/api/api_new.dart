class WeatherMapAPI {
  WeatherMapAPI(this.apiKey);
  final String apiKey;

  static const String _apiBaseUrl = "api.weatherapi.com";
  static const String _apiPath = "/v1/";

  Uri forecastNow(city) => _buildUri(
        endpoint: "forecast.json",
        parametersBuilder: () => cityQueryParameters(city),
      );

  Uri _buildUri({
    required String endpoint,
    required Map<String, dynamic> Function() parametersBuilder,
  }) {
    return Uri(
      scheme: "https",
      host: _apiBaseUrl,
      path: "$_apiPath$endpoint",
      queryParameters: parametersBuilder(),
    );
  }

  Map<String, dynamic> cityQueryParameters(String city) => {
        "key": apiKey,
        "q": city,
        "days": "2",
        "aqi": "no",
        "alerts": "no",
      };
}
