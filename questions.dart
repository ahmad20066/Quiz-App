import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questions extends StatelessWidget{
  final question;
  Questions(this.question);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Text(question,style: TextStyle(
        fontSize: 40,
        color: Colors.black,


    ),
        textAlign: TextAlign.center,
    ));
  }

}