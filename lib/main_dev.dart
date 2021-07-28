import 'package:flavor_with_flutter/configs/flavor_config.dart';
import 'package:flavor_with_flutter/main_common.dart';
import 'package:flutter/material.dart';

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
