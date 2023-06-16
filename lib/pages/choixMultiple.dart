// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz/pages/pageDeQuizMultiple.dart';
import 'package:quiz/questionsMulti/questionsH.dart';

class ChoixThemeMultiple extends StatelessWidget {
  const ChoixThemeMultiple({super.key});

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
        title: const Text("QUIZ"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.teal[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ThemeDeQuestionM(
              liste: shuffleList(multiHarry),
              nom: "Harry Potter",
            ),
            ThemeDeQuestionM(liste: shuffleList(multiBleach), nom: "Bleach")
          ],
        ),
      ),
    );
  }
}

class ThemeDeQuestionM extends StatelessWidget {
  final String nom;
  final List<QRV> liste;
  const ThemeDeQuestionM({super.key, required this.liste, required this.nom});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PagedeQuizMultiple(tabQRV: liste)));
          },
          child: Text(nom)),
    );
  }
}
