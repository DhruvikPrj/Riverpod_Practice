//StateProvider is great for storing simple text objects that can change.
//It is Ideal for storing simple stste variables,such as enums, strings , booleans, and numbers.
//if have any complex data , use StateNotifierProvider.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateProvider = StateProvider<int>((ref) => 0);

class StateProviderRiverpod extends ConsumerWidget {
  const StateProviderRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("All Widget Builds");
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          print("only this widget builds");
          int count = ref.watch(counterStateProvider);
          return Center(
            child: Text(
              count.toString(),
              style: const TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterStateProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
