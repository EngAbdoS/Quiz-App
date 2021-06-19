import 'package:flutter/material.dart';
import 'answers.dart';
import 'quistions.dart';

class Quiz extends StatelessWidget {
  final List quistion;
  final int quistionIndex;
  final Function answerquistion;

  Quiz(this.quistion, this.quistionIndex, this.answerquistion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Quistions(quistion[quistionIndex]["quistiontext"]),
        ...(quistion[quistionIndex]["answer"] as List).map((answer) {
          return Answer(() => answerquistion(answer['score']), answer["text"]);
        }).toList(),
      ],
    );
  }
}
