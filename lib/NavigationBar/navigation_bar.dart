import 'package:flutter/material.dart';

class ScreenNavigation extends StatelessWidget {
  const ScreenNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Navigationbar"),
        ),
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
          selectedIndex: 0,
        ),
      ),
    );
  }
}
