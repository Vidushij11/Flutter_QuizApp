import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionsIndex;
  final Function Answerques;

  Quiz(
      {@required this.questions,
      @required this.Answerques,
      @required this.questionsIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionsIndex]['questionText'],
        ),
        ...(questions[questionsIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => Answerques(answer['score']), answer['Text']);
        })
      ],
    );
  }
}
