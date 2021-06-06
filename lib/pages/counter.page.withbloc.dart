import 'package:dwm_flutter_state_management/bloc/counter.withBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPageWithBloc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter page with BLoC'),),
      body: Center(
        child: BlocBuilder<CounterWithBloc, CounterBlockState>(
            builder: (context, state) => Text("Counter with BLoC: ${state.counter}", style: TextStyle(fontSize: 30),)
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {
            context.read<CounterWithBloc>().add(new DecrementEvent());
          }, child: Icon(Icons.remove),),
          SizedBox(width: 10,),
          FloatingActionButton(onPressed: () {
            context.read<CounterWithBloc>().add(new IncrementEvent());
          }, child: Icon(Icons.add),),
        ],
      ),
    );
  }
}
