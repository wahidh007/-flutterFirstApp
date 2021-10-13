import 'package:flutter/cupertino.dart';
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
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        actions: [
          IconButton(
            onPressed: () {
              print("action button pressed!");
            },
            icon: Icon(Icons.navigate_next),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text(
                "Question ?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("answer 1 pressed");
                  },
                  child: Text("Answer 1"),
                ),
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Floating button pressed!");
        },
        child: Icon(Icons.favorite),
      ),
      drawer: Drawer(),
    );
  }
}
