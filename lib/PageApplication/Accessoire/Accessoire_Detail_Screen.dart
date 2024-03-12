import 'package:flutter/material.dart';

class AccessoryDetailScreen extends StatelessWidget {
  final String name;
  final double price;
  final int stars;
  final String imagePath;

  AccessoryDetailScreen({
    required this.name,
    required this.price,
    required this.stars,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détail du Produit'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Photo de l'accessoire en grand
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          // Informations détaillées sur l'accessoire
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nom de l'accessoire
                Text(
                  name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                // Prix de l'accessoire
                Text(
                  '\$$price',
                  style: TextStyle(fontSize: 20, color: Colors.green),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                // Nombre d'étoiles
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    stars,
                    (index) => Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                // Bouton Commander
                ElevatedButton(
                  onPressed: () {
                    // Ajoutez votre logique de commande ici
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Commande validée'),
                        duration: Duration(seconds: 2),
                      ),
                    );

                    Future.delayed(Duration(seconds: 2), () {
                      Navigator.pop(context);
                    });
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(20.0)),
                  ),
                  child: Text('Commander'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
