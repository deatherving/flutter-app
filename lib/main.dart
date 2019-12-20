import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() => runApp(Quiz());

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizState();
  }
}

class QuizState extends State<Quiz> {
  void answerQuestion(int score) {
    _totalScore += score;

    // Call setstate would trigger re-build of the widget
    setState(() {
      _index += 1;
    });
  }

  var _index = 0;
  var _totalScore = 0;

  dynamic _questions = const [
    {
      "questionText" : "What's your favorite color?",
      "answers" : [{"Black" : 10}, {"White" : 5}, {"Green" : -5}]
    },
    {
      "questionText" : "What's your favorite animal?",
      "answers" : [{"Lion" : 20}, {"Duck" : -10}, {"Elephant" : 1}, {"Snake" : -50}]
    },
  ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Quiz",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _index < _questions.length ?
            QuizContent(
              _questions[_index]["questionText"],
              _questions[_index]["answers"],
              answerQuestion
            )
         : Result(_totalScore),
      ),
    );
  }
}
