import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage()
    );
  }
}

class CounterPage extends StatelessWidget {

  int counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter page'),),
      body: Center(
        child: Text('Current value: ${counter}'),
      ),
    );
  }
}

