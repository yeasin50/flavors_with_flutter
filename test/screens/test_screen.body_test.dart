import 'package:flavor_with_flutter/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('GIver user with age of 24 when birthday is called user is old',
      (WidgetTester tester) async {
    ///* assemble

    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: MyApp(),
        ),
      ),
    );

    //* we have one, that's why we will get one
    final button = find.byType(FloatingActionButton);

    ///* Act
    await tester.tap(button);

    await tester.pump(); // it;s like setstate

    ///Assert

    final text = find.text("age: 25");
    expect(text, findsOneWidget);
  });
}
