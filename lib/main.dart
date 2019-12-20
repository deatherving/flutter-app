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
  void answerQuestion() {
    // Call setstate would trigger re-build of the widget
    setState(() {
      _index += 1;
    });
  }

  var _index = 0;


  dynamic _questions = const [
    {
      "questionText" : "What's your favorite color?",
      "answers" : ["Black", "White", "Green"]
    },
    {
      "questionText" : "What's your favorite animal?",
      "answers" : ["Lion", "Duck", "Elephant", "Snake"]
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
         : Result(),
      ),
    );
  }
}
