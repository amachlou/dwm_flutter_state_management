import 'package:dwm_flutter_state_management/provider/counter.withprovider.state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPageWithProvider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter with provider'),),
      body: Center(
        child: Consumer<CounterWithProviderState>(
          builder: (context, counterWithProviderState, child) {
            return Text('Counter page with provider: ${counterWithProviderState.counter}', style: TextStyle(fontSize: 30),);
          },
        )
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            Provider.of<CounterWithProviderState>(context, listen: false).decrement();
          }, child: Icon(Icons.remove),),
          SizedBox(width: 12,),
          FloatingActionButton(onPressed: (){
            Provider.of<CounterWithProviderState>(context, listen: false).increment();
          }, child: Icon(Icons.add),)
        ],
      ),

    );
  }
}
