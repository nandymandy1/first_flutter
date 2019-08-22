import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  var questionIndex = 0;
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
        body: Column(children: <Widget>[
          Text(questions.elementAt(questionIndex)),
          RaisedButton(child: Text("Answer 1"), onPressed: () => answerQuestion(1),),
          RaisedButton(child: Text("Answer 2"), onPressed: () => answerQuestion(2),),
          RaisedButton(child: Text("Answer 3"), onPressed: () => answerQuestion(3),),
        ],),
      ),
    );
  }

  // Methods
  void answerQuestion(int option){
    print('Answer $option chosen');
    setState(() {
      if(questionIndex == 2){
        questionIndex = 0;
      } else {
        questionIndex = questionIndex + 1;
      }
    });
  }

}

// Video Time 3:41:35
