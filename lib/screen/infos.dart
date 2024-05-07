// screen/infos.dart
import 'package:flutter/material.dart';

class InfosScreen extends StatelessWidget {
  const InfosScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(30),

      ///
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[Text("Infos")],
      ),
    );
  }
}
