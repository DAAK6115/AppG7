import 'package:flutter/material.dart';

import 'Accessoire_Detail_Screen.dart';

class AccessoireScreen extends StatelessWidget {
  AccessoireScreen({Key? key}) : super(key: key);

  // Liste fictive d'accessoires de jeux vidéos et de téléphone
  final List<Map<String, dynamic>> accessories = [
    {
      'name': 'Casque Gamer',
      'price': 69.99,
      'stars': 4,
      'image': 'assets/images/accessoire1.jpeg',
    },
    {
      'name': 'Coque de iPhone 15 Pro Max',
      'price': 19.99,
      'stars': 5,
      'image': 'assets/images/accessoire2.jpeg',
    },
    {
      'name': 'Manette PS5',
      'price': 49.99,
      'stars': 4,
      'image': 'assets/images/accessoire3.jpeg',
    },
    {
      'name': 'AirPods Pro3',
      'price': 39.99,
      'stars': 5,
      'image': 'assets/images/accessoire4.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accessoires'),
      ),
      body: ListView.builder(
        itemCount: accessories.length,
        itemBuilder: (context, index) {
          final accessory = accessories[index];
          return _buildAccessoryBlock(
            accessory['image'],
            accessory['name'],
            accessory['price'],
            accessory['stars'],
            context,
          );
        },
      ),
    );
  }

  Widget _buildAccessoryBlock(String imagePath, String name, double price, int stars, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          // Navigate to the detail screen when an accessory is tapped
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AccessoryDetailScreen(
                name: name,
                price: price,
                stars: stars,
                imagePath: imagePath,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Photo de l'accessoire
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Informations sur l'accessoire
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Nom de l'accessoire
                    Text(
                      name,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    // Prix de l'accessoire
                    Text(
                      '\$$price',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                    SizedBox(height: 8),
                    // Nombre d'étoiles
                    Row(
                      children: List.generate(
                        stars,
                        (index) => Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
