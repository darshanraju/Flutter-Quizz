import 'package:flutter/material.dart';

class QuizScore extends StatefulWidget {
  final List<Map<String, Object>> questions;
  final int currentQuestion;
  final int currentAnswer;

  const QuizScore(this.questions, this.currentQuestion, this.currentAnswer);

  @override
  State<StatefulWidget> createState() {
    return QuizScoreState(questions, currentQuestion, currentAnswer);
  }
}

class QuizScoreState extends State<QuizScore> {
  final List<Map<String, List>> questions;
  final int currentQuestion;
  final int currentAnswer;

  QuizScoreState(this.questions, this.currentQuestion, this.currentAnswer);

  var score = 0;

  void changeScore() => setState(() => score =
      score + questions[currentQuestion]['answer'][currentAnswer]['score']);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        "Score: $score",
      ),
    );
  }
}
