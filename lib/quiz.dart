import 'package:flutter/widgets.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz({this.questionIndex, this.answerQuestion, this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(children: 
    [
      Question( questions[questionIndex]['questionText']),
      ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
        return Answer(answerQuestion, answer);
      }).toList()
    ],
    );
  }
}