import 'package:flutter/material.dart';
import 'accueil_screen.dart';
import 'profil_screen.dart';
import 'details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation 3 écrans',
      initialRoute: '/',
      routes: {
        '/': (context) => const AccueilScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/profil') {
          return MaterialPageRoute(
            builder: (context) => const ProfilScreen(
              nom: 'Sarra Bouzaiene ',
              specialite: '3 E-Business',
            ),
          );
        }
        if (settings.name == '/details') {
          final message = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) => DetailsScreen(message: message),
          );
        }
        return null;
      },
    );
  }
}