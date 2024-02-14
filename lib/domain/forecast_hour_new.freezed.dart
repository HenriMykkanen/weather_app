// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_hour_new.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastHourNew _$ForecastHourNewFromJson(Map<String, dynamic> json) {
  return _ForecastHourNew.fromJson(json);
}

/// @nodoc
mixin _$ForecastHourNew {
  @EpochDateTimeConverter()
  @JsonKey(name: 'time_epoch')
  DateTime get time => throw _privateConstructorUsedError;
  @DoubleIntConverter()
  @JsonKey(name: 'temp_c')
  int get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition')
  WeatherCondition get weatherCondition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastHourNewCopyWith<ForecastHourNew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastHourNewCopyWith<$Res> {
  factory $ForecastHourNewCopyWith(
          ForecastHourNew value, $Res Function(ForecastHourNew) then) =
      _$ForecastHourNewCopyWithImpl<$Res, ForecastHourNew>;
  @useResult
  $Res call(
      {@EpochDateTimeConverter() @JsonKey(name: 'time_epoch') DateTime time,
      @DoubleIntConverter() @JsonKey(name: 'temp_c') int temperature,
      @JsonKey(name: 'condition') WeatherCondition weatherCondition});

  $WeatherConditionCopyWith<$Res> get weatherCondition;
}

/// @nodoc
class _$ForecastHourNewCopyWithImpl<$Res, $Val extends ForecastHourNew>
    implements $ForecastHourNewCopyWith<$Res> {
  _$ForecastHourNewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? weatherCondition = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ForecastHourNewImplCopyWith<$Res>
    implements $ForecastHourNewCopyWith<$Res> {
  factory _$$ForecastHourNewImplCopyWith(_$ForecastHourNewImpl value,
          $Res Function(_$ForecastHourNewImpl) then) =
      __$$ForecastHourNewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@EpochDateTimeConverter() @JsonKey(name: 'time_epoch') DateTime time,
      @DoubleIntConverter() @JsonKey(name: 'temp_c') int temperature,
      @JsonKey(name: 'condition') WeatherCondition weatherCondition});

  @override
  $WeatherConditionCopyWith<$Res> get weatherCondition;
}

/// @nodoc
class __$$ForecastHourNewImplCopyWithImpl<$Res>
    extends _$ForecastHourNewCopyWithImpl<$Res, _$ForecastHourNewImpl>
    implements _$$ForecastHourNewImplCopyWith<$Res> {
  __$$ForecastHourNewImplCopyWithImpl(
      _$ForecastHourNewImpl _value, $Res Function(_$ForecastHourNewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? weatherCondition = null,
  }) {
    return _then(_$ForecastHourNewImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
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
class _$ForecastHourNewImpl implements _ForecastHourNew {
  _$ForecastHourNewImpl(
      {@EpochDateTimeConverter()
      @JsonKey(name: 'time_epoch')
      required this.time,
      @DoubleIntConverter() @JsonKey(name: 'temp_c') required this.temperature,
      @JsonKey(name: 'condition') required this.weatherCondition});

  factory _$ForecastHourNewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastHourNewImplFromJson(json);

  @override
  @EpochDateTimeConverter()
  @JsonKey(name: 'time_epoch')
  final DateTime time;
  @override
  @DoubleIntConverter()
  @JsonKey(name: 'temp_c')
  final int temperature;
  @override
  @JsonKey(name: 'condition')
  final WeatherCondition weatherCondition;

  @override
  String toString() {
    return 'ForecastHourNew(time: $time, temperature: $temperature, weatherCondition: $weatherCondition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastHourNewImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, time, temperature, weatherCondition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastHourNewImplCopyWith<_$ForecastHourNewImpl> get copyWith =>
      __$$ForecastHourNewImplCopyWithImpl<_$ForecastHourNewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastHourNewImplToJson(
      this,
    );
  }
}

abstract class _ForecastHourNew implements ForecastHourNew {
  factory _ForecastHourNew(
          {@EpochDateTimeConverter()
          @JsonKey(name: 'time_epoch')
          required final DateTime time,
          @DoubleIntConverter()
          @JsonKey(name: 'temp_c')
          required final int temperature,
          @JsonKey(name: 'condition')
          required final WeatherCondition weatherCondition}) =
      _$ForecastHourNewImpl;

  factory _ForecastHourNew.fromJson(Map<String, dynamic> json) =
      _$ForecastHourNewImpl.fromJson;

  @override
  @EpochDateTimeConverter()
  @JsonKey(name: 'time_epoch')
  DateTime get time;
  @override
  @DoubleIntConverter()
  @JsonKey(name: 'temp_c')
  int get temperature;
  @override
  @JsonKey(name: 'condition')
  WeatherCondition get weatherCondition;
  @override
  @JsonKey(ignore: true)
  _$$ForecastHourNewImplCopyWith<_$ForecastHourNewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
