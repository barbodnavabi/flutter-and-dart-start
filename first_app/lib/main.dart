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
        body: questionIndex<questions.length ? Column(
          children: [
            Question(
              questions[questionIndex]['questionText'],
            ),
            ...(questions[questionIndex]['awnsers'] as List<String>).map((awnser) {
              return Awnser(anwserQustion,awnser);
            }).toList()
          ],
        ) : Center(child: Text('this is barbod first app you did it!!!!'),),
      ),
    );
  }
}
