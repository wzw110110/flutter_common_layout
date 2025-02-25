
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart'; // 导入 riverpod_annotation

part 'counter_provider.g.dart';

@Riverpod(keepAlive: true)
class ClickCount extends _$ClickCount {
  @override
  int build() => 0;

  void increment() {
    state++;
  }
}


// final counterProvider = StateProvider<int>((ref) {
//   return 0;
// });

// class ClickCount extends Notifier<int> {
//   @override
//   int build() {
//     return 0;
//   }
//
//   void increment() {
//     state++;
//   }
//
// }

// final clickCounter = NotifierProvider<ClickCount,int>(() => ClickCount());