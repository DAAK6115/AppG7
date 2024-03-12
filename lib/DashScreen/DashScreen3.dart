import 'package:flutter/material.dart';
import '../Authentification/login_Screen.dart';

class DashScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image de fond
          Image.network(
            'assets/images/img4.jpeg', // Remplacez l'URL par l'adresse de votre image
            fit: BoxFit.cover,
          ),

          // Contenu au-dessus de l'image
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3), // Opacité pour améliorer la lisibilité du texte
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end, // Alignez le contenu en bas de la page
                children: [
                  // Logo au haut de la page
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Image.network(
                      'assets/images/logo1.png', // Remplacez par l'URL de votre logo
                      width: 100,
                      height: 100,
                    ),
                  ),

                  // Texte au milieu de la page
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Découvrez l\'art de magasiner en ligne avec notre application révolutionnaire. Des offres exclusives, une navigation intuitive, et la promesse d\'une expérience shopping sans pareille!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  // Bouton Se connecter
                  ElevatedButton(
                    onPressed: () {
                      // Naviguer vers la page DashScreen3
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Se connexter',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
