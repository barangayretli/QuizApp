import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var questions = [
  'What\'s your favorite color?',
  'What\'s your favorite animal?'
];

class MyApp extends StatelessWidget {

  void answerQuestion() {
    print('Answer Chosen');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QUIZ'),
        ),
        body: Column(
          children: [
            Text('The Question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
