import 'package:flutter/material.dart';
import 'package:riverpod_practice/future_provider/whether_screen.dart';

class MyFutureProvider extends StatelessWidget {
  const MyFutureProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text("Get Weather"),
      ),
      body: Center(
        child: _buildButton(context),
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WeatherScreen(),
              ));
        },
        child: const Text("Get Whether"));
  }
}
