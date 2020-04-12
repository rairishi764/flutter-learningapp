import 'package:flutter/material.dart'; //1.

class Answer extends StatelessWidget {
  final String anserText;
  final Function selectHandler;
  Answer(this.selectHandler, this.anserText);
  Widget build(BuildContext ctx) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(this.anserText),
        onPressed: selectHandler,
      ),
    );
  }
}
