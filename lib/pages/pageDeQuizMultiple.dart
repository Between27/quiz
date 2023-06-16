// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz/questionCM.dart';

import '../ligneReponse.dart';

// ignore: must_be_immutable
class PagedeQuizMultiple extends StatefulWidget {
  final List<QRV> tabQRV;
  int index = 0;
  PagedeQuizMultiple({super.key, required this.tabQRV});

  @override
  State<PagedeQuizMultiple> createState() => _PagedeQuizMultipleState();
}

class _PagedeQuizMultipleState extends State<PagedeQuizMultiple> {
  bool appui = false;
  String choix = "";
  void verification() {
    String message;
    if (choix == widget.tabQRV[widget.index].valide) {
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

    if (widget.index < widget.tabQRV.length - 1) {
      setState(() {
        widget.index++;
        appui = false;
        choix = "";
      });
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
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
                    question: widget.tabQRV[widget.index].question,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  if (choix != "")
                    Text(
                      "Vous avez choisis la réponse $choix",
                      style: const TextStyle(fontSize: 20),
                    ),
                  for (var item in widget.tabQRV[widget.index].reponses)
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
                              if (!appui && choix != "") {
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
