// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$forecastHash() => r'adb043524f8466f06180a2195f3abf2a07ccf175';

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

/// See also [forecast].
@ProviderFor(forecast)
const forecastProvider = ForecastFamily();

/// See also [forecast].
class ForecastFamily extends Family<AsyncValue<Forecast>> {
  /// See also [forecast].
  const ForecastFamily();

  /// See also [forecast].
  ForecastProvider call(
    String city,
  ) {
    return ForecastProvider(
      city,
    );
  }

  @override
  ForecastProvider getProviderOverride(
    covariant ForecastProvider provider,
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
  String? get name => r'forecastProvider';
}

/// See also [forecast].
class ForecastProvider extends FutureProvider<Forecast> {
  /// See also [forecast].
  ForecastProvider(
    String city,
  ) : this._internal(
          (ref) => forecast(
            ref as ForecastRef,
            city,
          ),
          from: forecastProvider,
          name: r'forecastProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$forecastHash,
          dependencies: ForecastFamily._dependencies,
          allTransitiveDependencies: ForecastFamily._allTransitiveDependencies,
          city: city,
        );

  ForecastProvider._internal(
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
    FutureOr<Forecast> Function(ForecastRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ForecastProvider._internal(
        (ref) => create(ref as ForecastRef),
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
  FutureProviderElement<Forecast> createElement() {
    return _ForecastProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ForecastProvider && other.city == city;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, city.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ForecastRef on FutureProviderRef<Forecast> {
  /// The parameter `city` of this provider.
  String get city;
}

class _ForecastProviderElement extends FutureProviderElement<Forecast>
    with ForecastRef {
  _ForecastProviderElement(super.provider);

  @override
  String get city => (origin as ForecastProvider).city;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
