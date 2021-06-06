import 'package:dwm_flutter_state_management/bloc/counter.withCubit.dart';
import 'package:dwm_flutter_state_management/pages/counter.page.withCubit.dart';
import 'package:dwm_flutter_state_management/pages/counter.page.withprovider.dart';
import 'package:dwm_flutter_state_management/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/counter.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterWithCubit(),)
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.cyan
        ),
        routes: {
          "/home": (context) => HomePage(),
          "/counter": (context) => CounterPage(),
          "/counterWithProvider": (context) => CounterPageWithProvider(),
          "/counterWithBloc": (context) => CounterPageWithCubit(),
        },
          initialRoute: "/counterWithBloc",
        home: CounterPage()
      ),
    );
  }
}



