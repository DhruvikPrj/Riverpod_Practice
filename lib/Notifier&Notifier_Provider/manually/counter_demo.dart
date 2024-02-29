import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/Notifier&Notifier_Provider/manually/counter_notifier.dart';

class NotifierAndNotifierProvider extends ConsumerWidget {
  const NotifierAndNotifierProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Notifier & NotifierProvider"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                counter.toString(),
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        ref.read(counterProvider.notifier).increment();
                      },
                      child: const Text("+")),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        ref.read(counterProvider.notifier).decrement();
                      },
                      child: const Text("-")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
