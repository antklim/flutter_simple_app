import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;
  final String message;

  Home({Key key, @required this.title, @required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
