import 'package:flutter/material.dart';

class AccueilScreen extends StatelessWidget {
  const AccueilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accueil')),
      backgroundColor: Colors.purple[50],
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profil');
          },
          child: const Text('Aller au Profil'),
        ),
      ),
    );
  }
}