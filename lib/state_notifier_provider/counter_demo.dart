//it is a provider that is used to listen and expose a StateNotifier.
//StateNotifierProvider along with StateNotifier is Riverpod's recommanded solution for managing state wich may change in reaction to a user interaction.
//Used for centralizzing the bussiness logic in a single place. Improving Maintainability over time.

import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterDemo extends StateNotifier<int>{
  CounterDemo() : super(0);
  void increment() {
    state++;
  }
}
