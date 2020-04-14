import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:simple_app/models/app_state.dart';
import 'package:simple_app/screens/auth.dart';
import 'package:simple_app/screens/home.dart';
import 'package:simple_app/screens/login.dart';
import 'package:simple_app/screens/register.dart';
import 'package:simple_app/service_locator.dart';

void main() {
  setupLocator();
  runApp(SimpleApp());
}

class SimpleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<AppState>(
      model: locator<AppState>(),
      child: MaterialApp(
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
      ),
    );
  }
}
