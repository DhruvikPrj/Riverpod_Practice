import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends Notifier<int> {
  @override
  int build() {
    //we can use ref.watch and ref.read here.
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

final counterProvider =
    NotifierProvider<CounterNotifier, int>(() => CounterNotifier());
