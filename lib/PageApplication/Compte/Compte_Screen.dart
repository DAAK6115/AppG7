import 'package:flutter/material.dart';

import '../../Authentification/login_Screen.dart';

class CompteScreen extends StatelessWidget {
  const CompteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MON COMPTE APPG7'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mes options',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            _buildOption('Mes commandes', Icons.shopping_cart),
            SizedBox(height: 16),
            _buildOption('Boite de réception', Icons.mail),
            SizedBox(height: 16),
            _buildOption('Notes en attente', Icons.star_border),
            SizedBox(height: 16),
            _buildOption('Bon d\'achat', Icons.card_giftcard),
            SizedBox(height: 16),
            _buildOption('Ma liste d\'envie', Icons.favorite_border),
            SizedBox(height: 16),
            _buildOption('Vendeurs suivis', Icons.people),
            SizedBox(height: 16),
            _buildOption('Derniers produits vus', Icons.history),
            SizedBox(height: 16),
            _buildOption('Récemment recherché', Icons.search),
            SizedBox(height: 16),
            // Bouton Se déconnecter
            _buildLogoutOption(context),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(String title, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          size: 40,
        ),
        SizedBox(width: 16),
        Text(title, style: TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget _buildLogoutOption(BuildContext context) {
    return InkWell(
      onTap: () {
        // Naviguer vers la page de connexion
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
      child: Row(
        children: [
          Icon(
            Icons.door_back_door,
            size: 40,
          ),
          SizedBox(width: 16),
          Text('Se déconnecter', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
