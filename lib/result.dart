import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 12) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 15) {
      resultText = "You're pretty likeable!";
    } else if (resultScore <= 20) {
      resultText = "You are ... strange?";
    } else {
      resultText = "You are bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              style: ElevatedButton.styleFrom(primary: Colors.purple),
              child: Text(
                "Reset Quiz",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: resetHandler),
        ],
      ),
    );
  }
}
