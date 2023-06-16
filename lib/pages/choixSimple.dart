// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quiz/pages/pageDeQuizSimple.dart';
import 'package:quiz/questionsSimple/questionsN.dart';

class ChoixThemeSimple extends StatelessWidget {
  const ChoixThemeSimple({super.key});

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
            Theme(nom: "Naruto", liste: questionsN),
          ],
        ),
      ),
    );
  }
}

class Theme extends StatelessWidget {
  final String nom;
  final List<QRS> liste;
  const Theme({super.key, required this.nom, required this.liste});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PageDeQuizSimple(tabQRS: liste)));
          },
          child: Text(nom)),
    );
  }
}
