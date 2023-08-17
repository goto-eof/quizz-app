import 'package:flutter/material.dart';
import 'package:quizz_app/model/question_answers.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen(this.goToResultsView, {super.key, required this.addUserAnswer});

  void Function() goToResultsView;
  void Function(String value) addUserAnswer;

  @override
  State<QuizScreen> createState() {
    return _QuizScreenSate();
  }
}

class _QuizScreenSate extends State<QuizScreen> {
  var currentQuestionIndex = 0;

  void onClickOnAnswer(String userAnswer) {
    addUserAnswer(userAnswer);
    if (currentQuestionIndex + 1 >= questions.length) {
      goToResultView();
      return;
    }
    setState(() {
      currentQuestionIndex++;
    });
  }

  void goToResultView() {
    widget.goToResultsView();
  }

  void addUserAnswer(String answer) {
    widget.addUserAnswer(answer);
  }

  @override
  Widget build(BuildContext context) {
    final QuestionAnswers question = questions[currentQuestionIndex];

    return Center(
      child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.question_answer,
                color: Color.fromARGB(129, 255, 255, 255),
                size: 200,
              ),
              Text(question.question,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  )),
              const SizedBox(
                height: 50,
              ),
              ...question.getShuffleAnswers().map(
                    (answer) => Container(
                      margin: const EdgeInsets.only(
                          left: 60, right: 60, top: 5, bottom: 5),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(126, 166, 64, 0),
                            minimumSize: const Size.fromHeight(50)),
                        onPressed: () {
                          onClickOnAnswer(answer);
                        },
                        child: Text(
                          answer,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
            ],
          )),
    );
  }
}
