import 'package:flutter/material.dart';
import 'package:quiz/questionsH.dart';

import 'page_quiz_par_question.dart';

class Accueil extends StatelessWidget {
  const Accueil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QUIZ"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.teal[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PagedeQuizMultiple(
                                niveau: harryPotter[0].niveau,
                              )));
                },
                child: const Text("Questions avec propositions de Réponses")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () => print("f"),
                child: const Text("Questions sans propositions de Réponses")),
          ],
        ),
      ),
    );
  }
}
