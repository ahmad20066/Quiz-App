import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function res;
  final int y;
  Result(this.res,this.y);
  String get result1{
    String result;
    if(y>=70){
      result = "Awesome";
    }
    else if(y>=40){
      result = "Very good";
    }
    else{
      result = "you are so Bad";

    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Your score is $y",
            style: TextStyle(
              fontSize: 40,

              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),

          Text(
            result1,
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(
            height: 30,
          ),
          FlatButton(
              onPressed: () {
                res();
              },
              child: Text(
                "Restart",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ))

        ],
      ),
    );
  }

}