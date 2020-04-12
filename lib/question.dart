import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //every widget needs to be in class

  final String questionTest;

  Question(this.questionTest);

  Widget build(BuildContext ctx) {
    // every widget class has to impleent build funtion
    return Container(
        // just a wrapper which isnt visible
        width: double.infinity, //as much space available
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(2),
        child: Text(
          questionTest,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
