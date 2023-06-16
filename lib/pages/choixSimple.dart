// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz/pages/pageDeQuizSimple.dart';
import 'package:quiz/questionsSimple.dart';

class ChoixThemeSimple extends StatelessWidget {
  const ChoixThemeSimple({super.key});

  @override
  Widget build(BuildContext context) {
    List<T> shuffleList<T>(List<T> list) {
      var random = Random();
      var shuffledList = List<T>.from(list);

      for (var i = shuffledList.length - 1; i > 0; i--) {
        var j = random.nextInt(i + 1);
        var temp = shuffledList[i];
        shuffledList[i] = shuffledList[j];
        shuffledList[j] = temp;
      }

      return shuffledList;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Choisissez un thème"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.teal[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ThemeDeQuestionS(
                nom: "Naruto", liste: shuffleList(questionsNaruto)),
            ThemeDeQuestionS(
                nom: "Seigneur des Anneaux", liste: shuffleList(questionsSDA)),
            ThemeDeQuestionS(
                nom: "Dragon ball", liste: shuffleList(questionsDB))
          ],
        ),
      ),
    );
  }
}

class ThemeDeQuestionS extends StatelessWidget {
  final String nom;
  final List<QRS> liste;
  const ThemeDeQuestionS({super.key, required this.nom, required this.liste});

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
