import 'package:flavor_with_flutter/configs/flavor_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'body.dart';
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

