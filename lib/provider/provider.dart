import 'package:flutter/material.dart';
import 'package:flutter_provider/flutter_provider.dart';

class MyProvider extends StatelessWidget {
  const MyProvider({super.key, required String value});

  @override
  Widget build(BuildContext context) {
    final stringProvider = Provider.of<String>(context);
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
        stringProvider,
        style: const TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
      )),
    )));
  }
}


// You can define your MyProvider widget here if needed
// but it's not required in this example as you're directly accessing
// the value from MyApp.


// class RiverpodPractice extends ConsumerWidget {
//   const RiverpodPractice({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     print(ref.read(stringProvider));
//     return Scaffold(
//         body: Center(
//             child: Container(
//       width: 300,
//       height: 200,
//       decoration: const BoxDecoration(
//           gradient: LinearGradient(colors: [
//             Color.fromARGB(255, 2, 1, 26),
//             Color.fromARGB(219, 13, 5, 166),
//             Color.fromARGB(167, 50, 3, 116),
//           ]),
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
//       child: Center(
//           child: Text(
//         ref.read(stringProvider),
//         style: const TextStyle(
//             color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
//       )),
//     )));
//   }
// }
