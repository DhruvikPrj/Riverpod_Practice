import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/Filtering_Widget_With_Select/user.dart';
import 'package:riverpod_practice/Filtering_Widget_With_Select/user_notifier.dart';

final userProvider = StateNotifierProvider<UserNotiofier, User>(
    (ref) => UserNotiofier(const User("Raj", "Patan")));

class FilterWidget extends ConsumerWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final userData = ref.watch(userProvider);
    final userData = ref.watch(userProvider.select((value) => value.name));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Filtering Widget With Select"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                onSubmitted: (value) =>
                    ref.read(userProvider.notifier).updateName(value),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                  onSubmitted: (value) =>
                      ref.read(userProvider.notifier).updateAddress(value)),
              const SizedBox(height: 20),
              Text(userData),
            ],
          ),
        ),
      ),
    );
  }
}
