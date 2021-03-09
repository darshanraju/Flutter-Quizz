import 'package:flutter/material.dart';
import './quiz.dart' show Quiz;

void main() => {
      //runApp builds the widget tree (like a DOM tree using components)
      runApp(MyApp())
    };

//Turning this class into a state that is specifically used by MyApp
class MyApp extends StatelessWidget {
  static const _questions = [
    {
      "question": "What Car?",
      "answer": [
        {"text": "WRX", "score": 7},
        {"text": "Supra", "score": 8},
        {"text": "Skyline", "score": 9}
      ]
    },
    {
      "question": "What big purchase?",
      "answer": [
        {"text": "Car", "score": 7},
        {"text": "House", "score": 9},
        {"text": "2nd Standing Desk", "score": 2}
      ]
    },
    {
      "question": "What Song?",
      "answer": [
        {"text": "Praying to the sky", "score": 8},
        {"text": "Agony", "score": 10}
      ]
    },
  ];

  //"Widget" prefix says it will return a widget (like how components return React.FC)
  //"build" function is to say what this widget returns
  @override
  Widget build(BuildContext context) {
    //MaterialApp does some base setup to make sure your widgets become a proper app
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Quiz(_questions),
      ),
    );
  }
}
