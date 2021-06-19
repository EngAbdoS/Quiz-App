import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answertext;
  final Function x;

  Answer(this.x, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
     //width: double.infinity,
      child: RaisedButton(
        color: Colors.purpleAccent,
        child: Text(
          answertext,
          style: TextStyle(fontSize: 20),
        ),
        onPressed: x,
      ),
    );
  }
}
