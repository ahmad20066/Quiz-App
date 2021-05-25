import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Answers.dart';
import 'package:flutter_app/Quiz.dart';
import 'package:flutter_app/questions.dart';
import 'package:flutter_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      title: "Flutter app",
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomepageState();
  }
}

class HomepageState extends State {
  bool bk = false;
  var total = 0;
  int num0 = 0, num1 = 0, num2 = 0;

  void next(int x) {
    if (_question_index == 0) {
      bk = true;
    }
    if (_question_index == 0)
      num0 = x;
    else if (_question_index == 0)
      num1 = x;
    else if (_question_index == 0) num2 = x;

    total += x;
    setState(() {
      _question_index += 1;
    });
  }

  void reset() {
    bk = false;
    total = 0;
    setState(() {
      _question_index = 0;
    });
  }

  void back() {
    if (_question_index == 1) {
      bk = false;
    }

    setState(() {
      _question_index -= 1;
      if(_question_index == 0) total -= num0;
      else if(_question_index == 0) total -= num1;
      else if(_question_index == 0) total -= num2;
    });
  }

  int _question_index = 0;

  final questions = [
    {
      'questions': 'What`s your favorite color? ',
      'answers': [
        {'text': "Black", 'score': 10},
        {'text': "Blue", 'score': 20},
        {'text': "Red", 'score': 30},
        {'text': "Yellow", 'score': 40}
      ]
    },
    {
      'questions': 'What`s your favorite animal?',
      'answers': [
        {'text': "Lion", 'score': 10},
        {'text': 'Cat', 'score': 20},
        {'text': 'Dog', 'score': 30},
        {'text': 'Tiger', 'score': 40}
      ]
    },
    {
      'questions': 'How old are you?',
      'answers': [
        {'text': "10-15", 'score': 10},
        {'text': '15-20', 'score': 20},
        {'text': '20-25', 'score': 30},
        {'text': '25+', 'score': 40}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Container(
          child: _question_index < questions.length
              ? Quiz(questions, _question_index, next, back, bk)
              : Result(reset, total)),
    );
  }
}
