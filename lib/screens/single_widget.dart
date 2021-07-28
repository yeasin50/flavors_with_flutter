import 'package:flavor_with_flutter/providers/user.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnUserTestScreen extends StatelessWidget {
  const OnUserTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, watch, child) {
        final valueNotifier = watch(userProvider);
        return Text("age: ${valueNotifier.age}");
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read(userProvider).birthday();
        },
      ),
    );
  }
}
