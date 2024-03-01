import 'package:flutter/material.dart';

class Gellery extends StatelessWidget {
  const Gellery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Gellery"),
          ),
          body: const Center(child: Text("Gellery Screen"))),
    );
  }
}
