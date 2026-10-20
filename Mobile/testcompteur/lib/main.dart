import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculatrice simple',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Compteur(),
    );
  }
}

class Compteur extends StatefulWidget {
  const Compteur({Key? key}) : super(key: key);

  @override
  _CompteurState createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {
  final TextEditingController _ctr1 = TextEditingController();
  final TextEditingController _ctr2 = TextEditingController();

  String _resultat = "Le résultat s'affichera ici";

  // Libération de la mémoire
  @override
  void dispose() {
    _ctr1.dispose();
    _ctr2.dispose();
    super.dispose();
  }

  // --- ADDITION ---
  void _addition() {
    setState(() {
      double? n1 = double.tryParse(_ctr1.text);
      double? n2 = double.tryParse(_ctr2.text);

      if (n1 != null && n2 != null) {
        _resultat = "Résultat : ${n1 + n2}";
      } else {
        _resultat = "Veuillez entrer deux nombres valides.";
      }
    });
  }

  // --- SOUSTRACTION ---
  void _soustraction() {
    setState(() {
      double? n1 = double.tryParse(_ctr1.text);
      double? n2 = double.tryParse(_ctr2.text);

      if (n1 != null && n2 != null) {
        _resultat = "Résultat : ${n1 - n2}";
      } else {
        _resultat = "Veuillez entrer deux nombres valides.";
      }
    });
  }

  // --- MULTIPLICATION ---
  void _multiplication() {
    setState(() {
      double? n1 = double.tryParse(_ctr1.text);
      double? n2 = double.tryParse(_ctr2.text);

      if (n1 != null && n2 != null) {
        _resultat = "Résultat : ${n1 * n2}";
      } else {
        _resultat = "Veuillez entrer deux nombres valides.";
      }
    });
  }

  // --- DIVISION ---
  void _division() {
    setState(() {
      double? n1 = double.tryParse(_ctr1.text);
      double? n2 = double.tryParse(_ctr2.text);

      if (n1 != null && n2 != null) {
        if (n2 == 0) {
          _resultat = "Erreur : Division par zéro impossible.";
        } else {
          _resultat = "Résultat : ${n1 / n2}";
        }
      } else {
        _resultat = "Veuillez entrer deux nombres valides.";
      }
    });
  }

  // --- RESET ---
  void _reset() {
    setState(() {
      _ctr1.clear(); // Vide le champ 1
      _ctr2.clear(); // Vide le champ 2
      _resultat = "Le résultat s'affichera ici"; // Remet le texte initial
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculatrice simple'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CHAMP 1
            TextField(
              controller: _ctr1,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                labelText: 'Nombre 1',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

            // CHAMP 2
            TextField(
              controller: _ctr2,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                labelText: 'Nombre 2',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // AFFICHAGE DU RÉSULTAT
            Text(
              _resultat,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // BOUTONS D'OPÉRATIONS (ligne 1)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _addition, child: const Text('+')),
                ElevatedButton(onPressed: _soustraction, child: const Text('-')),
              ],
            ),
            const SizedBox(height: 10),

            // BOUTONS D'OPÉRATIONS (ligne 2)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _multiplication, child: const Text('×')),
                ElevatedButton(onPressed: _division, child: const Text('÷')),
              ],
            ),
            const SizedBox(height: 30),

            // BOUTON RESET
            ElevatedButton(
              onPressed: _reset,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Couleur rouge
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text('Reset', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}