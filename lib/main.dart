import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/state_provider/state-provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("build");

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StateProviderRiverpod(),
    );
  }
}
