import 'package:flavor_with_flutter/models/user.model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider =
    ChangeNotifierProvider<User>((ref) => User(24, "ONProvider"));
