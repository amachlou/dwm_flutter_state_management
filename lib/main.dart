import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      routes: {
        "/home": (context) => HomePage(),
        "/counter": (context) => CounterPage(),
      },
        initialRoute: "/home",
      home: CounterPage()
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(
        child: Text('Home value: ', style: TextStyle(fontSize: 30),),
      ),
    );
  }
}


class CounterPage extends StatefulWidget {

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("==> Counter page build");
    return Scaffold(
      appBar: AppBar(title: Text('Counter'),),
      body: Center(
        child: Text('Counter page : ${counter}', style: TextStyle(fontSize: 30),),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            setState(() {
              --counter;
            });
            print("==> ${counter}");
          }, child: Icon(Icons.remove),),
          SizedBox(width: 12,),
          FloatingActionButton(onPressed: (){
            setState(() {
              ++counter;
            });
            print("==> ${counter}");
          }, child: Icon(Icons.add),)
        ],
      ),
    );
  }
}

