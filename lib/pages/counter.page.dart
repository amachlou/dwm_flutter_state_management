import 'package:flutter/material.dart';

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