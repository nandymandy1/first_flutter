import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  List<String> animals = [
    "lion",
    "cat",
    "dogs"
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
          Text("The Question"),
          RaisedButton(child: Text("Answer 1"), onPressed: () => answerQuestion(1),),
          RaisedButton(child: Text("Answer 2"), onPressed: () => answerQuestion(2),),
          RaisedButton(child: Text("Answer 3"), onPressed: (){ print('Answer 3 chosen'); },),
        ],),
      ),
    );
  }

  // Methods
  void answerQuestion(int option){
    print('Answer $option chosen');
  }

}
