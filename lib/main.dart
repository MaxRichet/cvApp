import 'package:flutter/material.dart';
import 'screen/device.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Pour enlever la barre de debug
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "PTSerif",
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.teal),
      home: const Scaffold(
        body: Center(
          child: DeviceScreen(),
        ),
      ),
    );
  }
}
