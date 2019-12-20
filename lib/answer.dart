import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final Function selectHandler;


  Answer(this.title, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this.title),
        onPressed: selectHandler,
      )
    );
  }

}