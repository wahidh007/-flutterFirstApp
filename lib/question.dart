import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //Question({Key? key}) : super(key: key);

  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 28,
            color: Colors.blue[700],
          ),
          textAlign: TextAlign.center,
        ));
  }
}
