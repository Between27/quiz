import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/accueil.dart';
import 'package:quiz/liste_des_questions.dart';
import 'package:quiz/question_choix.dart';
import 'package:quiz/questionsH.dart';

import 'ligne_reponse.dart';

class PagedeQuizMultiple extends StatefulWidget {
  final QRV niveau;

  const PagedeQuizMultiple({super.key, required this.niveau});

  @override
  State<PagedeQuizMultiple> createState() => _PagedeQuizMultipleState();
}

class _PagedeQuizMultipleState extends State<PagedeQuizMultiple> {
  bool appui = false;

  String choix = "";
  void verification() {
    String message;
    if (choix == widget.niveau.valide) {
      message = "Bonne réponse";
    } else {
      message = "Mauvaise réponse";
    }
    barre(context, message);
  }

  void barre(BuildContext context, String m) {
    final barre = SnackBar(content: Text(m));
    ScaffoldMessenger.of(context).showSnackBar(barre);
    Timer(const Duration(seconds: 1), () {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
    });
  }

  void attente() async {
    await Future.delayed(const Duration(seconds: 1));

    if (QuizTheme.index < 2) {
      QuizTheme.index += 1;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  QuizTheme(theme: harryPotter).theme[QuizTheme.index]));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Accueil()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("QUIZ"),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.teal[100],
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Questions à 4 Reponses",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  QuestionCM(
                    question: widget.niveau.question,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  if (choix != "")
                    Text(
                      "Vous avez choisis la réponse $choix",
                      style: const TextStyle(fontSize: 20),
                    ),
                  for (var item in widget.niveau.reponses)
                    LigneReponse(
                      id: item.id,
                      proposition: item.proposition,
                      couleurId: item.couleurId,
                      bonne: item.bonne,
                      appuiye: item.appuiye,
                      fond: appui == true
                          ? item.bonne == true
                              ? Colors.green
                              : Colors.red
                          : Colors.white,
                      ontap: () {
                        setState(() {
                          choix = item.id;
                        });
                      },
                    ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (!appui) {
                                verification();
                                appui = true;
                              } else {
                                return;
                              }
                              attente();
                            });
                          },
                          child: const Center(child: Text("Valider"))),
                    ],
                  )
                  //LigneReponses
                ],
              ),
            ),
          ),
        ));
  }
}

class QRV {
  final String question;
  final List<LigneReponse> reponses;
  final String valide;

  const QRV(
      {Key? key,
      required this.question,
      required this.reponses,
      required this.valide});
}
