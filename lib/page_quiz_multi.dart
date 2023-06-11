import 'package:flutter/material.dart';
import 'package:quiz/question_choix.dart';

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
                              } else
                                return;
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

QRV harry1 = QRV(question: ari, reponses: q, valide: "b");

const String ari = "Qu'est-ce que Voldemort a laissé à Harry Potter ?";
List<LigneReponse> q = [
  LigneReponse(
    id: "a",
    proposition: "Un orcrux",
    couleurId: const Color(0xFFFFA726),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "b",
    proposition: "Une cicatrice en forme d'éclair",
    couleurId: const Color(0xFF4DD0e1),
    bonne: true,
    appuiye: false,
  ),
  LigneReponse(
    id: "c",
    proposition: "Une baguette magique",
    couleurId: const Color(0xFF9575cd),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "d",
    proposition: "Un rat",
    couleurId: const Color(0xFF64DD17),
    bonne: false,
    appuiye: false,
  )
];
