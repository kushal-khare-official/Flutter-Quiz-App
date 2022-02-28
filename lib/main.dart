import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "question": "Where is Gamora?",
      "answers": [
        {"text": "Vormier", "value": 1},
        {"text": "Earth", "value": 0},
        {"text": "Sakar", "value": 0},
        {"text": "Titan", "value": 0},
      ],
    },
    {
      "question": "Who is Gamora?",
      "answers": [
        {"text": "Girl", "value": 1},
        {"text": "Insect", "value": 0},
        {"text": "Plant", "value": 0},
        {"text": "Animal", "value": 0},
      ],
    },
    {
      "question": "Why is Gamora?",
      "answers": [
        {"text": "Don't know", "value": 0},
        {"text": "No reason", "value": 0},
        {"text": "Even God regrets it", "value": 0},
        {"text": "Why the fuck should I care", "value": 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerChosen(int score) {
    _totalScore += score;

    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: (_questionIndex == _questions.length)
            ? Result(
                resultScore: _totalScore,
                resetHandler: _resetQuiz,
              )
            : Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerChosen: _answerChosen,
              ),
      ),
    );
  }
}
