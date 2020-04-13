import 'package:flutter/foundation.dart';

final _registeredUsers = const {
  'u1': 'p1',
  'u2': 'p2',
  'u3': 'p3',
};

class AuthService {
  static bool login({@required String username, @required String password}) {
    final _userPassword = _registeredUsers[username];
    return _userPassword != null && _userPassword == password;
  }
}
