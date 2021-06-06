import 'package:dwm_flutter_state_management/bloc/counter.withCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPageWithCubit extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter page with BLoC'),),
      body: Center(
        child: BlocBuilder<CounterWithCubit, int>(
            builder: (context, state) => Text("Counter with BLoC: ${state}", style: TextStyle(fontSize: 30),)
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {
            context.read<CounterWithCubit>().decrement();
          }, child: Icon(Icons.remove),),
          SizedBox(width: 10,),
          FloatingActionButton(onPressed: () {
            context.read<CounterWithCubit>().increment();
          }, child: Icon(Icons.add),),
        ],
      ),
    );
  }
}
