import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/future_provider/future_provider.dart';
import 'package:riverpod_practice/state_provider/state-provider.dart';
import 'package:appearance/appearance.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesManager.instance.init();
  runApp(const MyApp());
}

// void main() {
//   runApp(const ProviderScope(child: MyApp()));
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    print("build");

    return BuildWithAppearance(
      initial:
          ThemeMode.light, // optional : default value is [ThemeMode.system]
      builder: (context) => MaterialApp(
        home: MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: Appearance.of(context)?.mode,
          theme: ThemeData(
            brightness: Brightness.light,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          home: const MyFutureProvider(),
        ),
      ),
    );
  }
}
