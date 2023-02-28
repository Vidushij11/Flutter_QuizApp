import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectionHandler;
  final String answerText;
  Answer(this.selectionHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.all(5),
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.greenAccent)),
        child: Text(answerText),
        onPressed: selectionHandler,
      ),
    );
  }
}
