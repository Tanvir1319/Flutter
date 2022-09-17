import 'main.dart';
import 'package:first_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:first_app/screens/account.dart';
import 'package:first_app/screens/chat.dart';
import 'package:first_app/screens/My_adds.dart';
import 'package:first_app/screens/add.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex = 0;
  final pages = [
    HomeScreen(),
    AccountController(),
    ChatController(),
    MyAddsController(),
    AddController()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'My Ads',
          icon: Icon(Icons.shopping_bag),
        ),
        BottomNavigationBarItem(
          label: 'Add',
          icon: Icon(Icons.add),
        ),
        BottomNavigationBarItem(
          label: 'Chat',
          icon: Icon(Icons.chat),
        ),
        BottomNavigationBarItem(
          label: 'Account',
          icon: Icon(Icons.person),
        ),
      ],

      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      //body: pages[currentIndex],
    ));
  }
}
