import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>? questions;
  final Function(int)? answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions?[questionIndex]['questionText'] as String,
        ),
        // ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1')),
        // ElevatedButton(onPressed: () => print('Answer 2 chosen!'), child: Text('Answer 2')),
        // ElevatedButton(onPressed: () {
        //   // ...
        //   print('Answer 3 chosen');
        // }, child: Text('Answer 3')),

        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),

        ...(questions?[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
                  () => answerQuestion!(answer['score'] as int), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
