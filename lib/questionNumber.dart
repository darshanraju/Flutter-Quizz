import 'package:flutter/material.dart';

class QuestionNumber extends StatelessWidget {
  final int questionNumber;

  const QuestionNumber(this.questionNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionNumber.toString(),
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
