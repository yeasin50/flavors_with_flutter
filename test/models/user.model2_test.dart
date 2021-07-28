import 'package:flavor_with_flutter/models/user.model2.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:http/http.dart' as http;

///FIXME:: 
class MockClicnt extends Mock implements http.BaseClient {}

void main() {
  test("GIver user with age of 24 when birthday is called user is old",
      () async {

    ///* Arrange
    final mockClient = MockClicnt();
    when(
      mockClient.get(uri),
    ).thenAnswer((realInvocation) async {
      return http.Response('{"title": "Test"}', 200);
    });

    final user = User2(24, "SheikhShab", mockClient);

    ///* Act
    user.birthday();

    ///* Assert - judge
    expect(user.age, 25);
  });
}
