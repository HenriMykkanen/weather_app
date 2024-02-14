// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyWeather _$DailyWeatherFromJson(Map<String, dynamic> json) {
  return _DailyWeather.fromJson(json);
}

/// @nodoc
mixin _$DailyWeather {
  @DoubleIntConverter()
  @JsonKey(name: 'maxtemp_c')
  int get maxTemperature => throw _privateConstructorUsedError;
  @DoubleIntConverter()
  @JsonKey(name: 'mintemp_c')
  int get minTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition')
  WeatherCondition get weatherCondition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyWeatherCopyWith<DailyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWeatherCopyWith<$Res> {
  factory $DailyWeatherCopyWith(
          DailyWeather value, $Res Function(DailyWeather) then) =
      _$DailyWeatherCopyWithImpl<$Res, DailyWeather>;
  @useResult
  $Res call(
      {@DoubleIntConverter() @JsonKey(name: 'maxtemp_c') int maxTemperature,
      @DoubleIntConverter() @JsonKey(name: 'mintemp_c') int minTemperature,
      @JsonKey(name: 'condition') WeatherCondition weatherCondition});

  $WeatherConditionCopyWith<$Res> get weatherCondition;
}

/// @nodoc
class _$DailyWeatherCopyWithImpl<$Res, $Val extends DailyWeather>
    implements $DailyWeatherCopyWith<$Res> {
  _$DailyWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxTemperature = null,
    Object? minTemperature = null,
    Object? weatherCondition = null,
  }) {
    return _then(_value.copyWith(
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      minTemperature: null == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherConditionCopyWith<$Res> get weatherCondition {
    return $WeatherConditionCopyWith<$Res>(_value.weatherCondition, (value) {
      return _then(_value.copyWith(weatherCondition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyWeatherImplCopyWith<$Res>
    implements $DailyWeatherCopyWith<$Res> {
  factory _$$DailyWeatherImplCopyWith(
          _$DailyWeatherImpl value, $Res Function(_$DailyWeatherImpl) then) =
      __$$DailyWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DoubleIntConverter() @JsonKey(name: 'maxtemp_c') int maxTemperature,
      @DoubleIntConverter() @JsonKey(name: 'mintemp_c') int minTemperature,
      @JsonKey(name: 'condition') WeatherCondition weatherCondition});

  @override
  $WeatherConditionCopyWith<$Res> get weatherCondition;
}

/// @nodoc
class __$$DailyWeatherImplCopyWithImpl<$Res>
    extends _$DailyWeatherCopyWithImpl<$Res, _$DailyWeatherImpl>
    implements _$$DailyWeatherImplCopyWith<$Res> {
  __$$DailyWeatherImplCopyWithImpl(
      _$DailyWeatherImpl _value, $Res Function(_$DailyWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxTemperature = null,
    Object? minTemperature = null,
    Object? weatherCondition = null,
  }) {
    return _then(_$DailyWeatherImpl(
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      minTemperature: null == minTemperature
          ? _value.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      weatherCondition: null == weatherCondition
          ? _value.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyWeatherImpl implements _DailyWeather {
  _$DailyWeatherImpl(
      {@DoubleIntConverter()
      @JsonKey(name: 'maxtemp_c')
      required this.maxTemperature,
      @DoubleIntConverter()
      @JsonKey(name: 'mintemp_c')
      required this.minTemperature,
      @JsonKey(name: 'condition') required this.weatherCondition});

  factory _$DailyWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyWeatherImplFromJson(json);

  @override
  @DoubleIntConverter()
  @JsonKey(name: 'maxtemp_c')
  final int maxTemperature;
  @override
  @DoubleIntConverter()
  @JsonKey(name: 'mintemp_c')
  final int minTemperature;
  @override
  @JsonKey(name: 'condition')
  final WeatherCondition weatherCondition;

  @override
  String toString() {
    return 'DailyWeather(maxTemperature: $maxTemperature, minTemperature: $minTemperature, weatherCondition: $weatherCondition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyWeatherImpl &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature) &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, maxTemperature, minTemperature, weatherCondition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyWeatherImplCopyWith<_$DailyWeatherImpl> get copyWith =>
      __$$DailyWeatherImplCopyWithImpl<_$DailyWeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyWeatherImplToJson(
      this,
    );
  }
}

abstract class _DailyWeather implements DailyWeather {
  factory _DailyWeather(
      {@DoubleIntConverter()
      @JsonKey(name: 'maxtemp_c')
      required final int maxTemperature,
      @DoubleIntConverter()
      @JsonKey(name: 'mintemp_c')
      required final int minTemperature,
      @JsonKey(name: 'condition')
      required final WeatherCondition weatherCondition}) = _$DailyWeatherImpl;

  factory _DailyWeather.fromJson(Map<String, dynamic> json) =
      _$DailyWeatherImpl.fromJson;

  @override
  @DoubleIntConverter()
  @JsonKey(name: 'maxtemp_c')
  int get maxTemperature;
  @override
  @DoubleIntConverter()
  @JsonKey(name: 'mintemp_c')
  int get minTemperature;
  @override
  @JsonKey(name: 'condition')
  WeatherCondition get weatherCondition;
  @override
  @JsonKey(ignore: true)
  _$$DailyWeatherImplCopyWith<_$DailyWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
