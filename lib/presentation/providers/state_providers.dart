

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state_providers.g.dart';

@riverpod
class IsDarkMode extends _$IsDarkMode {
  @override
  bool build() => false;

  void toggleDarkMode(){
    state = !state;
  }

}