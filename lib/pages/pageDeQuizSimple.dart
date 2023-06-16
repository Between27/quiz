// ignore_for_file: file_names, use_build_context_synchronously

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz/questionCM.dart';

// ignore: must_be_immutable
class PageDeQuizSimple extends StatefulWidget {
  late final TextEditingController controller;
  final List<QRS> tabQRS;
  int index = 0;
  PageDeQuizSimple({super.key, required this.tabQRS});

  @override
  State<PageDeQuizSimple> createState() => _PageDeQuizSimpleState();
}

class _PageDeQuizSimpleState extends State<PageDeQuizSimple> {
  String message = "";
  void verification() {
    for (var rep in widget.tabQRS[widget.index].valide) {
      if (widget.controller.text.trim().toLowerCase() == rep) {
        message = "Bonne réponse";
        break;
      } else if (widget.controller.text == "") {
        message = "Aucune réponse choisie";
      } else {
        message = "Mauvaise réponse";
      }
    }
    barre(context, message);
  }

  void barre(BuildContext context, String m) {
    final barre = SnackBar(content: Text(m));
    ScaffoldMessenger.of(context).showSnackBar(barre);
    Timer(const Duration(seconds: 1), () {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
    });
    attente();
  }

  void attente() async {
    await Future.delayed(const Duration(seconds: 1));
    if (message == "Bonne réponse") {
      if (widget.index < widget.tabQRS.length - 1) {
        setState(() {
          widget.index++;
          widget.controller.text = "";
        });
      } else {
        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      }
    }
    widget.controller.text = "";
    /*    else {
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    } */
  }

  @override
  void initState() {
    widget.controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
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
                    "Questions à réponse simple",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  QuestionCM(question: widget.tabQRS[widget.index].question),
                  const SizedBox(
                    height: 60,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 100, right: 100),
                    child: TextField(
                      controller: widget.controller,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            verification();
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

class QRS {
  final String question;
  final List<String> valide;

  const QRS({Key? key, required this.question, required this.valide});
}
