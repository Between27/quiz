// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LigneReponse extends StatefulWidget {
  final String proposition;
  final String id;
  Color couleurId;
  final bool bonne;
  bool appuiye;
  Color fond;
  late VoidCallback? ontap;

  LigneReponse(
      {super.key,
      required this.id,
      required this.proposition,
      required this.couleurId,
      required this.bonne,
      required this.appuiye,
      this.fond = Colors.white,
      this.ontap});

  @override
  State<LigneReponse> createState() => _LigneReponseState();
}

class _LigneReponseState extends State<LigneReponse> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: widget.fond),
        width: 370,
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.couleurId, // Couleur de fond du cercle
              ),
              child: Center(
                child: Text(
                  widget.id, // Caractère à afficher dans le cercle
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.white, // Couleur du texte
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.proposition,
              style: const TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}

/*
class LigneReponse extends StatelessWidget {
  final String proposition;
  final String id;
  Color couleurId;
  final bool bonne;
  bool appuiye;
  Color fond;
  late VoidCallback? ontap;

  LigneReponse(
      {super.key,
      required this.id,
      required this.proposition,
      required this.couleurId,
      required this.bonne,
      required this.appuiye,
      this.fond = Colors.white,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(50), color: fond),
        width: 370,
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: couleurId, // Couleur de fond du cercle
              ),
              child: Center(
                child: Text(
                  id, // Caractère à afficher dans le cercle
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.white, // Couleur du texte
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              proposition,
              style: const TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}

 */