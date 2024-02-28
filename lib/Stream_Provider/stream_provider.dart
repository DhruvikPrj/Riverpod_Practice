//it is as same as FutureProvider
//But it does not depend on future, it depends on stream.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamProvider = StreamProvider<int>((ref) {
  return Stream.periodic(
    const Duration(seconds: 1),
    (computationCount) => computationCount,
  );
});

class MyStreamProvider extends ConsumerWidget {
  const MyStreamProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamData = ref.watch(streamProvider);
    return Scaffold(
      body: streamData.when(data: (data) {
        return Center(
          child: Text(data.toString()),
        );
      }, error: (error, stackTrace) {
        return Text(error.toString());
      }, loading: () {
        return const CircularProgressIndicator();
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
