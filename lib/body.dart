import 'package:flutter/material.dart';

import 'screens/main.screens.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final config = context.read(flavorConfigProvider);

    return MaterialApp(
      // title: config.state.appTitle,
      // theme: config.state.theme,
      home: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: OnUserTestScreen(),
      ),
    );
  }
}
