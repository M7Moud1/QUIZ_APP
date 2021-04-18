import 'package:flutter/material.dart';


import 'Quiz.dart';
import 'Result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState



    return MyAppState();
    throw UnimplementedError();
  }
}

class MyAppState extends State<MyApp> {
  var _lastIndex = 0;
  var _TotalIndex = 0;

  final questions = const [
    {
      "question": "What is your name ?",
      "answers" : [
        {"text":"Mahmoud", "score":10},
        {"text":"Ahmed" , "score" : 20 },
        {"text":"Mohamed" , "score" : 30}
      ]

    },

    {
      "question":"How old are you ?",
      "answers" : [ {"text":"10", "score":10},
        {"text":"20" , "score" : 20 },
        {"text":"30" , "score" : 30}
        ]
    }
  ];

  void resetQuiz() {

    setState(() {
      _TotalIndex = 0;
      _lastIndex = 0;
    });
  }

  void answerQuestion(int _score) {

    _TotalIndex += _score;
    setState(() {
      _lastIndex += 1;
    });

    print("Answer chosen");
  }

  set lastIndex(int index) => lastIndex = index;

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _lastIndex < questions.length ?
            Quiz(
              answerQuestion: answerQuestion,
              lastIndex: _lastIndex,
              questions: questions,
            )
        : Result(_TotalIndex , resetQuiz)
      ),
    );
  }
}
