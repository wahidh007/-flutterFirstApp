import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({Key? key}) : super(key: key);

  final String answer;
  final VoidCallback appelToAnswerMethod;

  Answer(this.answer, this.appelToAnswerMethod);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: appelToAnswerMethod,
        child: Text(answer),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
      ),
    );
  }
}
