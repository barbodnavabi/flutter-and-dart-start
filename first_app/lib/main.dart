import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
              onPressed: null,
              child: Text('its a button'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('its a  deprecated button'),
            ),
          ],
        ),
      ),
    );
  }
}
