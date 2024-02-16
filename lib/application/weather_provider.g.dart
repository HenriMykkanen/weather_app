// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherNowHash() => r'2861ed6738a01b1f6f5f4485e6a93f5ab1e39ca0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [weatherNow].
@ProviderFor(weatherNow)
const weatherNowProvider = WeatherNowFamily();

/// See also [weatherNow].
class WeatherNowFamily extends Family<AsyncValue<CurrentWeather>> {
  /// See also [weatherNow].
  const WeatherNowFamily();

  /// See also [weatherNow].
  WeatherNowProvider call(
    String city,
  ) {
    return WeatherNowProvider(
      city,
    );
  }

  @override
  WeatherNowProvider getProviderOverride(
    covariant WeatherNowProvider provider,
  ) {
    return call(
      provider.city,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'weatherNowProvider';
}

/// See also [weatherNow].
class WeatherNowProvider extends FutureProvider<CurrentWeather> {
  /// See also [weatherNow].
  WeatherNowProvider(
    String city,
  ) : this._internal(
          (ref) => weatherNow(
            ref as WeatherNowRef,
            city,
          ),
          from: weatherNowProvider,
          name: r'weatherNowProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weatherNowHash,
          dependencies: WeatherNowFamily._dependencies,
          allTransitiveDependencies:
              WeatherNowFamily._allTransitiveDependencies,
          city: city,
        );

  WeatherNowProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.city,
  }) : super.internal();

  final String city;

  @override
  Override overrideWith(
    FutureOr<CurrentWeather> Function(WeatherNowRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WeatherNowProvider._internal(
        (ref) => create(ref as WeatherNowRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        city: city,
      ),
    );
  }

  @override
  FutureProviderElement<CurrentWeather> createElement() {
    return _WeatherNowProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherNowProvider && other.city == city;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, city.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WeatherNowRef on FutureProviderRef<CurrentWeather> {
  /// The parameter `city` of this provider.
  String get city;
}

class _WeatherNowProviderElement extends FutureProviderElement<CurrentWeather>
    with WeatherNowRef {
  _WeatherNowProviderElement(super.provider);

  @override
  String get city => (origin as WeatherNowProvider).city;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
