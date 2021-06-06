import 'package:dwm_flutter_state_management/pages/counter.page.withprovider.dart';
import 'package:dwm_flutter_state_management/pages/home.page.dart';
import 'package:dwm_flutter_state_management/provider/counter.withprovider.state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/counter.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterWithProviderState())
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.cyan
        ),
        routes: {
          "/home": (context) => HomePage(),
          "/counter": (context) => CounterPage(),
          "/counterWithProvider": (context) => CounterPageWithProvider(),
        },
          initialRoute: "/counterWithProvider",
        home: CounterPage()
      ),
    );
  }
}



