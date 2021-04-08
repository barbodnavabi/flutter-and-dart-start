import 'package:flutter/material.dart';
import './question.dart';
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
    var questions = ['what is your name?', 'what is your family'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is my app'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            ElevatedButton(
              onPressed: anwserQustion,
              child: Text('its a button'),
            ),
            ElevatedButton(
              onPressed: () => print('its a arrow function'),
              child: Text('its a  deprecated button'),
            ),
            ElevatedButton(
              onPressed: () {
                print('ananymos function');
              },
              child: Text('its a button'),
            ),
          ],
        ),
      ),
    );
  }
}
