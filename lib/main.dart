import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
  {'questionText': 'What\'s your favorite color?',
   'answers': ['Black', 'Red', 'White', 'Green'],
  },
  {'questionText': 'What\'s your favorite animal?',
   'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
  },
  {'questionText': 'Who\'s your favorite instructor?',
   'answers': ['A', 'B', 'C', 'D'],
  }
];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QUIZ'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
            
          ],
        ),
      ),
    );
  }
}
