import 'package:flutter/material.dart';
import './main.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText) {}
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 29),
        textAlign: TextAlign.center,
      ),
    );
  }
}
