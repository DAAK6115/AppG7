import 'package:flutter/material.dart';

class BijouxDetailScreen extends StatelessWidget {
  final String imagePath;
  final String name;
  final double price;
  final int stars;

  BijouxDetailScreen({
    required this.imagePath,
    required this.name,
    required this.price,
    required this.stars,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails du Bijou'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Photo du produit en grand
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Informations détaillées sur le produit
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              '\$$price',
              style: TextStyle(fontSize: 18, color: Colors.green),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
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
                // Afficher un SnackBar pour indiquer que la commande est validée
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Commande validée'),
                    duration: Duration(seconds: 2), // Durée d'affichage du SnackBar
                  ),
                );

                // Attendre pendant quelques secondes avant de revenir à la page précédente
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
    );
  }
}
