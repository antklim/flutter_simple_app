import 'package:flutter/material.dart';
import 'package:simple_app/screens/home.dart';
import 'package:simple_app/screens/pre-login.dart';

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
      initialRoute: '/pre-login',
      routes: {
        // '/': (context) => Splash(),
        '/pre-login': (context) => PreLogin(),
        '/home': (context) =>
            Home(title: 'Simple App', message: 'Welcome to Simple App'),
      },
    );
  }
}
