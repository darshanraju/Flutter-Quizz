import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectAnswer;
  final int score;

  Answer(this.answerText, this.selectAnswer, this.score);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () => selectAnswer(score),
        color: Colors.lightBlue[100],
        child: Text(
          answerText,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
