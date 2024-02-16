import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/weather_condition.dart';
import 'package:weather_app/utilities/double_int_converter.dart';
import 'package:weather_app/utilities/epoch_datetime_converter.dart';

part 'forecast_hour.freezed.dart';
part 'forecast_hour.g.dart';

@freezed
class ForecastHour with _$ForecastHour {
  factory ForecastHour({
    @EpochDateTimeConverter()
    @JsonKey(name: 'time_epoch')
    required DateTime time,
    @DoubleIntConverter() @JsonKey(name: 'temp_c') required int temperature,
    @JsonKey(name: 'condition') required WeatherCondition weatherCondition,
  }) = _ForecastHour;

  factory ForecastHour.fromJson(Map<String, dynamic> json) =>
      _$ForecastHourFromJson(json);
}
