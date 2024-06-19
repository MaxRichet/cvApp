// screen/xp.dart
import 'package:flutter/material.dart';
import '../data.dart';

class XpScreen extends StatelessWidget {
  const XpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),

      ///
      child: Column(
        children: <Widget>[
          item()

          ///
          ///@todo: On va ajouter à la suite...
          ///
        ],
      ),
    );
  }
}

SizedBox item() {
  return SizedBox(
    height: 400,
    child: ListView.builder(
      itemCount: xp.length,
      itemBuilder: (BuildContext ctxt, int index) {
        var article = xp[index];

        return Column(children: <Widget>[
          ListTile(
            leading: Image.asset("${article["img"]}"),
            title: Text(article["title"]),
            subtitle: Text(article["subtitle"]),
            titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
            subtitleTextStyle: const TextStyle(color: Colors.black),
            leadingAndTrailingTextStyle: const TextStyle(color: Colors.black),
          )
        ]);
      },
    ),
  );
}
