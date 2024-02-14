import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/domain/weather_condition.dart';
import 'package:weather_app/utilities/double_int_converter.dart';
import 'package:weather_app/utilities/epoch_datetime_converter.dart';

part 'forecast_hour_new.freezed.dart';
part 'forecast_hour_new.g.dart';

@freezed
class ForecastHourNew with _$ForecastHourNew {
  factory ForecastHourNew({
    @EpochDateTimeConverter()
    @JsonKey(name: 'time_epoch')
    required DateTime time,
    @DoubleIntConverter() @JsonKey(name: 'temp_c') required int temperature,
    @JsonKey(name: 'condition') required WeatherCondition weatherCondition,
  }) = _ForecastHourNew;

  factory ForecastHourNew.fromJson(Map<String, dynamic> json) =>
      _$ForecastHourNewFromJson(json);
}
