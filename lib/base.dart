import 'package:flutter/material.dart';
import 'package:quizz_app/quiz_screen.dart';
import 'package:quizz_app/results.dart';

import 'home.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() {
    return _BaseState();
  }
}

class _BaseState extends State<Base> {
  Widget? view;

  final List<String> userAnswers = [];

  @override
  void initState() {
    view = Home(goToQuizScreen);
    super.initState();
  }

  void addUserAnswer(String answer) {
    userAnswers.add(answer);
  }

  void goToQuizScreen() {
    setState(() {
      view = QuizScreen(goToResultsView, addUserAnswer: addUserAnswer);
    });
  }

  void goToResultsView() {
    setState(() {
      view = Results(
        goToHomeView,
        userAnswers: userAnswers,
      );
    });
  }

  void goToHomeView() {
    setState(() {
      userAnswers.clear();
      view = Home(goToQuizScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.deepOrange, Colors.orange])),
        child: view,
      )),
    );
  }
}
