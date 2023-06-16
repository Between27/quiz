// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quiz/pages/pageDeQuizMultiple.dart';
import 'package:quiz/questionsMulti/questionsH.dart';

class ChoixThemeMultiple extends StatelessWidget {
  const ChoixThemeMultiple({super.key});

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
            Theme(
              liste: multiH,
              nom: "Harry Potter",
            ),
          ],
        ),
      ),
    );
  }
}

class Theme extends StatelessWidget {
  final String nom;
  final List<QRV> liste;
  const Theme({super.key, required this.liste, required this.nom});

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
