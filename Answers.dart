import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answer;
  final Function x;

  Answers(this.x, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),

      width: double.infinity,
      height: 50,
      
      child: RaisedButton(
        onPressed: x,
        color: Colors.blue,
        child: Text(
          answer,
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        shape : RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),

      ),
    );
  }
}
