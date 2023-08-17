import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app/model/question_answers.dart';
import 'package:quizz_app/result.dart';

class Results extends StatelessWidget {
  Results(this.goToHomeView, {super.key, required this.userAnswers});
  final Function() goToHomeView;
  final List<String> userAnswers;

  @override
  Widget build(BuildContext context) {
    final correctAnswers =
        questions.map((question) => question.answers[0]).toList();
    var score = 0;
    final totalQuestions = questions.length;
    correctAnswers.asMap().entries.forEach((entry) => {
          if (entry.value == userAnswers[entry.key]) {score = score + 1}
        });

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlinedButton.icon(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: goToHomeView,
            label: const Text(
              "Home",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(126, 166, 64, 0))),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Hai risposto a $score domande su $totalQuestions correttamente",
              style: TextStyle(color: Colors.white)),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 350,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...userAnswers.asMap().entries.map(
                        (entry) => Result(questions[entry.key].question,
                            entry.value, questions[entry.key].answers[0]),
                      ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
