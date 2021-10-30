import 'package:flavor_with_flutter/configs/flavor_config.dart';
import 'package:flavor_with_flutter/main_common.dart';
import 'package:flutter/material.dart';

void main() {
  final alphaConfig = FlavorConfig()
    ..appTitle = "Production"
    ..imagePath = 'assets/icons/alpha.png'
    ..theme = ThemeData.light().copyWith(
      primaryColor: Colors.cyanAccent,
      appBarTheme: ThemeData.light().appBarTheme.copyWith(
            backgroundColor: Colors.purpleAccent,
          ),
    );
  mainCommon(alphaConfig);
}
