import 'package:flutter/material.dart';

class FlavorConfig {
  String appTitle;

  String imagePath;
  late ThemeData theme;

  FlavorConfig({
    this.appTitle = "Flavor test",
    this.imagePath = "assets/icons/common.png",
  }) {
    this.theme = ThemeData.light();
  }
}
