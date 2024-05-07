// screen/skills.dart
import 'package:flutter/material.dart';
import '../data.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),

      ///
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text("Data", style: TextStyle(color: Colors.black)),
          item(data),
          const Text("Web", style: TextStyle(color: Colors.black)),
          item(web),
          const Text("Mobile App", style: TextStyle(color: Colors.black)),
          item(mobile),

          ///
          ///@todo: On va ajouter à la suite...
          ///
        ],
      ),
    );
  }
}

SizedBox item(name) {
  return SizedBox(
    height: 200,
    child: ListView.builder(
      itemExtent: 25,
      itemCount: name.length,
      itemBuilder: (BuildContext ctxt, int index) {
        return Column(
          child: GridView.count(
            padding: const EdgeInsets.all(20),
            children: <Widget>[
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
            ],
          ),
          title: Image.asset(name[index]),
        );
      },
    ),
  );
}
