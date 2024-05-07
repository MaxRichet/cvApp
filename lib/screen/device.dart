// screen/device.dart
import 'package:flutter/material.dart';
import 'home.dart';
import 'formation.dart';
import 'infos.dart';
import 'skills.dart';
import 'xp.dart';

class DeviceScreen extends StatefulWidget {
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 2;
  final List<Widget> _screenList = [
    const HomeScreen(),
    const XpScreen(),
    const FormationScreen(),
    const SkillsScreen(),
    const InfosScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bienvenue"),
      ),
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          iconSize: 35,
          currentIndex: _currentScreen,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profil'),
            BottomNavigationBarItem(
                icon: Icon(Icons.build), label: 'Expérience'),
            BottomNavigationBarItem(
                icon: Icon(Icons.grade), label: 'Formation'),
            BottomNavigationBarItem(
                icon: Icon(Icons.donut_large), label: 'Compétences'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Infos')
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
