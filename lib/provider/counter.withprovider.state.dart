import 'package:flutter/cupertino.dart';

class CounterWithProviderState extends ChangeNotifier{

  int _counter = 0;

  void increment(){
    ++_counter;
    notifyListeners();
  }

  void decrement(){
    --_counter;
    notifyListeners();
  }

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
  }

}