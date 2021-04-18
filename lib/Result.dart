import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function ResetQuiz;

  Result(this.result, this.ResetQuiz);

  String get getResult {
    var resultText = "";

    if (result <= 8) {
      resultText = "it is bad";
    } else if (result <= 12) {
      resultText = "it is good";
    } else {
      resultText = "it is very good";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              getResult,
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: ResetQuiz,
              child: Text(
                "Restart Quiz!",
              ),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.red)),
            ),
            
          ],
        ),
      ),
    );
  }
}
