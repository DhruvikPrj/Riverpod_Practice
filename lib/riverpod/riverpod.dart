import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stringprovider = Provider<String>((ref) => "I'm Riverpod.");

class MyRiverpod extends ConsumerWidget {
  const MyRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String data = ref.read(stringprovider);
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            data,
            style: const TextStyle(color: Colors.amberAccent, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
