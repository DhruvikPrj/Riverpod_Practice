import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/Filter_Search_Auto/player_notifier.dart';

class FilterList extends ConsumerWidget {
  const FilterList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final players = ref.watch(playerNotifierProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent.shade700,
          title: const Text(
            "Cricketers",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.all(30),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SearchBar(
                  onChanged: (value) => ref
                      .read(playerNotifierProvider.notifier)
                      .filterName(value),
                  elevation: const MaterialStatePropertyAll(3),
                  hintText: "Search",
                  leading: const Icon(Icons.search),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => ListTile(
                      leading: const Icon(Icons.sports_cricket),
                      title: Text(players.toString(),
                          style: TextStyle(
                              color: Colors.redAccent.shade700,
                              fontSize: 20,
                              fontWeight: FontWeight.w900)),
                      subtitle: const Text("Country",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.w300)),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
