import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quistions.dart';
import 'answers.dart';
import 'quiz.dart';
import 'result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _totalscore = 0;
  int _quistionIndex = 0;
  int n0, n1, n2;

  void q() {
    setState(() {
      _totalscore = 0;

      _quistionIndex = 0;
    });
  }

  void answerquistion(score) {
    _totalscore += score;
    if (_quistionIndex == 0)
      n0 = score;
    else if (_quistionIndex == 1)
      n1 = score;
    else if (_quistionIndex == 2) n2 = score;

    setState(() {
      _quistionIndex += 1;
    });
    print("$_quistionIndex");
    print("$_totalscore");

    print(" answer choisen .");
  }

  final List _quistion = [
    {
      "quistiontext": "What is your favorite color?",
      "answer": [
        {"text": "Black", "score": 10},
        {"text": "White", "score": 20},
        {"text": "Green", "score": 30},
        {"text": "red", "score": 40},
      ]
    },
    {
      "quistiontext": "What is your favorite sport?",
      "answer": [
        {"text": "Running", "score": 10},
        {"text": "Football", "score": 20},
        {"text": "yoga", "score": 30},
        {"text": "eating", "score": 40},
      ]
    },
    {
      "quistiontext": "What is your favorite jop?",
      "answer": [
        {"text": "Engineer", "score": 10},
        {"text": "Doctor", "score": 20},
        {"text": "Carpenter", "score": 30},
        {"text": "Driver", "score": 40},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
            style: TextStyle(fontSize: 20),
          ),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: _quistionIndex < _quistion.length
              ? Quiz(_quistion, _quistionIndex, answerquistion)
              : Result(q, _totalscore),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back_rounded),
          backgroundColor: Colors.purpleAccent,
          onPressed: () {
            setState(() {
              if (_quistionIndex > 0 && _quistionIndex < _quistion.length) {
                _quistionIndex--;
                if (_quistionIndex == 0)
                  _totalscore -= n0;
                else if (_quistionIndex == 1)
                  _totalscore -= n1;
                else if (_quistionIndex == 2) _totalscore -= n2;
              }
            });
          },
        ),
      ),
    );
  }
}
