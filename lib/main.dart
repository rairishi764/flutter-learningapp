import 'package:flutter/material.dart'; //import handled by pubsoec.yml

//import './question.dart'; //importing local library
//import './answer.dart';
import './quiz.dart';
import './result.dart';

//main function which is run first to kick of app code
void main() {
  runApp(MyApp());
  /*fn defined in flutter package does all heavy lifiting of taking 
                      a widget and put it on screen by calling the build fn of widget*/

}

//void main() => runApp(MyApp()); alternative syntax but only used in 1 widget run


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //State class can retain values as will not be rebuilt ad MyApp widget
  var _questionIndex = 0; //_ in beg makes it private property

  void _ansQuestion() {
    setState(() {
      //build is getting called when u set state
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < 3) {
      print("We have more questions");
    } else {
      print("Questionlist over");
    }
    print(_questionIndex);
  }

  @override //good practice of specifying that u r overriding
  Widget build(BuildContext ctx) {
    //always responsible toreturn widget

    final _question = [
      //can use final here as values will not change
      {
        "questionText": "whats your fav color?",
        "answer": ["yellow", "blue", "orange"]
      },
      {
        "questionText": "Whats your fav animal?",
        "answer": ["dog", "cat", "bull","horse","lion"]
      },
      {
        "questionText": "Whats your fav food?",
        "answer": ["chicken", "fruits", "vegetables"]
      },
      {
        "questionText": "Whats your fav sport",
        "answer": ["cricket", "hockey", "football"]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        // give base page design widget
        appBar: AppBar(
          title: Text(
            'My first app',
          ),
          centerTitle: true,
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _ansQuestion,
                question: _question,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    ); //scaffold is widget that gives basic structure for app
  }
}
