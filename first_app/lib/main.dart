import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './awnser.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _anwserQustion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'what is your name?',
        'awnsers': ['barbod', 'reza', 'babak', 'hamid']
      },
      {
        'questionText': 'what is your family',
        'awnsers': ['navabi', 'soltani', 'hamidi', 'rezayi'],
      },
      {
        'questionText': 'what is your  favorite calor',
        'awnsers': ['blue', 'orange', 'black', 'red'],
      },
      {
        'questionText': 'are you a django developer?',
        'awnsers': ['yes', 'no'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is my app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _anwserQustion, _questionIndex)
            : Result()
      ),
    );
  }
}
