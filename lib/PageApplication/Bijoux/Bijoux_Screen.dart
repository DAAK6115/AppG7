import 'package:flutter/material.dart';

import 'Bijoux_Detail_Screen.dart';

class BijouxScreen extends StatelessWidget {
   BijouxScreen({Key? key}) : super(key: key);

  // Liste fictive de produits
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Collier en argent',
      'price': 49.99,
      'stars': 4,
      'image': 'assets/images/bijoux1.jpeg',
    },
    {
      'name': 'Boucles d\'oreilles en or',
      'price': 79.99,
      'stars': 5,
      'image': 'assets/images/bijoux2.jpeg',
    },
    {
      'name': 'Bracelet en perle',
      'price': 29.99,
      'stars': 4,
      'image': 'assets/images/bijoux3.jpeg',
    },
    {
      'name': 'Bague en Diamant',
      'price': 149.99,
      'stars': 5,
      'image': 'assets/images/bijoux4.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bijoux'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return _buildProductBlock(
            product['image'],
            product['name'],
            product['price'],
            product['stars'],
            () {
              // Navigate to the detail screen when the product is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BijouxDetailScreen(
                    imagePath: product['image'],
                    name: product['name'],
                    price: product['price'],
                    stars: product['stars'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildProductBlock(String imagePath, String name, double price, int stars, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap, // Execute the onTap callback when tapped
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Photo du produit
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            // Informations sur le produit
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nom du produit
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  // Prix du produit
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
    );
  }
}
