import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'counter_notifier.g.dart';

@riverpod
class CounterNotifier extends _$CounterNotifier {
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
