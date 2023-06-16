import 'package:flutter/material.dart';
import 'package:quiz/pages/choixMultiple.dart';
import 'package:quiz/pages/choixSimple.dart';
import 'pages/accueil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BETWEEN',
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        routes: {
          '/home': (context) => const Accueil(),
          '/qcm': (context) => const ChoixThemeMultiple(),
          '/qs': (context) => const ChoixThemeSimple(),
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ));
  }
}
