import 'package:flutter/material.dart';
import 'package:quiz/page_quiz_par_question.dart';
import 'ligne_reponse.dart';

List<PagedeQuizMultiple> harryPotter = [
  PagedeQuizMultiple(
    niveau: QRV(
      question: "Qu'est-ce que Voldemort a laissé à Harry Potter ?",
      reponses: harry1,
      valide: "b",
    ),
  ),
  PagedeQuizMultiple(
    niveau: QRV(
        question:
            "Quel sort Harry a-t-il appris dans le livre du prince de sang-melé",
        reponses: harry2,
        valide: "c"),
  ),
  PagedeQuizMultiple(
      niveau: QRV(
          question:
              "Quel est le titre du dernier jeu basé sur l'univers d'Harry Potter ?",
          reponses: harry3,
          valide: "a"))
];

List<LigneReponse> harry1 = [
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
List<LigneReponse> harry2 = [
  LigneReponse(
    id: "a",
    proposition: "Repoustout",
    couleurId: const Color(0xFFFFA726),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "b",
    proposition: "Stupifix",
    couleurId: const Color(0xFF4DD0e1),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "c",
    proposition: "sectumsempra",
    couleurId: const Color(0xFF9575cd),
    bonne: true,
    appuiye: false,
  ),
  LigneReponse(
    id: "d",
    proposition: "AvadaKedevra",
    couleurId: const Color(0xFF64DD17),
    bonne: false,
    appuiye: false,
  )
];
List<LigneReponse> harry3 = [
  LigneReponse(
    id: "a",
    proposition: "Hogwarts Legacy",
    couleurId: const Color(0xFFFFA726),
    bonne: true,
    appuiye: false,
  ),
  LigneReponse(
    id: "b",
    proposition: "Hogwarts stories",
    couleurId: const Color(0xFF4DD0e1),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "c",
    proposition: "Hogwarts quests",
    couleurId: const Color(0xFF9575cd),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "d",
    proposition: "Hogwarts origins",
    couleurId: const Color(0xFF64DD17),
    bonne: false,
    appuiye: false,
  )
];
