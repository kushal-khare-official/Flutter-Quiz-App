import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final void Function() selectHandler;

  const Answer({
    Key? key,
    required this.answerText,
    required this.selectHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: Colors.blue,
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
