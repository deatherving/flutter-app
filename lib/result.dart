import 'package:flutter/material.dart';


class Result extends StatelessWidget {

  var _score;

  Result(this._score);

  String get resultPhrase {
    var resultText = "Your score: ";
    if(_score <= 8)
      resultText = "You sucks with score: " ;
    else if (_score <= 20)
      resultText = "Just okay with score: ";
    else
      resultText = "You are awesome: ";
    return resultText + _score.toString();

  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
        )
    );
  }
}
