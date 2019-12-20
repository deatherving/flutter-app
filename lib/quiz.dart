import "package:flutter/material.dart";
import "question.dart";
import "answer.dart";



class QuizContent extends StatelessWidget {

  final _question;
  final _answers;
  final _handler;

  QuizContent(this._question, this._answers, this._handler);

  @override
  Widget build(BuildContext context) {

    return Column(children: [
        Question(_question),
        for(Map<String, int> answer in _answers) Answer(answer.keys.first, () => _handler(answer.values.first))
      ],
    );
  }


}
