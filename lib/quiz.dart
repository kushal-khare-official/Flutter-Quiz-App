import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final void Function(int) answerChosen;

  const Quiz({
    Key? key,
    required this.questions,
    required this.questionIndex,
    required this.answerChosen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]["question"] as String,
        ),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) => Answer(
                  answerText: answer["text"] as String,
                  selectHandler: () => answerChosen(answer["value"] as int),
                ))
            .toList()
      ],
    );
  }
}
