import 'package:flutter/material.dart';
import './question.dart';
import './awnser.dart';

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
  var questionIndex = 0;
  void anwserQustion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what is your name?',
        'awnsers': ['barbod', 'reza', 'babak', 'hamid']
      },
      {
        'questionText': 'what is your family',
        'awnsers': ['navabi', 'soltani', 'hamidi', 'rezayi'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is my app'),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex]['questionText'],
            ),
            ...(questions[questionIndex]['awnsers'] as List<String>).map((awnser) {
              return Awnser(anwserQustion,awnser);
            }).toList()
          ],
        ),
      ),
    );
  }
}
