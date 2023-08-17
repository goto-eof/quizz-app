import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result(this.question, this.userAnswer, this.correctAnswer);
  final String question;
  final String userAnswer;
  final String correctAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      child: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(73, 0, 0, 0),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            width: double.infinity,
            child: Row(
              children: [
                userAnswer == correctAnswer
                    ? const Icon(
                        Icons.done,
                        color: Colors.green,
                      )
                    : const Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                Expanded(
                  child: Text(
                    question,
                    style: const TextStyle(color: Colors.white),
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration:
                const BoxDecoration(color: Color.fromARGB(116, 0, 0, 0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "La tua risposta: ",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  userAnswer,
                  style: TextStyle(
                      color: userAnswer == correctAnswer
                          ? Colors.green
                          : Colors.red),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration:
                const BoxDecoration(color: Color.fromARGB(116, 0, 0, 0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Risposta corretta: ",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  correctAnswer,
                  style: const TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
