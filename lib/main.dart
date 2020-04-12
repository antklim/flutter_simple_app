import 'package:flutter/material.dart';
import 'package:simple_app/screens/auth.dart';
import 'package:simple_app/screens/home.dart';
import 'package:simple_app/screens/login.dart';
import 'package:simple_app/screens/register.dart';

void main() => runApp(SimpleApp());

class SimpleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Home(title: 'Simple App', message: 'Welcome to Simple App'),
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => Auth(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/home': (context) =>
            Home(title: 'Simple App', message: 'Welcome to Simple App'),
      },
    );
  }
}
