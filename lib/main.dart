import 'package:flutter/material.dart';
import 'package:quiz/liste_des_questions.dart';
import 'package:quiz/page_quiz_par_question.dart';
import 'package:quiz/questionsH.dart';

import 'accueil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'QUIZ',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ChoixDesThemes());
  }
}

class ChoixDesThemes extends StatelessWidget {
  const ChoixDesThemes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void changeP(Widget page) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Choix de thème"),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.teal[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    changeP(
                        QuizTheme(theme: harryPotter).theme[QuizTheme.index]);
                  },
                  child: const Text("Harry Potter"))
            ],
          ),
        ));
  }
}
