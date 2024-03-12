import 'package:flutter/material.dart';
import 'DashScreen/DashScreen1.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image de fond
          Image.network(
            'assets/images/img1.webp', // Remplacez l'URL par l'adresse de votre image
            fit: BoxFit.cover,
          ),

          // Contenu au-dessus de l'image
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3), // Opacité pour améliorer la lisibilité du texte
            ),
            child: const Center(
              child: Text(
                'Bienvenue sur AppG7',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          // Bouton au pied de la page
          Positioned(
            bottom: 16.0,
            left: 16.0,
            right: 16.0,
            child: ElevatedButton(
              onPressed: () {
                // Naviguer vers DashScreen1 lorsqu'on appuie sur le bouton
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashScreen1()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.all(16.0),
                primary: Colors.blue,
              ),
              child: Text(
                'Découvrir',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
