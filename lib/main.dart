import 'package:flutter/material.dart';

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

  var lastIndex = 0;

  void AnswerQuestion() {

    setState(() {
      lastIndex += 1;
    });

    print("Answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["What is your name ?",
      "How old are you ?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(questions[lastIndex]),
        ),
        body: Column(
          children: [
            Text('The question'),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: AnswerQuestion,
            ),

            RaisedButton(
              child: Text("Answer 2"),
              onPressed: AnswerQuestion,
            ),

            RaisedButton(
              child: Text("Answer 3"),
              onPressed: AnswerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
