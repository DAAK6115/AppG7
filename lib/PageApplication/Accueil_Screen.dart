import 'package:flutter/material.dart';

import 'Accessoire/Accesoire_Screen.dart';
import 'Bijoux/Bijoux_Screen.dart';
import 'Compte/Compte_Screen.dart';
import 'JeuxVideos/JV_Screen.dart';
import 'Vêtement/vetement_screen.dart';

class AccueilScreen extends StatefulWidget {
  @override
  _AccueilScreenState createState() => _AccueilScreenState();
}

class _AccueilScreenState extends State<AccueilScreen> {
  int _selectedIndex = 0;

  // Liste des pages correspondant aux onglets
  List<Widget> _pages = [
    VetementScreen(),
    JeuxVideoScreen(),
    AccessoireScreen(),
    BijouxScreen(),
    CompteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),
      body: _pages[_selectedIndex], // Afficher la page correspondant à l'onglet sélectionné
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Vêtements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset),
            label: 'Jeux Vidéos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: 'Accessoires',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch),
            label: 'Bijoux',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Compte',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          // Naviguer vers la page correspondant à l'onglet sélectionné
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
