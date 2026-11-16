import 'package:flutter/material.dart';
import 'screens/contact_form.dart';
import 'screens/confirmation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Challenge Contact',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5), // Fond gris clair
      ),
      // Définition des routes nommées
      initialRoute: '/',
      routes: {
        '/': (context) => ContactForm(), // <-- Plus de const ici
        '/confirmation': (context) => ConfirmationPage(), // <-- Plus de const ici
      },
    );
  }
}