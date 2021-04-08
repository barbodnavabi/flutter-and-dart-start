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
