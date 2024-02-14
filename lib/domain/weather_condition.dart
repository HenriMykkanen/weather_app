import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_condition.freezed.dart';
part 'weather_condition.g.dart';

@freezed
class WeatherCondition with _$WeatherCondition {
  factory WeatherCondition({
    @JsonKey(name: 'text') required String weatherType,
    @JsonKey(name: 'icon') required String weatherIconUrl,
  }) = _WeatherCondition;

  factory WeatherCondition.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionFromJson(json);
}
