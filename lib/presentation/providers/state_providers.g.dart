// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isDarkModeHash() => r'bc24cb217574092ff7d8e57ea69090f74f3ed5d6';

/// See also [IsDarkMode].
@ProviderFor(IsDarkMode)
final isDarkModeProvider =
    AutoDisposeNotifierProvider<IsDarkMode, bool>.internal(
  IsDarkMode.new,
  name: r'isDarkModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isDarkModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IsDarkMode = AutoDisposeNotifier<bool>;
String _$currentIndexDrawerHash() =>
    r'19359d5d138f705fdbe6e10de0ff170e4df9a645';

/// See also [CurrentIndexDrawer].
@ProviderFor(CurrentIndexDrawer)
final currentIndexDrawerProvider =
    NotifierProvider<CurrentIndexDrawer, int>.internal(
  CurrentIndexDrawer.new,
  name: r'currentIndexDrawerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentIndexDrawerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentIndexDrawer = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
