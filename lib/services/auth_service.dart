import 'package:flutter/foundation.dart';

final _registeredUsers = const {
  'u1': 'p1',
  'u2': 'p2',
  'u3': 'p3',
};

class AuthService {
  Future<bool> login({@required String username, @required String password}) async {
    final _userPassword = _registeredUsers[username];
    await Future.delayed(Duration(seconds: 1));
    return _userPassword != null && _userPassword == password;
  }
}
