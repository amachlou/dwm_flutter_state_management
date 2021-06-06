import 'package:bloc/bloc.dart';

abstract class CounterBlocEvent{}

class IncrementEvent extends CounterBlocEvent{}
class DecrementEvent extends CounterBlocEvent{}

class CounterBlockState{
  int counter = 0;

  CounterBlockState(this.counter);
}

// enum CounterEvent{
//   INCREMENT, DECREMENT
// }

class CounterWithBloc extends Bloc<CounterBlocEvent ,CounterBlockState>{

  CounterWithBloc() : super(CounterBlockState(0));

  @override
  Stream<CounterBlockState> mapEventToState(CounterBlocEvent event) async* {

    if(event is IncrementEvent){
      yield CounterBlockState(state.counter+1);
    }else if(event is DecrementEvent){
      yield CounterBlockState(state.counter-1);
    }
  }

}