import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function answerQuestion;
  final String answerText;

  Answer(this.answerQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: RaisedButton(
              color: Colors.black.withOpacity(0.8),
              child: Text(
                answerText,
                style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              onPressed: answerQuestion,
      ),
    );
  }
}