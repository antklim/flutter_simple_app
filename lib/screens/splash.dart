import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  final String _splashText = 'Simple App';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(_splashText)
    );
  }
}