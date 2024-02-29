// AutoGenrated Providers are auto Disposable, can take Multiple Parameters.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'riverpod_generator.g.dart';

//manually created riverpod
//final nameProvider = Provider<String>((ref) => 'dhruvik');

//Auto generated
@Riverpod(
    keepAlive:
        true) //Comes from riverpod_annotation and it is not auto disposable.
String name(NameRef ref) {
  return "Dhruvik";
}

//Providers thet are supported in auto generator provider
// Provider, FutureProvider, streamProvider, NotifierProvider & AsyncNotifierProvider.

//Not Supported
// StateProvider, ChangeNotifier & StateNotifierProvider

class RiverpodGenerator extends ConsumerWidget {
  const RiverpodGenerator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("RiverPod Generator"),
        ),
        body: Center(child: Text(name)),
      ),
    );
  }
}
