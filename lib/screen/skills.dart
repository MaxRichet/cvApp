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
          const Text("Data",
              style: TextStyle(color: Colors.black, fontSize: 20)),
          const SizedBox(height: 15),
          item(data),
          const Text("Web",
              style: TextStyle(color: Colors.black, fontSize: 20)),
          const SizedBox(height: 15),
          item(web),
          const Text("Mobile App",
              style: TextStyle(color: Colors.black, fontSize: 20)),
          const SizedBox(height: 15),
          item(mobile),

          ///
          ///@todo: On va ajouter à la suite...
          ///
        ],
      ),
    );
  }
}

Widget item(List<String> names) {
  return SizedBox(
    height: 200,
    child: Wrap(
      spacing: 10.0, // Espace horizontal entre les images
      runSpacing: 10.0, // Espace vertical entre les images
      children: names.map<Widget>((name) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black), // Contour noir
            borderRadius: BorderRadius.circular(8), // Rayon de la bordure
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
                8), // Appliquer le rayon de la bordure aux images
            child: Image.asset(
              name,
              width: 80, // Largeur des images
              height: 80, // Hauteur des images
              fit: BoxFit.contain, // Ajuster l'image pour couvrir le conteneur
            ),
          ),
        );
      }).toList(),
    ),
  );
}
