import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

final uri = Uri.parse('https://google.com/');

///* while usig any net activity use mockito
class User2 extends ChangeNotifier {
  int _age;
  String _name;
  http.BaseClient _http;

  User2(
    this._age,
    this._name,
    // this._dio,
    this._http,
  );

  int get age => _age;
  String get name => _name;
  bool get isOld => _age > 24;

  void birthday() {
    _http.get(uri);
    _age++;
    notifyListeners();
  }

  void changeName(String newname) {
    _name = newname;
    notifyListeners();
  }
}
