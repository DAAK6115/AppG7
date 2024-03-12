import 'package:flutter/material.dart';
import 'dashScreen3.dart';

class DashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image de fond
          Image.network(
            'assets/images/img3.jpeg', // Remplacez l'URL par l'adresse de votre image
            fit: BoxFit.cover,
          ),

          // Contenu au-dessus de l'image
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3), // Opacité pour améliorer la lisibilité du texte
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                      'Réinventez votre expérience shopping : plongez dans un monde de choix infinis, de promotions exclusives et de simplicité à chaque étape. L\'appli qui révolutionne votre façon d\'acheter!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  // Expanded pour occuper tout l'espace disponible
                  Expanded(
                    child: Container(),
                  ),

                  // Bouton Suivant au contour arrondi
                  ElevatedButton(
                    onPressed: () {
                      // Naviguer vers la page DashScreen3
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DashScreen3()),
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
                        'Suivant',
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
