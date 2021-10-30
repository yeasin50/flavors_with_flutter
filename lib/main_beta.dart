import 'package:flutter/material.dart';

import 'configs/flavor_config.dart';
import 'main_common.dart';

void main() {
  final betaConfig = FlavorConfig()
    ..appTitle = "deV"
    ..imagePath = 'assets/icons/beta.png'
    ..theme = ThemeData.dark().copyWith(
      primaryColor: Colors.deepPurple,
      appBarTheme: ThemeData.dark().appBarTheme.copyWith(
            backgroundColor: Colors.amberAccent,
          ),
    );

  mainCommon(betaConfig);
}
