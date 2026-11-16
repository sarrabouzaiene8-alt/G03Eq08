import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  final String nom;
  final String specialite;

  const ProfilScreen({Key? key, required this.nom, required this.specialite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      backgroundColor: Colors.purple[50],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nom : $nom', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text('Spécialité : $specialite', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context,
                    '/details',
                    arguments: 'Bienvenue sur l\'écran Détails !'
                );
              },
              child: const Text('Voir les détails'),
            ),
          ],
        ),
      ),
    );
  }
}