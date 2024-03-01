import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/NavigationBar/account.dart';
import 'package:riverpod_practice/NavigationBar/gellery.dart';
import 'package:riverpod_practice/NavigationBar/home.dart';
import 'package:riverpod_practice/NavigationBar/navigation_notifier.dart';

class ScreenNavigation extends ConsumerWidget {
  const ScreenNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navigationNotifierProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: [const Home(), const Gellery(), const Account()][index as int],
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: "Home",
              selectedIcon: Icon(Icons.home_filled),
            ),
            NavigationDestination(
              icon: Icon(Icons.notification_add_outlined),
              label: "Notifications",
              selectedIcon: Icon(Icons.notification_add),
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle_outlined),
              label: "Account",
              selectedIcon: Icon(Icons.account_circle),
            ),
          ],
          selectedIndex: index as int,
          onDestinationSelected: (value) => ref
              .read(navigationNotifierProvider.notifier)
              .setSelectedIndex(value),
        ),
      ),
    );
  }
}
