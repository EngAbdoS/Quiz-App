import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function q;
  final resultscore;

  Result(this.q, this.resultscore);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        child: Column(
      children: [
        Text(
          "كفاايه كدا بق ياااض",
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Colors.purple,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "درجة سلكانك :- $resultscore",
          textDirection: TextDirection.rtl,
          style: TextStyle(
              color: Colors.purple, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        FlatButton(

          color: Colors.grey,
          onPressed: q,
          child: Text(
            "عايز تاني؟",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Colors.purple,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ));
  }
}
