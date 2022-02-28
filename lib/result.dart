import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function() resetHandler;

  const Result({
    Key? key,
    required this.resultScore,
    required this.resetHandler,
  }) : super(key: key);

  String get resultPhrase {
    if (resultScore > 2) {
      return 'You are a Marvel Fan';
    } else {
      return 'You are an imposter!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            child: const Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
