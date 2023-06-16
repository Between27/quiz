import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  const Accueil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accueil"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.teal[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/qcm');
                },
                child: const Text("Questions avec propositions de Réponses")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/qs');
                },
                child: const Text("Questions sans propositions de Réponses")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/qi');
                },
                child: const Text("Images")),
          ],
        ),
      ),
    );
  }
}
