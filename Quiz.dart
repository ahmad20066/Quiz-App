import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/questions.dart';
import 'Answers.dart';

class Quiz extends StatelessWidget {
  final question;
  final question_index;
  final func;
  final Function func2;
  final bool b ;
  //final int x2;

  Quiz(this.question, this.question_index, this.func, this.func2, this.b);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(question[question_index]['questions']),
        ...(question[question_index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          SizedBox(
            height: 40,
          );
          return Answers(() => func(answer['score']), answer['text']);
        }).toList(),
        if(b)
        FloatingActionButton(
          onPressed: func2,
          backgroundColor: Colors.blue,
          child: Icon(Icons.arrow_back),
        )
      ],
    );
  }
}
