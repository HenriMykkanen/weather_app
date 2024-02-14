// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_day_new.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastDayNew _$ForecastDayNewFromJson(Map<String, dynamic> json) {
  return _ForecastDayNew.fromJson(json);
}

/// @nodoc
mixin _$ForecastDayNew {
  @EpochDateTimeConverter()
  @JsonKey(name: 'date_epoch')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'day')
  DailyWeather get dailyWeather => throw _privateConstructorUsedError;
  List<ForecastHourNew> get forecastByHour =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastDayNewCopyWith<ForecastDayNew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayNewCopyWith<$Res> {
  factory $ForecastDayNewCopyWith(
          ForecastDayNew value, $Res Function(ForecastDayNew) then) =
      _$ForecastDayNewCopyWithImpl<$Res, ForecastDayNew>;
  @useResult
  $Res call(
      {@EpochDateTimeConverter() @JsonKey(name: 'date_epoch') DateTime date,
      @JsonKey(name: 'day') DailyWeather dailyWeather,
      List<ForecastHourNew> forecastByHour});

  $DailyWeatherCopyWith<$Res> get dailyWeather;
}

/// @nodoc
class _$ForecastDayNewCopyWithImpl<$Res, $Val extends ForecastDayNew>
    implements $ForecastDayNewCopyWith<$Res> {
  _$ForecastDayNewCopyWithImpl(this._value, this._then);

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
              as List<ForecastHourNew>,
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
abstract class _$$ForecastDayNewImplCopyWith<$Res>
    implements $ForecastDayNewCopyWith<$Res> {
  factory _$$ForecastDayNewImplCopyWith(_$ForecastDayNewImpl value,
          $Res Function(_$ForecastDayNewImpl) then) =
      __$$ForecastDayNewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@EpochDateTimeConverter() @JsonKey(name: 'date_epoch') DateTime date,
      @JsonKey(name: 'day') DailyWeather dailyWeather,
      List<ForecastHourNew> forecastByHour});

  @override
  $DailyWeatherCopyWith<$Res> get dailyWeather;
}

/// @nodoc
class __$$ForecastDayNewImplCopyWithImpl<$Res>
    extends _$ForecastDayNewCopyWithImpl<$Res, _$ForecastDayNewImpl>
    implements _$$ForecastDayNewImplCopyWith<$Res> {
  __$$ForecastDayNewImplCopyWithImpl(
      _$ForecastDayNewImpl _value, $Res Function(_$ForecastDayNewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? dailyWeather = null,
    Object? forecastByHour = null,
  }) {
    return _then(_$ForecastDayNewImpl(
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
              as List<ForecastHourNew>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDayNewImpl implements _ForecastDayNew {
  _$ForecastDayNewImpl(
      {@EpochDateTimeConverter()
      @JsonKey(name: 'date_epoch')
      required this.date,
      @JsonKey(name: 'day') required this.dailyWeather,
      final List<ForecastHourNew> forecastByHour = const []})
      : _forecastByHour = forecastByHour;

  factory _$ForecastDayNewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDayNewImplFromJson(json);

  @override
  @EpochDateTimeConverter()
  @JsonKey(name: 'date_epoch')
  final DateTime date;
  @override
  @JsonKey(name: 'day')
  final DailyWeather dailyWeather;
  final List<ForecastHourNew> _forecastByHour;
  @override
  @JsonKey()
  List<ForecastHourNew> get forecastByHour {
    if (_forecastByHour is EqualUnmodifiableListView) return _forecastByHour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecastByHour);
  }

  @override
  String toString() {
    return 'ForecastDayNew(date: $date, dailyWeather: $dailyWeather, forecastByHour: $forecastByHour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDayNewImpl &&
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
  _$$ForecastDayNewImplCopyWith<_$ForecastDayNewImpl> get copyWith =>
      __$$ForecastDayNewImplCopyWithImpl<_$ForecastDayNewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDayNewImplToJson(
      this,
    );
  }
}

abstract class _ForecastDayNew implements ForecastDayNew {
  factory _ForecastDayNew(
      {@EpochDateTimeConverter()
      @JsonKey(name: 'date_epoch')
      required final DateTime date,
      @JsonKey(name: 'day') required final DailyWeather dailyWeather,
      final List<ForecastHourNew> forecastByHour}) = _$ForecastDayNewImpl;

  factory _ForecastDayNew.fromJson(Map<String, dynamic> json) =
      _$ForecastDayNewImpl.fromJson;

  @override
  @EpochDateTimeConverter()
  @JsonKey(name: 'date_epoch')
  DateTime get date;
  @override
  @JsonKey(name: 'day')
  DailyWeather get dailyWeather;
  @override
  List<ForecastHourNew> get forecastByHour;
  @override
  @JsonKey(ignore: true)
  _$$ForecastDayNewImplCopyWith<_$ForecastDayNewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
