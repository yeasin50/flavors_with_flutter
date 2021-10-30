import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/provider.dart';

import 'main_common.dart';
import 'screens/screens.dart';
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final config = context.read(flavorConfigProvider);

    return MaterialApp(
      title: config.state.appTitle,
      theme: config.state.theme,
      home: Scaffold(
        appBar: AppBar(
          title: Text(config.state.appTitle),
        ),
        body: MainScreen(),
      ),
    );
  }
}
