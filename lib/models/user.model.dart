import 'package:flutter/cupertino.dart';

class User extends ChangeNotifier {
  int _age;
  String _name;
  User(
    this._age,
    this._name,
  );

  int get age => _age;
  String get name => _name;
  bool get isOld => _age > 24;

  void birthday() {
    _age++;
    notifyListeners();
  }

  void changeName(String newname) {
    _name = newname;
    notifyListeners();
  }
}
