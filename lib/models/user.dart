import 'package:flutter/material.dart';

@immutable
class User {
  User({
    @required this.username,
    @required this.password,
  });

  final String username;
  final String password;
}
