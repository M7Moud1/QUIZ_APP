import 'package:flutter/material.dart';

import 'Question.dart';
import 'Answer.dart';

class Quiz extends StatelessWidget {
  final lastIndex;
  final Function answerQuestion;
  final List<Map<String, Object>> questions;

  Quiz(
      {@required this.lastIndex,
      @required this.answerQuestion,
      @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[lastIndex]["question"]),
          ...(questions[lastIndex]["answers"] as List<Map<String , Object>>).map((answer) {
            return Answer(() => answerQuestion(answer["score"]), answer["text"]);
          }).toList(),
        ],
      ),
    );
  }
}
