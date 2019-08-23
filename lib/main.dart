import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  List<String> questions = [
    "What is your favorit color?",
    "What is your favorite language?",
    "What is your favorite food?"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions.elementAt(_questionIndex),
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   child: Text(
        //     "+",
        //     style: TextStyle(fontSize: 30),
        //   ),
        //   onPressed: () {
        //     print("FAB Clicked");
        //   },
        // )
      ),
    );
  }

  // Methods
  void _answerQuestion(int option) {
    print('Answer $option chosen');
    setState(() {
      if (_questionIndex == 2) {
        _questionIndex = 0;
      } else {
        _questionIndex = _questionIndex + 1;
      }
    });
  }
}

// Video Time 3:41:35
