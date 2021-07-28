import 'package:flavor_with_flutter/configs/flavor_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/main.screens.dart';

late final flavorConfigProvider;

void mainCommon(FlavorConfig config) {
  flavorConfigProvider = StateProvider((ref) => config);
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

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
