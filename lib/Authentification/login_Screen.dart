import 'package:flutter/material.dart';
import '../PageApplication/Accueil_Screen.dart';
import 'Sign_UpScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Se connecter'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image de fond
          Image.network(
            'assets/images/img6.jpeg', // Remplacez l'URL par l'adresse de votre image
            fit: BoxFit.cover,
          ),

          // Contenu au-dessus de l'image
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Champ pour l'adresse e-mail
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      focusColor: Colors.white
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

                  // Bouton de connexion
                  ElevatedButton(
                    onPressed: () {
                      // Ajoutez votre logique de connexion ici
                      // Après la connexion, naviguer vers la page d'accueil
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccueilScreen()),
                      );
                    },
                    child: Text('Se connecter'),
                  ),

                  // Lien pour commencer l'inscription
                  GestureDetector(
                    onTap: () {
                      // Naviguer vers la page d'inscription
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Pas encore inscrit? Cliquez ici pour commencer l\'inscription.',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
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
