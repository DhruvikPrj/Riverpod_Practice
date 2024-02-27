import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/future_provider/dummy_weather.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class WeatherScreen extends ConsumerWidget {
  WeatherScreen({super.key});

  final weatherProvider = FutureProvider((ref) => fetchWeatherReport());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<String> weatherData = ref.watch(weatherProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        title: const Text("Weather Screen"),
      ),
      body: Center(
        child: weatherData.when(
          data: (data) => Center(
            child: Text(
              data,
              style: const TextStyle(color: Colors.deepPurple, fontSize: 30),
            ),
          ),
          error: (error, stackTrace) =>
              Text(error.toString()), // Handle stack trace optionally
          loading: () => LoadingAnimationWidget.staggeredDotsWave(
            color: const Color.fromARGB(255, 10, 147, 178),
            size: 50,
          ),
        ),
      ),
    );
  }
}
