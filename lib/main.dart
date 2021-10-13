import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "My First App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text("Question ?"),
            ElevatedButton(
              onPressed: () {
                print("answer 1 pressed");
              },
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: () {
                print("answer 2 pressed");
              },
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () {
                print("answer 3 pressed");
              },
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
