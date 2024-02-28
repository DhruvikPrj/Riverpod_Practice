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
    print("only this wisget builds");
    final count = ref.watch(counterStateProvider);

//if we want to listen value of provider and show something....
    ref.listen(
      counterStateProvider,
      (previous, next) {
        if (next == 10) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("You have Reached $next")));
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("StateProvider"),
        actions: [
          IconButton(
              onPressed: () {
                //reset value logic
                ref.invalidate(counterStateProvider);
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: //Consumer(
          // builder: (context, ref, child) {
          //   print("only this widget builds");
          //   int count = ref.watch(counterStateProvider);
          //   return
          Center(
        child: Text(
          count.toString(),
          style: const TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 25,
              fontWeight: FontWeight.w700),
        ),
      ),
      // },
      //),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //increment ways:
          //ref.read(counterStateProvider.notifier).state++;
          ref.read(counterStateProvider.notifier).update((state) => state + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// ref.watch is used to observ provider state inside the build method. 
// ref.read is used to read the provider value once.