import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/ChangeTheme/theme.dart';
import 'package:riverpod_practice/Family_Modifier/family_modifier.dart';
// import 'package:riverpod_practice/Stream_Provider/stream_provider.dart';
// import 'package:riverpod_practice/future_provider/getUser/api_response.dart';
//import 'package:riverpod_practice/future_provider/getUser/userModel/user_model.dart';
//import 'package:riverpod_practice/state_notifier_provider/counter_demo.dart';

// final apiProvider = Provider<ApiService>((ref) {
//   return ApiService();
// });

//Only For Theme change.
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ThemeChange();
  }
}


//FutureProvider : - 
// final userDataProvider =
//     FutureProvider<List<UserModel>>((ref) => ref.read(apiProvider).getUser());
// void main() {
//   runApp(const ProviderScope(child: MyApp()));
// }

// class MyApp extends ConsumerWidget {
//   const MyApp({Key? key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final AsyncValue<List<UserModel>> userData = ref.watch(userDataProvider);
//     print(userData);

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Future Provider"),
//         ),
//         body: Center(
//           child: userData.when(
//             data: (data) {
//               return ListView.builder(
//                 itemCount: data.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text("${data[index].firstName}"
//                         "${data[index].lastName}"),
//                     subtitle: Text("${data[index].email}"),
//                     leading: CircleAvatar(
//                       child: Image.network(
//                         "${data[index].avatar}",
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                     trailing: Text("${data[index].id}"),
//                   );
//                 },
//               );
//             },
//             error: (error, stackTrace) {
//               return Center(
//                 child: Text(error.toString()),
//               );
//             },
//             loading: () {
//               return const CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }


//Riverpod StateNotifierProvider
// final counterProvider =
//     StateNotifierProvider<CounterDemo, int>((ref) => CounterDemo());

//Riverpod Provider Syntax
//final nameOfProvider = Provider<String>((ref) { return "hello";},);

// final nameProvider = Provider<String>((ref) {
//   return "Dhruvik";
// });


//===> StateNotifierProvider :- 

// class MyApp extends ConsumerWidget {
//   MyApp({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final count = ref.watch(counterProvider);

//     print("Only This Widget Builds");
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text("StateNotifierProvider"),
//           ),
//           body: Center(
//             child: Text(
//               count.toString(),
//               style: const TextStyle(fontSize: 25),
//             ),
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () {
//               ref.read(counterProvider.notifier).increment();
//             },
//             child: const Icon(Icons.add),
//           ),
//         ));
//   }
// }

//First Way : using CosumerWidget class
// class MyHomePage extends ConsumerWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final name = ref.watch(
//         nameProvider); //.watch :- used to get the value from created provider.

//     return Scaffold(
//       body: Center(
//         child: Text(
//           name,
//           style: const TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }

//Second way : Using Consumer Widget
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     //.watch :- used to get the value from created provider.

//     return Scaffold(body: Center(
//       child: Consumer(
//         builder: (context, ref, child) {
//           print("Only this widget builds");
//           final name = ref.watch(nameProvider);
//           return Text(
//             name,
//             style: const TextStyle(fontSize: 20),
//           );
//         },
//       ),
//     ));
//   }
// }

//third type: How to get data in stateFulWidget class? =>Using ConsumerStatefulWidget and ConsumerState
// class MyHomePage extends ConsumerStatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   ConsumerState<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends ConsumerState<MyHomePage> {
//   @override

//   //if we want  to read the value from created provider :-
//   void initState() {
//     super.initState();
//     final name = ref.read(nameProvider);
//     print(name);
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("build");
//     final name = ref.watch(nameProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("RiverPod"),
//       ),
//       body: Center(
//         child: Text(
//           name,
//           style: const TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
