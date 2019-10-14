import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  var _questionIndex = 0;
  final _questions = const [
      {
        'questionText':'What is your fav color?', 
        'answers': ['red', 'blue', 'black', 'white']
      },
      {
        'questionText':'What is your fav animal?',
        'answers': ['cat', 'dog', 'rabits', 'elephants']
      },
      {
        'questionText':'Which is your fav city?', 
        'answers': ['Mumbai', 'Thane', 'Dombivali', 'Mulund']
      },
      {
        'questionText':'How many siblings do u have?', 
        'answers': ['Two', 'four', 'one', 'three']
      }
     ];
  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex + 1;
      // if(_questionIndex == _questions.length){
      //   _questionIndex = 0;
      // }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('My First App'),
          ),
        body: _questionIndex < _questions.length ? Quiz(questionIndex: _questionIndex, answerQuestion: _answerQuestion, questions: _questions): Center(child: Text('You Did it!')),
      ),
    );
  }
}