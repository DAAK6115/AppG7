import 'package:flutter/material.dart';
import '../PageApplication/Accueil_Screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image de fond
          Image.network(
            'assets/images/img5.jpeg', // Remplacez l'URL par l'adresse de votre image
            fit: BoxFit.cover,
          ),

          // Contenu au-dessus de l'image
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Champ pour le pseudo
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Pseudo',
                    ),
                  ),

                  // Espacement entre les champs
                  SizedBox(height: 16),

                  // Champ pour l'adresse e-mail
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                    ),
                  ),

                  // Espacement entre les champs
                  SizedBox(height: 16),

                  // Champ pour le mot de passe
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Mot de passe',
                    ),
                  ),

                  // Espacement entre les champs et le bouton
                  SizedBox(height: 24),

                  // Bouton d'inscription
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Ajoutez votre logique d'inscription ici

                            // Naviguer vers la page d'accueil après l'inscription
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AccueilScreen()),
                            );
                          },
                          child: Text('S\'inscrire'),
                        ),
                      ),
                    ],
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
