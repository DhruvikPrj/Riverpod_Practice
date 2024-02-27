import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stringProvider = Provider<String>((ref) {
  return "Welcome in Riverpod";
});
void main(List<String> args) {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("build");
    return const MaterialApp(
      home: RiverpodPractice(),
    );
  }
}

class RiverpodPractice extends ConsumerWidget {
  const RiverpodPractice({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(ref.read(stringProvider));
    return Scaffold(
        body: Center(
            child: Container(
      width: 300,
      height: 200,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 2, 1, 26),
            Color.fromARGB(219, 13, 5, 166),
            Color.fromARGB(167, 50, 3, 116),
          ]),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
      child: Center(
          child: Text(
        ref.read(stringProvider),
        style: const TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
      )),
    )));
  }
}
