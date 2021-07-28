import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'body.dart';

void main() {
  runApp(
    ProviderScope(
      child: OnUserTestScreen(),
    ),
  );
}
