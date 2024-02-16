// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastDay _$ForecastDayFromJson(Map<String, dynamic> json) {
  return _ForecastDay.fromJson(json);
}

/// @nodoc
mixin _$ForecastDay {
  @EpochDateTimeConverter()
  @JsonKey(name: 'date_epoch')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'day')
  DailyWeather get dailyWeather => throw _privateConstructorUsedError;
  @JsonKey(name: 'hour')
  List<ForecastHour> get forecastByHour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDayCopyWith<ForecastDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayCopyWith<$Res> {
  factory $ForecastDayCopyWith(
          ForecastDay value, $Res Function(ForecastDay) then) =
      _$ForecastDayCopyWithImpl<$Res, ForecastDay>;
  @useResult
  $Res call(
      {@EpochDateTimeConverter() @JsonKey(name: 'date_epoch') DateTime date,
      @JsonKey(name: 'day') DailyWeather dailyWeather,
      @JsonKey(name: 'hour') List<ForecastHour> forecastByHour});

  $DailyWeatherCopyWith<$Res> get dailyWeather;
}

/// @nodoc
class _$ForecastDayCopyWithImpl<$Res, $Val extends ForecastDay>
    implements $ForecastDayCopyWith<$Res> {
  _$ForecastDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dailyWeather = null,
    Object? forecastByHour = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dailyWeather: null == dailyWeather
          ? _value.dailyWeather
          : dailyWeather // ignore: cast_nullable_to_non_nullable
              as DailyWeather,
      forecastByHour: null == forecastByHour
          ? _value.forecastByHour
          : forecastByHour // ignore: cast_nullable_to_non_nullable
              as List<ForecastHour>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyWeatherCopyWith<$Res> get dailyWeather {
    return $DailyWeatherCopyWith<$Res>(_value.dailyWeather, (value) {
      return _then(_value.copyWith(dailyWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastDayImplCopyWith<$Res>
    implements $ForecastDayCopyWith<$Res> {
  factory _$$ForecastDayImplCopyWith(
          _$ForecastDayImpl value, $Res Function(_$ForecastDayImpl) then) =
      __$$ForecastDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@EpochDateTimeConverter() @JsonKey(name: 'date_epoch') DateTime date,
      @JsonKey(name: 'day') DailyWeather dailyWeather,
      @JsonKey(name: 'hour') List<ForecastHour> forecastByHour});

  @override
  $DailyWeatherCopyWith<$Res> get dailyWeather;
}

/// @nodoc
class __$$ForecastDayImplCopyWithImpl<$Res>
    extends _$ForecastDayCopyWithImpl<$Res, _$ForecastDayImpl>
    implements _$$ForecastDayImplCopyWith<$Res> {
  __$$ForecastDayImplCopyWithImpl(
      _$ForecastDayImpl _value, $Res Function(_$ForecastDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dailyWeather = null,
    Object? forecastByHour = null,
  }) {
    return _then(_$ForecastDayImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dailyWeather: null == dailyWeather
          ? _value.dailyWeather
          : dailyWeather // ignore: cast_nullable_to_non_nullable
              as DailyWeather,
      forecastByHour: null == forecastByHour
          ? _value._forecastByHour
          : forecastByHour // ignore: cast_nullable_to_non_nullable
              as List<ForecastHour>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDayImpl implements _ForecastDay {
  _$ForecastDayImpl(
      {@EpochDateTimeConverter()
      @JsonKey(name: 'date_epoch')
      required this.date,
      @JsonKey(name: 'day') required this.dailyWeather,
      @JsonKey(name: 'hour')
      final List<ForecastHour> forecastByHour = const []})
      : _forecastByHour = forecastByHour;

  factory _$ForecastDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDayImplFromJson(json);

  @override
  @EpochDateTimeConverter()
  @JsonKey(name: 'date_epoch')
  final DateTime date;
  @override
  @JsonKey(name: 'day')
  final DailyWeather dailyWeather;
  final List<ForecastHour> _forecastByHour;
  @override
  @JsonKey(name: 'hour')
  List<ForecastHour> get forecastByHour {
    if (_forecastByHour is EqualUnmodifiableListView) return _forecastByHour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecastByHour);
  }

  @override
  String toString() {
    return 'ForecastDay(date: $date, dailyWeather: $dailyWeather, forecastByHour: $forecastByHour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDayImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dailyWeather, dailyWeather) ||
                other.dailyWeather == dailyWeather) &&
            const DeepCollectionEquality()
                .equals(other._forecastByHour, _forecastByHour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, dailyWeather,
      const DeepCollectionEquality().hash(_forecastByHour));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastDayImplCopyWith<_$ForecastDayImpl> get copyWith =>
      __$$ForecastDayImplCopyWithImpl<_$ForecastDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDayImplToJson(
      this,
    );
  }
}

abstract class _ForecastDay implements ForecastDay {
  factory _ForecastDay(
          {@EpochDateTimeConverter()
          @JsonKey(name: 'date_epoch')
          required final DateTime date,
          @JsonKey(name: 'day') required final DailyWeather dailyWeather,
          @JsonKey(name: 'hour') final List<ForecastHour> forecastByHour}) =
      _$ForecastDayImpl;

  factory _ForecastDay.fromJson(Map<String, dynamic> json) =
      _$ForecastDayImpl.fromJson;

  @override
  @EpochDateTimeConverter()
  @JsonKey(name: 'date_epoch')
  DateTime get date;
  @override
  @JsonKey(name: 'day')
  DailyWeather get dailyWeather;
  @override
  @JsonKey(name: 'hour')
  List<ForecastHour> get forecastByHour;
  @override
  @JsonKey(ignore: true)
  _$$ForecastDayImplCopyWith<_$ForecastDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
