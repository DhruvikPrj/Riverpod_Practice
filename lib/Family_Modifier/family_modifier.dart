import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/Family_Modifier/user.dart';

//if we need to pass any single value to provider , we use the family modifier.
// final nameProvider = Provider.family<String, String>((ref, name) {
//   return "Hello $name ";
// });

final nameProvider = Provider.family<String, User>((ref, User) {
  return "Name : ${User.name}  and Address: ${User.address}";
});

class FamilyModifier extends ConsumerStatefulWidget {
  const FamilyModifier({super.key});

  @override
  ConsumerState<FamilyModifier> createState() => _FamilyModifierState();
}

class _FamilyModifierState extends ConsumerState<FamilyModifier> {
  @override
  Widget build(BuildContext context) {
    //pass single value
    // final name = ref.watch(nameProvider("dhruvik"));

// Pass Multiple Values
    final name = ref.watch(nameProvider(const User("Raj", "Patan")));
    final data = ref.watch(nameProvider(const User("Dhruvik", "Ahmedabad")));
    return Scaffold(
        appBar: AppBar(
          title: const Text("Family Modifier"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name),
              Text(data),
            ],
          ),
        ));
  }
}
