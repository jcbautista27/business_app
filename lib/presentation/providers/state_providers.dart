

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

@Riverpod(keepAlive: true)
class CurrentIndexDrawer extends _$CurrentIndexDrawer {
  @override
   int build() => 0;

   void changeCurrentIndex(int index){
    state = index;
   }
}