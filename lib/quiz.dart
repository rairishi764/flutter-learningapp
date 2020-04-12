import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required this.answerQuestion,
    @required this.question,
    @required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      //puts widgets in 1 column for side by side row used
      children: [
        Question(question[questionIndex]["questionText"]),
        /*     RaisedButton(
              //child: Text(questions[0]), //can be replaced by below widget which implements same
              child: Text(questions[_questionIndex]),   //using imported widget in fold
              onPressed: _ansQuestion, //pass pointer to fn so that its not executed on rendering
            ),
           RaisedButton(
              child: Text(questions.elementAt(1)),
              onPressed: ()=>print('LOCAL FUNCTION CALL'),//inline fn
            ),
            RaisedButton(
              child: Text('Question 3'),
              onPressed: _ansQuestion,
            ),
            */
        //Answer(_ansQuestion),
        //Answer(_ansQuestion),
        //Answer(_ansQuestion),  //moved raised button in answer and calling widget here and passing POINTER TO function to it
        ...(question[questionIndex]["answer"] as List<String>).map((answer) {
          //map the values of question[_questionIndex]["answer"] to iterate as answer
          //... is spread- takes elements of list and brings it one level above
          return Answer(answerQuestion,
              answer); //pass handler and value frm list one by one
        }).toList()
      ],
    );
  }
}
