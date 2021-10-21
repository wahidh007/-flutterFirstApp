import 'package:flutter/material.dart';
import 'package:test1/login.dart';
import 'package:test1/main3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      // home: HomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First App'),
        actions: [
          IconButton(
            onPressed: () {
              print('action button pressed !');
              Navigator.pop(context);
            },
            icon: Icon(Icons.navigate_before_rounded),
          ),
        ],
      ),
      body: Text('Hello Wahid !!!'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating button pressed!');
        },
        child: Icon(Icons.favorite),
      ),
      drawer: Drawer(
        child: Text('Drawer !'),
      ),
    );
  }
}
