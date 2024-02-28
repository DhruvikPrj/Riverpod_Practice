import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateProvider<bool>((ref) => true);

class ThemeChange extends ConsumerWidget {
  const ThemeChange({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isLightTheme ? ThemeData.light() : ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Theme Change"),
        ),
        body: Center(
            child: Switch(
          thumbIcon: isLightTheme
              ? MaterialStateProperty.all(const Icon(
                  Icons.sunny,
                  color: Color.fromARGB(255, 235, 154, 15),
                ))
              : MaterialStateProperty.all(const Icon(
                  Icons.dark_mode,
                  color: Color.fromARGB(255, 46, 5, 97),
                )),
          value: isLightTheme,
          onChanged: (value) => ref.read(themeProvider.notifier).state = value,
        )),
      ),
    );
  }
}
