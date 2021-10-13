import 'package:flutter/material.dart';
import 'package:test1/question.dart';

import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _questionAnswer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('answer pressed' + _questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorte color ?',
      'What\'s your favorte pet ?',
      'What\'s your favorte car ?'
    ];

    return MaterialApp(
        title: 'My First App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: Center(
            child: Column(
              children: [
                Question(questions[_questionIndex]),
                Answer('Test', _questionAnswer),
                Answer('Test', _questionAnswer),
                Answer('Test', _questionAnswer),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('Floating button pressed');
            },
            child: const Icon(Icons.navigation),
            backgroundColor: Colors.green,
          ),
        ));
  }
}

/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void questionAnswer() {
    print('Answer chosen !');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('The Questions: '),
              ElevatedButton(
                onPressed: () {
                  print('Answer 1 Chosen');
                },
                child: Text('Answer 1'),
              ),
              ElevatedButton(
                onPressed: () => print('Answer 2 Chosen'),
                child: Text('Answer 2'),
              ),
              ElevatedButton(
                onPressed: questionAnswer,
                child: Text('Answer 3'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Floating button pressed !');
          },
          child: const Icon(Icons.navigation),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
*/
/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Appli',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
        ),
        body: Column(
          children: const [
            Text('The questions  :'),
            ElevatedButton(
              child: Text('Answers 1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answers 2'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answers 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
*/

/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hi Wahid !'),
    );
  }
}
*/