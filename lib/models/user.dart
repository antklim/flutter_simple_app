import 'package:flutter/material.dart';

class User {
  User({
    @required this.username,
    @required this.password,
  });

  final String username;
  final String password;

  @override
  int get hashCode => username.length;

  @override
  bool operator ==(Object other) =>
      other is User && other.username == username && other.password == password;
}
