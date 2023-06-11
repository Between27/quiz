import 'package:flutter/material.dart';

class QuestionCM extends StatelessWidget {
  final String question;
  const QuestionCM({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 370,
        height: 175,
        child: Card(
          color: Colors.white,
          child: Center(
            child: Text(
              question,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ));
  }
}
