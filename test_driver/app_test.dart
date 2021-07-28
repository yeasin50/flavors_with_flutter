import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_driver/flutter_driver.dart';

import 'package:test/test.dart';

void main() {
  group("testing App", () {
    final button = find.byType("FloatingActionButton");

    FlutterDriver? driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver!.close();
      }
    });

    test("testing widgets on age24", () async {
      await driver!.tap(button);

      final text = find.text("age: 25");

      expect(await driver!.getText(text), "age: 25");
    });
  });
}
