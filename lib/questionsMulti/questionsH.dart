// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:quiz/pages/pageDeQuizMultiple.dart';
import '../ligneReponse.dart';

// ignore: non_constant_identifier_names
List<QRV> multiHarry = [
  QRV(
    question: "Qu'est-ce que Voldemort a laissé à Harry Potter ?",
    reponses: rH1,
    valide: "b",
  ),
  QRV(
      question:
          "Quel sort Harry a-t-il appris dans le livre du prince de sang-melé",
      reponses: rH2,
      valide: "c"),
  QRV(
      question:
          "Quel est le titre du dernier jeu basé sur l'univers d'Harry Potter ?",
      reponses: rH3,
      valide: "a"),
  QRV(
      question: "Qui est le parrain d’Harry Potter ?",
      reponses: rH4,
      valide: "b"),
  QRV(
      question:
          "À quelle adresse habite la famille Dursley dans la saga Harry Potter ?",
      reponses: rH5,
      valide: "d")
];

List<LigneReponse> rH1 = [
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
List<LigneReponse> rH2 = [
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
List<LigneReponse> rH3 = [
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
List<LigneReponse> rH4 = [
  LigneReponse(
    id: "a",
    proposition: "Peter Pettigrow",
    couleurId: const Color(0xFFFFA726),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "b",
    proposition: "Sirius Black",
    couleurId: const Color(0xFF4DD0e1),
    bonne: true,
    appuiye: false,
  ),
  LigneReponse(
    id: "c",
    proposition: "Severus Rogue",
    couleurId: const Color(0xFF9575cd),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "d",
    proposition: "Albus Dumbledore",
    couleurId: const Color(0xFF64DD17),
    bonne: false,
    appuiye: false,
  )
];
List<LigneReponse> rH5 = [
  LigneReponse(
    id: "a",
    proposition: "4 Privet Avenue",
    couleurId: const Color(0xFFFFA726),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "b",
    proposition: "4 Privet Road",
    couleurId: const Color(0xFF4DD0e1),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "c",
    proposition: "4 Privet Square",
    couleurId: const Color(0xFF9575cd),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "d",
    proposition: "4 Privet Drive",
    couleurId: const Color(0xFF64DD17),
    bonne: true,
    appuiye: false,
  )
];

List<QRV> multiBleach = [
  QRV(
      question: "Quel est le titre du générique de Thousand Year Blood War ?",
      reponses: rBleach1,
      valide: "c"),
  QRV(
      question: "Quel est le nom du zanpakuto de rukia",
      reponses: rBleach2,
      valide: "a"),
  QRV(question: "Qui est le 6e Espada ?", reponses: rBleach3, valide: "a"),
  QRV(
      question: "Quel est le pouvoir de Wabisuke ?",
      reponses: rBleach4,
      valide: "b")
];

List<LigneReponse> rBleach1 = [
  LigneReponse(
    id: "a",
    proposition: "Rapport",
    couleurId: const Color(0xFFFFA726),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "b",
    proposition: "Alones",
    couleurId: const Color(0xFF4DD0e1),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "c",
    proposition: "Scar",
    couleurId: const Color(0xFF9575cd),
    bonne: true,
    appuiye: false,
  ),
  LigneReponse(
    id: "d",
    proposition: "Haruka Kanata",
    couleurId: const Color(0xFF64DD17),
    bonne: false,
    appuiye: false,
  )
];

List<LigneReponse> rBleach2 = [
  LigneReponse(
    id: "a",
    proposition: "Sode No Shirayuki",
    couleurId: const Color(0xFFFFA726),
    bonne: true,
    appuiye: false,
  ),
  LigneReponse(
    id: "b",
    proposition: "Zabimaru",
    couleurId: const Color(0xFF4DD0e1),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "c",
    proposition: "Zangetsu",
    couleurId: const Color(0xFF9575cd),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "d",
    proposition: "Haineko",
    couleurId: const Color(0xFF64DD17),
    bonne: false,
    appuiye: false,
  )
];

List<LigneReponse> rBleach3 = [
  LigneReponse(
    id: "a",
    proposition: "Grimmjow Jaggerjack",
    couleurId: const Color(0xFFFFA726),
    bonne: true,
    appuiye: false,
  ),
  LigneReponse(
    id: "b",
    proposition: "Ulquiorra Ciffer",
    couleurId: const Color(0xFF4DD0e1),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "c",
    proposition: "Yami",
    couleurId: const Color(0xFF9575cd),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "d",
    proposition: "Stark",
    couleurId: const Color(0xFF64DD17),
    bonne: false,
    appuiye: false,
  )
];

List<LigneReponse> rBleach4 = [
  LigneReponse(
    id: "a",
    proposition: "Affaiblir l'adversaire à chaque coup porté",
    couleurId: const Color(0xFFFFA726),
    bonne: true,
    appuiye: false,
  ),
  LigneReponse(
    id: "b",
    proposition: "Alourdir le métal touché après chaque coup",
    couleurId: const Color(0xFF4DD0e1),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "c",
    proposition: "Diminuer l'espérance de vie de l'adversaire",
    couleurId: const Color(0xFF9575cd),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "d",
    proposition: "Empoisonner l'adversaire",
    couleurId: const Color(0xFF64DD17),
    bonne: false,
    appuiye: false,
  )
];

List<LigneReponse> rBleach5 = [
  LigneReponse(
    id: "a",
    proposition: "Affaiblir l'adversaire",
    couleurId: const Color(0xFFFFA726),
    bonne: true,
    appuiye: false,
  ),
  LigneReponse(
    id: "b",
    proposition: "Alourdir le métal touché",
    couleurId: const Color(0xFF4DD0e1),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "c",
    proposition: "Diminuer l'espérance de vie",
    couleurId: const Color(0xFF9575cd),
    bonne: false,
    appuiye: false,
  ),
  LigneReponse(
    id: "d",
    proposition: "Empoisonner l'adversaire",
    couleurId: const Color(0xFF64DD17),
    bonne: false,
    appuiye: false,
  )
];
