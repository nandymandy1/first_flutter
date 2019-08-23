import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Answer 1'),
      onPressed: selectHandler,
    );
  }
}
