// screen/device.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home.dart';
import 'formation.dart';
import 'infos.dart';
import 'skills.dart';
import 'xp.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 4;

  final List<String> _screenTitles = [
    'Max Richet',
    'Expérience',
    'Formation',
    'Compétences',
    'Infos'
  ];

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
          title: Row(
        children: [
          Expanded(
            child: Text(
              _screenTitles[_currentScreen], // Titre dynamique
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.facebook),
            onPressed: () {
              launchURL("https://facebook.com");
            },
          ),
          IconButton(
            icon: const Icon(Icons.facebook),
            onPressed: () {
              launchURL("https://facebook.com");
            },
          ),
          IconButton(
            icon: const Icon(Icons.facebook),
            onPressed: () {
              launchURL("https://facebook.com");
            },
          ),
        ],
      )),
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

void launchURL(String url) async {
  // ignore: deprecated_member_use
  if (await canLaunch(url)) {
    // ignore: deprecated_member_use
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
