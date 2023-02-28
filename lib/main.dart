import 'package:first_application/result.dart';
import 'package:flutter/material.dart';
import './result.dart';
// import './question.dart';
import 'quiz.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s is your favourite color?',
      'answers': [
        {'Text': 'Black', 'score': 10},
        {'Text': 'White', 'score': 5},
        {'Text': 'Lavender', 'score': 3},
        {'Text': 'Green', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'Text': 'Cat', 'score': 5},
        {'Text': 'Dog', 'score': 3},
        {'Text': 'Rabit', 'score': 1},
        {'Text': 'Lion', 'score': 10}
      ],
    },
    {
      'questionText': 'what\'s is your Hobby?',
      'answers': [
        {'Text': 'Dancing', 'score': 3},
        {'Text': 'Singing', 'score': 1},
        {'Text': 'painting', 'score': 5},
        {'Text': 'Writing', 'score': 10}
      ],
    },
    {
      'questionText': 'what\'s is your favourite place to visit?',
      'answers': [
        {'Text': 'Diseny Land', 'score': 10},
        {'Text': 'Park', 'score': 5},
        {'Text': 'Water Park', 'score': 3},
        {'Text': 'Museum', 'score': 1}
      ],
    }
  ];

  var _questionsIndex = 0;
  var _totalScore = 0;
  void resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  void _Answerques(int score) {
    _totalScore += score;
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
    if (_questionsIndex < _questions.length) {
      print("WE have more questions!!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionsIndex < _questions.length
            ? Quiz(
                Answerques: _Answerques,
                questionsIndex: _questionsIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
