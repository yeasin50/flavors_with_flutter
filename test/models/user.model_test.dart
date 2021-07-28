import 'package:flavor_with_flutter/models/user.model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("GIver user with age of 24 when birthday is called user is old",
      () async {
    ///* Arrange
    final User user = User(24, "SheikhShab");

    ///* Act
    user.birthday();

    ///* Assert - judge
    expect(user.age, 25);
  });
}
