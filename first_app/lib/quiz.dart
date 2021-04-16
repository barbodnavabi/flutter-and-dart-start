import 'package:flutter/material.dart';
import 'question.dart';
import 'awnser.dart';

class Quiz extends StatelessWidget {
  final Function anwserQustion;
  final List<Map<String, Object>> questions;
  final int questionIndex;
  Quiz(@required this.questions, @required this.anwserQustion,
      @required this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['awnsers'] as List<String>).map((awnser) {
          return Awnser(anwserQustion, awnser);
        }).toList()
      ],
    );
  }
}
