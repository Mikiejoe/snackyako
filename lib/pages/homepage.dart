import 'package:flutter/material.dart';
import 'package:snackyako/screens/account_screen.dart';
import 'package:snackyako/screens/history_screen.dart';
import 'package:snackyako/screens/home_screen.dart';
import 'package:snackyako/screens/notifications_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const HistoryScreen(),
    const NotificationScreen(),
    const AccountScreen()
  ];

  void changeTab(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: changeTab,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.white70,
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt_long_outlined), label: 'history'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined),
                label: 'Notification'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')
          ]),
    );
  }
}
