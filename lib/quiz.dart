import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
import './questionNumber.dart';

class Quiz extends StatefulWidget {
  final List<Map<String, Object>> questions;

  Quiz(this.questions);

  @override
  State<StatefulWidget> createState() {
    return QuizzState(questions);
  }
}

class QuizzState extends State<Quiz> {
  final List<Map<String, Object>> questions;

  QuizzState(this.questions);

  var _currentQuestion = 0;
  var _quizScore = 0;

  void nextQuestion(int score) => {
        _quizScore += score,
        setState(() => _currentQuestion = _currentQuestion + 1)
      };

  void restartTest() => {_quizScore = 0, setState(() => _currentQuestion = 0)};

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: Column(
        children: _currentQuestion < questions.length
            ? [
                QuestionNumber(_currentQuestion + 1),
                Question(questions[_currentQuestion]['question'] as String),
                ...(questions[_currentQuestion]['answer']
                        as List<Map<String, Object>>)
                    .map((answer) =>
                        Answer(answer['text'], nextQuestion, answer['score']))
                    .toList(),
                Text("Score: $_quizScore"),
              ]
            : [
                Question("Test Completed"),
                FloatingActionButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: restartTest,
                  hoverColor: Colors.cyan,
                  child: Text(
                    "Retry Test",
                    textAlign: TextAlign.center,
                  ),
                ),
                Text("Final Score: $_quizScore"),
              ],
      ),
    );
  }
}
