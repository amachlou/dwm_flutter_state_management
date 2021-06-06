import 'package:bloc/bloc.dart';

class CounterWithCubit extends Cubit<int>{

  CounterWithCubit() : super(0);

  void increment(){
    emit(state+1);
  }
  void decrement(){
    emit(state-1);
  }

}