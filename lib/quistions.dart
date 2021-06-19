import 'package:flutter/material.dart';

class Quistions extends StatelessWidget {
  final String quistiontext;

  Quistions(this.quistiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        quistiontext,
        style: TextStyle(
          fontSize: 24,
        ),
      textAlign: TextAlign.center,
      ),
    );
  }
}
