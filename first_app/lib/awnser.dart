import 'package:flutter/material.dart';

class Awnser extends StatelessWidget {
  final Function selectHandler;
  final String awnserText;
  Awnser(this.selectHandler,this.awnserText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(awnserText),
      ),
    );
  }
}
