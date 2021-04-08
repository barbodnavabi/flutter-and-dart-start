import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void Hello() {
    print('hello my friend');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('this is my app'),
        ),
        body: Column(
          children: [
            Text(' text children of column '),
            ElevatedButton(
              onPressed: Hello,
              child: Text('its a button'),
            ),
            RaisedButton(
              onPressed: Hello,
              child: Text('its a  deprecated button'),
            ),
          ],
        ),
      ),
    );
  }
}
