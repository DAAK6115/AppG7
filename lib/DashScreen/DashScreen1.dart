import 'package:flutter/material.dart';
import 'DashScreen2.dart';

class DashScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image de fond
          Image.network(
            'assets/images/img2.jpeg', // Remplacez l'URL par l'adresse de votre image
            fit: BoxFit.cover,
          ),

          // Contenu au-dessus de l'image
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3), // Opacité pour améliorer la lisibilité du texte
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, // Alignez le contenu en haut de la page
                children: [
                  // Logo au haut de la page
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Image.network(
                      'assets/images/logo1.png', // Remplacez par l'URL de votre logo
                      width: 100, // Ajustez la taille selon vos besoins
                      height: 100,
                    ),
                  ),

                  // Texte au milieu de la page
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Explorez l\'avenir du shopping avec notre appli : des tendances époustouflantes à portée de main. Le style que vous méritez, à portée de clic!',
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
                      // Naviguer vers la page DashScreen2
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DashScreen2()),
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
