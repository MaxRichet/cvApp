import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../data.dart';

class InfosScreen extends StatelessWidget {
  const InfosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true, // pour empêcher le dépassement
            physics:
                const NeverScrollableScrollPhysics(), // pour empêcher le défilement
            itemCount: infos.length,
            itemBuilder: (BuildContext ctxt, int index) {
              var article = infos[index];

              return buildImageWithTitleAndDescription(
                imageUrl: article["img"],
                title: article["title"],
                description: article["description"],
              );
            },
          ),

          ///
          ///@todo: On va ajouter à la suite...
          ///
        ],
      ),
    );
  }

  Widget buildImageWithTitleAndDescription({
    required String imageUrl,
    required String title,
    required String description,
  }) {
    return Container(
      margin:
          const EdgeInsets.only(bottom: 50), // Marge en bas entre chaque item
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Image.asset(
            imageUrl,
            width: double.infinity, // Image prend toute la largeur disponible
            fit: BoxFit.cover, // Ajuste l'image pour couvrir la zone
          ),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 223, 223, 223)
                .withOpacity(0.5), // Fond gris semi-transparent
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: -20,
            child: Text(
              description,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
